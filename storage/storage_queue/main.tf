

resource "azurerm_storage_queue" "this" {

  ########################################
  # required vars
  ########################################
  name                 = var.name
  storage_account_name = var.storage_account_name

  ########################################
  # optional vars
  ########################################
  metadata = var.metadata
}
