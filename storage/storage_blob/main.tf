

resource "azurerm_storage_blob" "this" {

  ########################################
  # required vars
  ########################################
  name                   = var.name
  storage_account_name   = var.storage_account_name
  storage_container_name = var.storage_container_name
  type                   = var.type

  ########################################
  # optional vars
  ########################################
  size             = var.size # Default: 0
  access_tier      = var.access_tier
  cache_control    = var.cache_control
  content_type     = var.content_type # Default: application/octet-stream
  content_md5      = var.content_md5
  encryption_scope = var.encryption_scope
  source           = var.source
  source_content   = var.source_content
  source_uri       = var.source_uri
  parallelism      = var.parallelism # Default: 8
  metadata         = var.metadata
}
