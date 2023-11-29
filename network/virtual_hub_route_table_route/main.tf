

resource "azurerm_virtual_hub_route_table_route" "this" {

  ########################################
  # required vars
  ########################################
  route_table_id    = var.route_table_id
  name              = var.name
  destinations      = var.destinations
  destinations_type = var.destinations_type
  next_hop          = var.next_hop

  ########################################
  # optional vars
  ########################################
  next_hop_type = var.next_hop_type # Default: ResourceId
}
