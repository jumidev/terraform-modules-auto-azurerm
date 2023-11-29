data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_logic_app_integration_account_assembly" "this" {

  ########################################
  # required vars
  ########################################
  name                     = var.name
  resource_group_name      = data.azurerm_resource_group.this.name
  integration_account_name = var.integration_account_name
  assembly_name            = var.assembly_name

  ########################################
  # optional vars
  ########################################
  assembly_version = var.assembly_version # Default: 0.0.0.0
  content          = var.content
  content_link_uri = var.content_link_uri
  metadata         = var.metadata
}
