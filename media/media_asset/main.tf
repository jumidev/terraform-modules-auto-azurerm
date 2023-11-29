data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_storage_account" "this" {
  name                = var.storage_account_name
  resource_group_name = var.storage_account_resource_group_name == null ? null : var.storage_account_resource_group_name
}


resource "azurerm_media_asset" "this" {

  ########################################
  # required vars
  ########################################
  media_services_account_name = var.media_services_account_name
  name                        = var.name
  resource_group_name         = data.azurerm_resource_group.this.name

  ########################################
  # optional vars
  ########################################
  alternate_id         = var.alternate_id
  container            = var.container
  description          = var.description
  storage_account_name = data.azurerm_storage_account.this.name
}
