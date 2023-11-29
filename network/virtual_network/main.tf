data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_virtual_network" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
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
