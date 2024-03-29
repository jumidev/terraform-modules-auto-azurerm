data "azurerm_storage_account" "this" {
  name                = var.storage_account_name
  resource_group_name = var.storage_account_resource_group_name
}


resource "azurerm_storage_share_directory" "this" {

  ########################################
  # required vars
  ########################################
  name                 = var.name
  share_name           = var.share_name
  storage_account_name = data.azurerm_storage_account.this.name

  ########################################
  # optional vars
  ########################################
  metadata = var.metadata
}
