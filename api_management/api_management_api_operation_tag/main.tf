

resource "azurerm_api_management_api_operation_tag" "this" {

  ########################################
  # required vars
  ########################################
  api_operation_id = var.api_operation_id
  name             = var.name
  display_name     = var.display_name
}
