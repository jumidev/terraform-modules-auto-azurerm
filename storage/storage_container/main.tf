data "azurerm_storage_account" "this" {
  name                = var.storage_account_name
  resource_group_name = var.storage_account_resource_group_name == null ? null : var.storage_account_resource_group_name
}


resource "azurerm_storage_container" "this" {

  ########################################
  # required vars
  ########################################
  name                 = var.name
  storage_account_name = data.azurerm_storage_account.this.name

  ########################################
  # optional vars
  ########################################
  container_access_type = var.container_access_type # Default: private
  metadata              = var.metadata
}
