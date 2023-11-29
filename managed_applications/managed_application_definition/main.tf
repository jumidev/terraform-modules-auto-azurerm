data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_managed_application_definition" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  lock_level          = var.lock_level
  display_name        = var.display_name

  ########################################
  # optional vars
  ########################################
  authorization        = var.authorization
  create_ui_definition = var.create_ui_definition
  description          = var.description
  package_enabled      = var.package_enabled # Default: True
  main_template        = var.main_template
  package_file_uri     = var.package_file_uri
  tags                 = var.tags
}
