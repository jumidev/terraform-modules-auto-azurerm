

resource "azurerm_storage_container" "this" {

  ########################################
  # required vars
  ########################################
  name                 = var.name
  storage_account_name = var.storage_account_name

  ########################################
  # optional vars
  ########################################
  container_access_type = var.container_access_type # Default: private
  metadata              = var.metadata
}
