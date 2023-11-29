data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_orchestrated_virtual_machine_scale_set" "this" {

  ########################################
  # required vars
  ########################################
  name                        = var.name
  location                    = var.location
  resource_group_name         = data.azurerm_resource_group.this.name
  platform_fault_domain_count = var.platform_fault_domain_count

  ########################################
  # optional vars
  ########################################
  sku_name = var.sku_name

  dynamic "additional_capabilities" { # var.additional_capabilities
    for_each = var.additional_capabilities != null ? var.additional_capabilities : []
    content {
      ultra_ssd_enabled = lookup(additional_capabilities.value, "ultra_ssd_enabled", false)
    }
  }

  encryption_at_host_enabled = var.encryption_at_host_enabled
  instances                  = var.instances

  dynamic "network_interface" { # var.network_interface
    for_each = var.network_interface != null ? var.network_interface : []
    content {
      name                          = network_interface.key
      ip_configuration              = lookup(network_interface.value, "ip_configuration") # (Required) 
      dns_servers                   = lookup(network_interface.value, "dns_servers", null)
      enable_accelerated_networking = lookup(network_interface.value, "enable_accelerated_networking", false)
      enable_ip_forwarding          = lookup(network_interface.value, "enable_ip_forwarding", false)
      network_security_group_id     = lookup(network_interface.value, "network_security_group_id", null)
      primary                       = lookup(network_interface.value, "primary", false)
    }
  }


  dynamic "os_profile" { # var.os_profile
    for_each = var.os_profile != null ? var.os_profile : []
    content {
      custom_data = lookup(os_profile.value, "custom_data", null)

      dynamic "windows_configuration" { # os_profile.value.windows_configuration
        for_each = os_profile.value.windows_configuration != null ? os_profile.value.windows_configuration : []
        content {
          admin_username           = lookup(windows_configuration.value, "admin_username") # (Required) 
          admin_password           = lookup(windows_configuration.value, "admin_password") # (Required) 
          computer_name_prefix     = lookup(windows_configuration.value, "computer_name_prefix", "name")
          enable_automatic_updates = lookup(windows_configuration.value, "enable_automatic_updates", true)
          hotpatching_enabled      = lookup(windows_configuration.value, "hotpatching_enabled", false)
          patch_assessment_mode    = lookup(windows_configuration.value, "patch_assessment_mode", "ImageDefault")
          patch_mode               = lookup(windows_configuration.value, "patch_mode", "AutomaticByOS")
          provision_vm_agent       = lookup(windows_configuration.value, "provision_vm_agent", true)

          dynamic "secret" { # windows_configuration.value.secret
            for_each = windows_configuration.value.secret != null ? windows_configuration.value.secret : []
            content {
              key_vault_id = lookup(secret.value, "key_vault_id") # (Required) 

              dynamic "certificate" { # secret.value.certificate
                for_each = secret.value.certificate != null ? secret.value.certificate : []
                content {
                  store = lookup(certificate.value, "store") # (Required) 
                  url   = lookup(certificate.value, "url")   # (Required) 
                }
              }

            }
          }

          timezone = lookup(windows_configuration.value, "timezone", null)

          dynamic "winrm_listener" { # windows_configuration.value.winrm_listener
            for_each = windows_configuration.value.winrm_listener != null ? windows_configuration.value.winrm_listener : []
            content {
              protocol        = lookup(winrm_listener.value, "protocol") # (Required) possible values: Http | Https
              certificate_url = lookup(winrm_listener.value, "certificate_url", null)
            }
          }

        }
      }


      dynamic "linux_configuration" { # os_profile.value.linux_configuration
        for_each = os_profile.value.linux_configuration != null ? os_profile.value.linux_configuration : []
        content {
          admin_username = lookup(linux_configuration.value, "admin_username") # (Required) 
          admin_password = lookup(linux_configuration.value, "admin_password", null)

          dynamic "admin_ssh_key" { # linux_configuration.value.admin_ssh_key
            for_each = linux_configuration.value.admin_ssh_key != null ? linux_configuration.value.admin_ssh_key : []
            content {
              public_key = lookup(admin_ssh_key.value, "public_key") # (Required) 
              username   = lookup(admin_ssh_key.value, "username")   # (Required) 
            }
          }

          computer_name_prefix            = lookup(linux_configuration.value, "computer_name_prefix", "computer_name_prefix")
          disable_password_authentication = lookup(linux_configuration.value, "disable_password_authentication", true)
          patch_assessment_mode           = lookup(linux_configuration.value, "patch_assessment_mode", "ImageDefault")
          patch_mode                      = lookup(linux_configuration.value, "patch_mode", "ImageDefault")
          provision_vm_agent              = lookup(linux_configuration.value, "provision_vm_agent", true)

          dynamic "secret" { # linux_configuration.value.secret
            for_each = linux_configuration.value.secret != null ? linux_configuration.value.secret : []
            content {
              key_vault_id = lookup(secret.value, "key_vault_id") # (Required) 

              dynamic "certificate" { # secret.value.certificate
                for_each = secret.value.certificate != null ? secret.value.certificate : []
                content {
                  store = lookup(certificate.value, "store") # (Required) 
                  url   = lookup(certificate.value, "url")   # (Required) 
                }
              }

            }
          }

        }
      }

    }
  }


  dynamic "os_disk" { # var.os_disk
    for_each = var.os_disk != null ? var.os_disk : []
    content {
      caching              = lookup(os_disk.value, "caching")              # (Required) possible values: None | ReadOnly | ReadWrite
      storage_account_type = lookup(os_disk.value, "storage_account_type") # (Required) possible values: Standard_LRS | StandardSSD_LRS | StandardSSD_ZRS | Premium_LRS | Premium_ZRS

      dynamic "diff_disk_settings" { # os_disk.value.diff_disk_settings
        for_each = os_disk.value.diff_disk_settings != null ? os_disk.value.diff_disk_settings : []
        content {
          option    = lookup(diff_disk_settings.value, "option") # (Required) 
          placement = lookup(diff_disk_settings.value, "placement", "CacheDisk")
        }
      }

      disk_encryption_set_id    = lookup(os_disk.value, "disk_encryption_set_id", null)
      disk_size_gb              = lookup(os_disk.value, "disk_size_gb", null)
      write_accelerator_enabled = lookup(os_disk.value, "write_accelerator_enabled", false)
    }
  }


  dynamic "automatic_instance_repair" { # var.automatic_instance_repair
    for_each = var.automatic_instance_repair != null ? var.automatic_instance_repair : []
    content {
      enabled      = lookup(automatic_instance_repair.value, "enabled") # (Required) possible values: true | false
      grace_period = lookup(automatic_instance_repair.value, "grace_period", "PT30M")
    }
  }


  dynamic "boot_diagnostics" { # var.boot_diagnostics
    for_each = var.boot_diagnostics != null ? var.boot_diagnostics : []
    content {
      storage_account_uri = lookup(boot_diagnostics.value, "storage_account_uri", null)
    }
  }

  capacity_reservation_group_id = var.capacity_reservation_group_id

  dynamic "data_disk" { # var.data_disk
    for_each = var.data_disk != null ? var.data_disk : []
    content {
      caching                        = lookup(data_disk.value, "caching") # (Required) 
      create_option                  = lookup(data_disk.value, "create_option", "Empty")
      disk_size_gb                   = lookup(data_disk.value, "disk_size_gb")         # (Required) 
      lun                            = lookup(data_disk.value, "lun")                  # (Required) 
      storage_account_type           = lookup(data_disk.value, "storage_account_type") # (Required) possible values: Standard_LRS | StandardSSD_LRS | StandardSSD_ZRS | Premium_LRS | PremiumV2_LRS | Premium_ZRS | UltraSSD_LRS
      disk_encryption_set_id         = lookup(data_disk.value, "disk_encryption_set_id", null)
      ultra_ssd_disk_iops_read_write = lookup(data_disk.value, "ultra_ssd_disk_iops_read_write", null)
      ultra_ssd_disk_mbps_read_write = lookup(data_disk.value, "ultra_ssd_disk_mbps_read_write", null)
      write_accelerator_enabled      = lookup(data_disk.value, "write_accelerator_enabled", false)
    }
  }


  dynamic "extension" { # var.extension
    for_each = var.extension != null ? var.extension : []
    content {
      name                                      = extension.key
      publisher                                 = lookup(extension.value, "publisher")            # (Required) 
      type                                      = lookup(extension.value, "type")                 # (Required) 
      type_handler_version                      = lookup(extension.value, "type_handler_version") # (Required) 
      auto_upgrade_minor_version_enabled        = lookup(extension.value, "auto_upgrade_minor_version_enabled", true)
      extensions_to_provision_after_vm_creation = lookup(extension.value, "extensions_to_provision_after_vm_creation", null)
      force_extension_execution_on_change       = lookup(extension.value, "force_extension_execution_on_change", null)
      protected_settings                        = lookup(extension.value, "protected_settings", null)

      dynamic "protected_settings_from_key_vault" { # extension.value.protected_settings_from_key_vault
        for_each = extension.value.protected_settings_from_key_vault != null ? extension.value.protected_settings_from_key_vault : []
        content {
          secret_url      = lookup(protected_settings_from_key_vault.value, "secret_url")      # (Required) 
          source_vault_id = lookup(protected_settings_from_key_vault.value, "source_vault_id") # (Required) 
        }
      }

      failure_suppression_enabled = lookup(extension.value, "failure_suppression_enabled", null)
      settings                    = lookup(extension.value, "settings", null)
    }
  }

  extension_operations_enabled = var.extension_operations_enabled # Default: True
  extensions_time_budget       = var.extensions_time_budget       # Default: PT1H30M
  eviction_policy              = var.eviction_policy

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type")         # (Required) 
      identity_ids = lookup(identity.value, "identity_ids") # (Required) 
    }
  }

  license_type  = var.license_type
  max_bid_price = var.max_bid_price # Default: -1

  dynamic "plan" { # var.plan
    for_each = var.plan != null ? var.plan : []
    content {
      name      = plan.key
      publisher = lookup(plan.value, "publisher") # (Required) 
      product   = lookup(plan.value, "product")   # (Required) 
    }
  }

  priority               = var.priority # Default: Regular
  single_placement_group = var.single_placement_group
  source_image_id        = var.source_image_id

  dynamic "source_image_reference" { # var.source_image_reference
    for_each = var.source_image_reference != null ? var.source_image_reference : []
    content {
      publisher = lookup(source_image_reference.value, "publisher") # (Required) 
      offer     = lookup(source_image_reference.value, "offer")     # (Required) 
      sku       = lookup(source_image_reference.value, "sku")       # (Required) 
      version   = lookup(source_image_reference.value, "version")   # (Required) 
    }
  }


  dynamic "termination_notification" { # var.termination_notification
    for_each = var.termination_notification != null ? var.termination_notification : []
    content {
      enabled = lookup(termination_notification.value, "enabled") # (Required) possible values: true | false
      timeout = lookup(termination_notification.value, "timeout", "PT5M")
    }
  }

  user_data_base64             = var.user_data_base64
  proximity_placement_group_id = var.proximity_placement_group_id
  zone_balance                 = var.zone_balance # Default: False
  zones                        = var.zones
  tags                         = var.tags

  dynamic "priority_mix" { # var.priority_mix
    for_each = var.priority_mix != null ? var.priority_mix : []
    content {
      base_regular_count            = lookup(priority_mix.value, "base_regular_count", "0")
      regular_percentage_above_base = lookup(priority_mix.value, "regular_percentage_above_base", "0")
    }
  }

}
