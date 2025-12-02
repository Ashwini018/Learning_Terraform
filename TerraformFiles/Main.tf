terraform{
    required_providers {
        azurerm = {
            source = "hasicorp/azurerm"
            version = "~> 4.0"
        }
    }
}
provider "azurerm" {
    features{}
}

resource "azurerm_resource_group" "rg"{
    name = var.resource_group_name
    location = var.location
}

resource "azurerm_virtual_network" "vnet" {
    name = "${var.vm_name}-vnet"
    resource_group_name = azurerm_resource_group.rg.name
    location = azurerm_resource_group.rg.location
    address_space = ["10.0.0.0/16"]
}
resource "azurerm_subnet" "subnet" {
    name = "${var.vm_name}-subnet"
    resource_group_name = azurerm_resource_group.rg.name
    virtual_network_name = azurerm_virtual_network.vnet.name
    address_prefixes = ["10.0.1.0/24]
}
resource azurerm_network_interface" "nic" {
    name = "${var.vm_name}-nic"
    resource_group_name = azurerm_resource_group.rg.name
    location = azurerm_resource_group.rg.location
    ip_configuration {
        name = "internal"
        subnet_id = azurerm_subnet.subnet.subnet_id
        private_ip_address_allocation = "Dynamic"
    }
}
resource "azurerm_linux_virtual_machine" "vm" {
    name = var.vm_name
    resource_group_name = azurerm_resource_group.rg.name
    location = azurerm_resource_group.rg.location
    size = var.vm_size
    admin_username = var.admin_username
    network_interface_ids = [azurerm_network_interface.nic.id]
    admin_ssh_key {
        username = var.admin_username
        public_key = file(var.ssh_public_key)
    }
    os_disk {
        caching = "ReadWrite"
        storage_account_type = "Standard_LRS"
    }
    source_image_reference {
        publisher = "Canonical"
        offer = "0001-com-ubuntu-server-jammy"
        sku = "22_04-lts-gen2"
        version = "latest"
    }
}