

resource "azurerm_api_management_gateway_api" "this" {

  ########################################
  # required vars
  ########################################
  gateway_id = var.gateway_id
  api_id     = var.api_id
}
