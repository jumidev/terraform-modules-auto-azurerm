

resource "azurerm_vpn_gateway_nat_rule" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = var.resource_group_name
  vpn_gateway_id      = var.vpn_gateway_id

  ########################################
  # optional vars
  ########################################
  external_mapping                = var.external_mapping
  internal_mapping                = var.internal_mapping
  ip_configuration_id             = var.ip_configuration_id
  mode                            = var.mode # Default: EgressSnat
  type                            = var.type # Default: Static
  external_address_space_mappings = var.external_address_space_mappings
  internal_address_space_mappings = var.internal_address_space_mappings
}
