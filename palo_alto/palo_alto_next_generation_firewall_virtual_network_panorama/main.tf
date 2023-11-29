data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_palo_alto_next_generation_firewall_virtual_network_panorama" "this" {

  ########################################
  # required vars
  ########################################
  location = var.location
  name     = var.name

  network_profile {
    public_ip_address_ids     = lookup(network_profile.value, "public_ip_address_ids") # (Required) 
    vnet_configuration        = lookup(network_profile.value, "vnet_configuration")    # (Required) 
    egress_nat_ip_address_ids = lookup(network_profile.value, "egress_nat_ip_address_ids", null)
  }

  panorama_base64_config = var.panorama_base64_config
  resource_group_name    = data.azurerm_resource_group.this.name

  ########################################
  # optional vars
  ########################################

  dynamic "destination_nat" { # var.destination_nat
    for_each = var.destination_nat != null ? var.destination_nat : []
    content {
      name     = destination_nat.key
      protocol = lookup(destination_nat.value, "protocol") # (Required) possible values: TCP | UDP

      dynamic "backend_config" { # destination_nat.value.backend_config
        for_each = destination_nat.value.backend_config != null ? destination_nat.value.backend_config : []
        content {
          port              = lookup(backend_config.value, "port")              # (Required) 
          public_ip_address = lookup(backend_config.value, "public_ip_address") # (Required) 
        }
      }


      dynamic "frontend_config" { # destination_nat.value.frontend_config
        for_each = destination_nat.value.frontend_config != null ? destination_nat.value.frontend_config : []
        content {
          port                 = lookup(frontend_config.value, "port")                 # (Required) 
          public_ip_address_id = lookup(frontend_config.value, "public_ip_address_id") # (Required) 
        }
      }

    }
  }


  dynamic "dns_settings" { # var.dns_settings
    for_each = var.dns_settings != null ? var.dns_settings : []
    content {
      dns_servers   = lookup(dns_settings.value, "dns_servers", null)
      use_azure_dns = lookup(dns_settings.value, "use_azure_dns", false)
    }
  }

  tags = var.tags
}
