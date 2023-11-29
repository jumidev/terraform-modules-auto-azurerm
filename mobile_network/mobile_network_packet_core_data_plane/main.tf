

resource "azurerm_mobile_network_packet_core_data_plane" "this" {

  ########################################
  # required vars
  ########################################
  name                                        = var.name
  mobile_network_packet_core_control_plane_id = var.mobile_network_packet_core_control_plane_id
  location                                    = var.location

  ########################################
  # optional vars
  ########################################
  user_plane_access_name         = var.user_plane_access_name
  user_plane_access_ipv4_address = var.user_plane_access_ipv4_address
  user_plane_access_ipv4_subnet  = var.user_plane_access_ipv4_subnet
  user_plane_access_ipv4_gateway = var.user_plane_access_ipv4_gateway
  tags                           = var.tags
}
