data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_route_table" "this" {
  name                = var.route_table_name
  resource_group_name = var.route_table_resource_group_name != null ? var.route_table_resource_group_name : var.resource_group_name

}


resource "azurerm_route" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  route_table_name    = data.azurerm_route_table.this.name
  address_prefix      = var.address_prefix
  next_hop_type       = var.next_hop_type

  ########################################
  # optional vars
  ########################################
  next_hop_in_ip_address = var.next_hop_in_ip_address
}
