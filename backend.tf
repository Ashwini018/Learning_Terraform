terraform {
  backend "azurerm" {
    storage_account_name = "terraformaccounts"
    container_name       = "terraformcontainer"
    key                  = "prod.tfstate"
    use_azuread_auth     = true
  }
}
