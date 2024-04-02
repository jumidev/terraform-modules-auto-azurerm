

resource "azurerm_storage_share_directory" "this" {

  ########################################
  # required vars
  ########################################
  name                 = var.name
  share_name           = var.share_name
  storage_account_name = var.storage_account_name

  ########################################
  # optional vars
  ########################################
  metadata = var.metadata
}
