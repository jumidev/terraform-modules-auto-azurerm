data "azurerm_api_management" "this" {
  name                = var.api_management_name
  resource_group_name = var.api_management_resource_group_name == null ? null : var.api_management_resource_group_name
}
data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_api_management_api_version_set" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  api_management_name = data.azurerm_api_management.this.name
  resource_group_name = data.azurerm_resource_group.this.name
  display_name        = var.display_name
  versioning_scheme   = var.versioning_scheme

  ########################################
  # optional vars
  ########################################
  description         = var.description
  version_header_name = var.version_header_name
  version_query_name  = var.version_query_name
}
