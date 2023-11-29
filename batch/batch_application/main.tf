data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_batch_application" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  account_name        = var.account_name

  ########################################
  # optional vars
  ########################################
  allow_updates   = var.allow_updates # Default: True
  default_version = var.default_version
  display_name    = var.display_name
}
