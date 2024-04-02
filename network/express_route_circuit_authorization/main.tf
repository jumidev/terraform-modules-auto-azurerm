

resource "azurerm_express_route_circuit_authorization" "this" {

  ########################################
  # required vars
  ########################################
  name                       = var.name
  resource_group_name        = var.resource_group_name
  express_route_circuit_name = var.express_route_circuit_name
}
