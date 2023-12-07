data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_virtual_machine_scale_set" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  dynamic "network_profile" { # var.network_profile
    for_each = var.network_profile != null ? var.network_profile : []
    content {
      name    = network_profile.key
      primary = lookup(network_profile.value, "primary") # (Required) 

      dynamic "ip_configuration" { # network_profile.value.ip_configuration
        for_each = network_profile.value.ip_configuration != null ? network_profile.value.ip_configuration : []
        content {
          name                                         = ip_configuration.key
          subnet_id                                    = lookup(ip_configuration.value, "subnet_id") # (Required) 
          application_gateway_backend_address_pool_ids = lookup(ip_configuration.value, "application_gateway_backend_address_pool_ids", null)
          load_balancer_backend_address_pool_ids       = lookup(ip_configuration.value, "load_balancer_backend_address_pool_ids", null)
          load_balancer_inbound_nat_rules_ids          = lookup(ip_configuration.value, "load_balancer_inbound_nat_rules_ids", null)
          primary                                      = lookup(ip_configuration.value, "primary", "True") # (Required) 
          application_security_group_ids               = lookup(ip_configuration.value, "application_security_group_ids", null)
          public_ip_address_configuration              = lookup(ip_configuration.value, "public_ip_address_configuration", null)
        }
      }

      accelerated_networking = lookup(network_profile.value, "accelerated_networking", null)

      dynamic "dns_settings" { # network_profile.value.dns_settings
        for_each = network_profile.value.dns_settings != null ? network_profile.value.dns_settings : []
        content {
          dns_servers = lookup(dns_settings.value, "dns_servers") # (Required) 
        }
      }

      ip_forwarding             = lookup(network_profile.value, "ip_forwarding", false)
      network_security_group_id = lookup(network_profile.value, "network_security_group_id", null)
    }
  }


  os_profile {
    computer_name_prefix = lookup(os_profile.value, "computer_name_prefix") # (Required) 
    admin_username       = lookup(os_profile.value, "admin_username")       # (Required) 
    admin_password       = lookup(os_profile.value, "admin_password", null)
    custom_data          = lookup(os_profile.value, "custom_data", null)
  }


  sku {
    name     = lookup(sku.value, "name") # (Required) 
    tier     = lookup(sku.value, "tier", null)
    capacity = lookup(sku.value, "capacity") # (Required) 
  }


  storage_profile_os_disk {
    name              = lookup(storage_profile_os_disk.value, "name", null)
    vhd_containers    = lookup(storage_profile_os_disk.value, "vhd_containers", null)
    managed_disk_type = lookup(storage_profile_os_disk.value, "managed_disk_type", null)
    create_option     = lookup(storage_profile_os_disk.value, "create_option") # (Required) 
    caching           = lookup(storage_profile_os_disk.value, "caching", null)
    image             = lookup(storage_profile_os_disk.value, "image", null)
    os_type           = lookup(storage_profile_os_disk.value, "os_type", null)
  }

  upgrade_policy_mode = var.upgrade_policy_mode

  ########################################
  # optional vars
  ########################################

  dynamic "os_profile_windows_config" { # var.os_profile_windows_config
    for_each = var.os_profile_windows_config != null ? var.os_profile_windows_config : []
    content {
      provision_vm_agent        = lookup(os_profile_windows_config.value, "provision_vm_agent", null)
      enable_automatic_upgrades = lookup(os_profile_windows_config.value, "enable_automatic_upgrades", null)

      dynamic "winrm" { # os_profile_windows_config.value.winrm
        for_each = os_profile_windows_config.value.winrm != null ? os_profile_windows_config.value.winrm : []
        content {
          protocol        = lookup(winrm.value, "protocol") # (Required) 
          certificate_url = lookup(winrm.value, "certificate_url", null)
        }
      }


      dynamic "additional_unattend_config" { # os_profile_windows_config.value.additional_unattend_config
        for_each = os_profile_windows_config.value.additional_unattend_config != null ? os_profile_windows_config.value.additional_unattend_config : []
        content {
          pass         = lookup(additional_unattend_config.value, "pass")         # (Required) possible values: oobeSystem
          component    = lookup(additional_unattend_config.value, "component")    # (Required) possible values: Microsoft-Windows-Shell-Setup
          setting_name = lookup(additional_unattend_config.value, "setting_name") # (Required) possible values: FirstLogonCommands | AutoLogon
          content      = lookup(additional_unattend_config.value, "content")      # (Required) 
        }
      }

    }
  }


  dynamic "os_profile_linux_config" { # var.os_profile_linux_config
    for_each = var.os_profile_linux_config != null ? var.os_profile_linux_config : []
    content {
      disable_password_authentication = lookup(os_profile_linux_config.value, "disable_password_authentication", false)

      dynamic "ssh_keys" { # os_profile_linux_config.value.ssh_keys
        for_each = os_profile_linux_config.value.ssh_keys != null ? os_profile_linux_config.value.ssh_keys : []
        content {
          key_data = lookup(ssh_keys.value, "key_data", null)
          path     = lookup(ssh_keys.value, "path") # (Required) 
        }
      }

    }
  }

  proximity_placement_group_id = var.proximity_placement_group_id

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type") # (Required) possible values: SystemAssigned | UserAssigned | SystemAssigned, UserAssigned
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }

  automatic_os_upgrade = var.automatic_os_upgrade # Default: False

  dynamic "boot_diagnostics" { # var.boot_diagnostics
    for_each = var.boot_diagnostics != null ? var.boot_diagnostics : []
    content {
      enabled     = lookup(boot_diagnostics.value, "enabled", true)
      storage_uri = lookup(boot_diagnostics.value, "storage_uri") # (Required) 
    }
  }

}
