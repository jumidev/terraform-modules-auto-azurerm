

resource "azurerm_storage_sync_group" "this" {

  ########################################
  # required vars
  ########################################
  name            = var.name
  storage_sync_id = var.storage_sync_id
}
