data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_hpc_cache_nfs_target" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  cache_name          = var.cache_name
  target_host_name    = var.target_host_name
  usage_model         = var.usage_model
}
