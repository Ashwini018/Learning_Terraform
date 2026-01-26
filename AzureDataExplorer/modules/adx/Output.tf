output "clusterName" {
  description = "cluster name"
  value       = azurerm_kusto_cluster.this.name
}

output "sku" {
  description = "SKU value"
  value       = azurerm_kusto_cluster.this.sku[0].name
}

output "capacity" {
  description = "capacity"
  value       = azurerm_kusto_cluster.this.sku[0].capacity
}

output "database_name" {
  value = keys(azurerm_kusto_database.this)
}