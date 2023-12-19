data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_hpc_cache_blob_nfs_target" "this" {

  ########################################
  # required vars
  ########################################
  cache_name           = var.cache_name
  name                 = var.name
  namespace_path       = var.namespace_path
  resource_group_name  = data.azurerm_resource_group.this.name
  storage_container_id = var.storage_container_id
  usage_model          = var.usage_model

  ########################################
  # optional vars
  ########################################
  verification_timer_in_seconds = var.verification_timer_in_seconds
  write_back_timer_in_seconds   = var.write_back_timer_in_seconds
  access_policy_name            = var.access_policy_name # Default: default
}
