

resource "azurerm_virtual_network" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = var.resource_group_name
  address_space       = var.address_space
  location            = var.location

  ########################################
  # optional vars
  ########################################
  bgp_community = var.bgp_community

  dynamic "ddos_protection_plan" { # var.ddos_protection_plan
    for_each = var.ddos_protection_plan != null ? var.ddos_protection_plan : []
    content {
      enable = lookup(ddos_protection_plan.value, "enable") # (Required) 
    }
  }


  dynamic "encryption" { # var.encryption
    for_each = var.encryption != null ? var.encryption : []
    content {
      enforcement = lookup(encryption.value, "enforcement") # (Required) possible values: DropUnencrypted | AllowUnencrypted
    }
  }

  dns_servers             = var.dns_servers
  edge_zone               = var.edge_zone
  flow_timeout_in_minutes = var.flow_timeout_in_minutes
}

##############################################################################################
# optional azurerm_private_dns_zone_virtual_network_link 
##############################################################################################
resource "azurerm_private_dns_zone_virtual_network_link" "this" {
  count                 = var.private_dns_zone_virtual_network_link != null ? 1 : 0
  name                  = lookup(var.private_dns_zone_virtual_network_link, "name")
  private_dns_zone_name = lookup(var.private_dns_zone_virtual_network_link, "private_dns_zone_name")
  resource_group_name   = azurerm_resource_group.this.name
  virtual_network_id    = azurerm_virtual_network.this.id
  registration_enabled  = lookup(var.private_dns_zone_virtual_network_link, "registration_enabled", false)
  tags                  = lookup(var.private_dns_zone_virtual_network_link, "tags", null)
}
