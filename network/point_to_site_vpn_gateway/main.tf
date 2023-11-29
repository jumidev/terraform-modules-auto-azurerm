data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_point_to_site_vpn_gateway" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  connection_configuration {
    name                      = lookup(connection_configuration.value, "name")                    # (Required) 
    vpn_client_address_pool   = lookup(connection_configuration.value, "vpn_client_address_pool") # (Required) 
    route                     = lookup(connection_configuration.value, "route", null)
    internet_security_enabled = lookup(connection_configuration.value, "internet_security_enabled", false)
  }

  scale_unit                  = var.scale_unit
  virtual_hub_id              = var.virtual_hub_id
  vpn_server_configuration_id = var.vpn_server_configuration_id

  ########################################
  # optional vars
  ########################################
  dns_servers                         = var.dns_servers
  routing_preference_internet_enabled = var.routing_preference_internet_enabled # Default: False
  tags                                = var.tags
}
