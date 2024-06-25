

resource "azurerm_storage_sync_server_endpoint" "this" {

  ########################################
  # required vars
  ########################################
  name                  = var.name
  storage_sync_group_id = var.storage_sync_group_id
  registered_server_id  = var.registered_server_id
  server_local_path     = var.server_local_path

  ########################################
  # optional vars
  ########################################
  cloud_tiering_enabled      = var.cloud_tiering_enabled     # Default: False
  volume_free_space_percent  = var.volume_free_space_percent # Default: 20
  tier_files_older_than_days = var.tier_files_older_than_days
  initial_download_policy    = var.initial_download_policy # Default: NamespaceThenModifiedFiles
  local_cache_mode           = var.local_cache_mode        # Default: UpdateLocallyCachedFiles
}
