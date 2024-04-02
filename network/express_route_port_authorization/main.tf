

resource "azurerm_express_route_port_authorization" "this" {

  ########################################
  # required vars
  ########################################
  name                    = var.name
  resource_group_name     = var.resource_group_name
  express_route_port_name = var.express_route_port_name
}
