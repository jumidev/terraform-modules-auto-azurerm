

resource "azurerm_storage_share_file" "this" {

  ########################################
  # required vars
  ########################################
  name             = var.name
  storage_share_id = var.storage_share_id

  ########################################
  # optional vars
  ########################################
  path                = var.path # Default: 
  source              = var.source
  content_type        = var.content_type # Default: application/octet-stream
  content_md5         = var.content_md5
  content_encoding    = var.content_encoding
  content_disposition = var.content_disposition
  metadata            = var.metadata
}
