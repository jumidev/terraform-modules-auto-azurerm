data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_express_route_circuit" "this" {
  name                = var.express_route_circuit_name
  resource_group_name = var.express_route_circuit_resource_group_name != null ? var.express_route_circuit_resource_group_name : var.resource_group_name

}


resource "azurerm_express_route_circuit_authorization" "this" {

  ########################################
  # required vars
  ########################################
  name                       = var.name
  resource_group_name        = data.azurerm_resource_group.this.name
  express_route_circuit_name = data.azurerm_express_route_circuit.this.name
}
