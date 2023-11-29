data "azurerm_api_management" "this" {
  name                = var.api_management_name
  resource_group_name = var.api_management_resource_group_name == null ? null : var.api_management_resource_group_name
}
data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_api_management_api_schema" "this" {

  ########################################
  # required vars
  ########################################
  schema_id           = var.schema_id
  api_name            = var.api_name
  api_management_name = data.azurerm_api_management.this.name
  resource_group_name = data.azurerm_resource_group.this.name
  content_type        = var.content_type

  ########################################
  # optional vars
  ########################################
  value       = var.value
  components  = var.components
  definitions = var.definitions
}
