

resource "azurerm_network_security_rule" "this" {

  ########################################
  # required vars
  ########################################
  name                        = var.name
  resource_group_name         = var.resource_group_name
  network_security_group_name = var.network_security_group_name
  protocol                    = var.protocol

  ########################################
  # optional vars
  ########################################
  description                           = var.description
  source_port_range                     = var.source_port_range
  source_port_ranges                    = var.source_port_ranges
  destination_port_range                = var.destination_port_range
  destination_port_ranges               = var.destination_port_ranges
  source_address_prefix                 = var.source_address_prefix
  source_address_prefixes               = var.source_address_prefixes
  source_application_security_group_ids = var.source_application_security_group_ids
}
