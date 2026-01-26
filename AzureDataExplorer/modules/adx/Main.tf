

resource "azurerm_kusto_cluster" "this" {
  name                = var.cluster_name
  location            = var.location
  resource_group_name = var.resource_group_name

  sku {
    name     = var.sku
    capacity = var.capacity
  }

  tags = {
    Environment = var.Environment
  }

lifecycle {
    prevent_destroy = true
  }
}
  resource "azurerm_kusto_database" "this" {
    for_each = toset(var.databases)
  name                = each.value
  resource_group_name = var.resource_group_name
  location            = azurerm_kusto_cluster.this.location
  cluster_name        = azurerm_kusto_cluster.this.name

  lifecycle {
    prevent_destroy = true
  }
}
