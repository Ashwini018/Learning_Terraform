module "adx" {
  for_each = var.clusters
  source   = "./modules/adx"

  cluster_name        = each.key
  databases     = each.value.databases
  sku                 = each.value.sku
  location            = each.value.location
  resource_group_name = var.resource_group_name
  capacity            = each.value.capacity

}