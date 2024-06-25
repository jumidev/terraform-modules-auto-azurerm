

resource "azurerm_storage_share_directory" "this" {

  ########################################
  # required vars
  ########################################
  name             = var.name
  storage_share_id = var.storage_share_id

  ########################################
  # optional vars
  ########################################
  metadata = var.metadata
}
