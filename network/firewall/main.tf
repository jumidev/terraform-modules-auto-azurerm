data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_firewall" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  sku_name            = var.sku_name
  sku_tier            = var.sku_tier

  ########################################
  # optional vars
  ########################################
  firewall_policy_id = var.firewall_policy_id

  dynamic "ip_configuration" { # var.ip_configuration
    for_each = var.ip_configuration != null ? var.ip_configuration : []
    content {
      name                 = ip_configuration.key
      subnet_id            = lookup(ip_configuration.value, "subnet_id", null)
      public_ip_address_id = lookup(ip_configuration.value, "public_ip_address_id", null)
    }
  }

  dns_servers       = var.dns_servers
  private_ip_ranges = var.private_ip_ranges

  dynamic "management_ip_configuration" { # var.management_ip_configuration
    for_each = var.management_ip_configuration != null ? var.management_ip_configuration : []
    content {
      name                 = management_ip_configuration.key
      subnet_id            = lookup(management_ip_configuration.value, "subnet_id")            # (Required) 
      public_ip_address_id = lookup(management_ip_configuration.value, "public_ip_address_id") # (Required) 
    }
  }

  threat_intel_mode = var.threat_intel_mode # Default: Alert

  dynamic "virtual_hub" { # var.virtual_hub
    for_each = var.virtual_hub != null ? var.virtual_hub : []
    content {
      virtual_hub_id  = lookup(virtual_hub.value, "virtual_hub_id") # (Required) 
      public_ip_count = lookup(virtual_hub.value, "public_ip_count", 1)
    }
  }

  zones = var.zones
  tags  = var.tags
}
