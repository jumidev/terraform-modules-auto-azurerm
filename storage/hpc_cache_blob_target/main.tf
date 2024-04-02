

resource "azurerm_hpc_cache_blob_target" "this" {

  ########################################
  # required vars
  ########################################
  cache_name           = var.cache_name
  name                 = var.name
  resource_group_name  = var.resource_group_name
  namespace_path       = var.namespace_path
  storage_container_id = var.storage_container_id

  ########################################
  # optional vars
  ########################################
  access_policy_name = var.access_policy_name # Default: default
}
