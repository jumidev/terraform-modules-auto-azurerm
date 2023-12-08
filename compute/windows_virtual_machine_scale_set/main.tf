data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
resource "random_string" "admin_password" {
  length  = 32
  special = false
  upper   = true
}


resource "azurerm_windows_virtual_machine_scale_set" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  location            = var.location
  resource_group_name = data.azurerm_resource_group.this.name
  admin_password      = random_string.admin_password.result
  admin_username      = var.admin_username
  instances           = var.instances
  sku                 = var.sku

  dynamic "network_interface" { # var.network_interface
    for_each = var.network_interface != null ? var.network_interface : []
    content {
      name                          = network_interface.key
      ip_configuration              = lookup(network_interface.value, "ip_configuration") # (Required) 
      dns_servers                   = lookup(network_interface.value, "dns_servers", null)
      enable_accelerated_networking = lookup(network_interface.value, "enable_accelerated_networking", false)
      enable_ip_forwarding          = lookup(network_interface.value, "enable_ip_forwarding", false)
      network_security_group_id     = lookup(network_interface.value, "network_security_group_id", null)
      primary                       = lookup(network_interface.value, "primary", null)
    }
  }


  os_disk {
    caching                          = lookup(os_disk.value, "caching")              # (Required) 
    storage_account_type             = lookup(os_disk.value, "storage_account_type") # (Required) 
    diff_disk_settings               = lookup(os_disk.value, "diff_disk_settings", null)
    disk_encryption_set_id           = lookup(os_disk.value, "disk_encryption_set_id", null)
    disk_size_gb                     = lookup(os_disk.value, "disk_size_gb", null)
    secure_vm_disk_encryption_set_id = lookup(os_disk.value, "secure_vm_disk_encryption_set_id", null)
    security_encryption_type         = lookup(os_disk.value, "security_encryption_type", null)
    write_accelerator_enabled        = lookup(os_disk.value, "write_accelerator_enabled", false)
  }


  ########################################
  # optional vars
  ########################################

  dynamic "additional_capabilities" { # var.additional_capabilities
    for_each = var.additional_capabilities != null ? var.additional_capabilities : []
    content {
      ultra_ssd_enabled = lookup(additional_capabilities.value, "ultra_ssd_enabled", false)
    }
  }


  dynamic "additional_unattend_content" { # var.additional_unattend_content
    for_each = var.additional_unattend_content != null ? var.additional_unattend_content : []
    content {
      content = lookup(additional_unattend_content.value, "content") # (Required) 
      setting = lookup(additional_unattend_content.value, "setting") # (Required) possible values: AutoLogon | FirstLogonCommands
    }
  }


  dynamic "automatic_os_upgrade_policy" { # var.automatic_os_upgrade_policy
    for_each = var.automatic_os_upgrade_policy != null ? var.automatic_os_upgrade_policy : []
    content {
      disable_automatic_rollback  = lookup(automatic_os_upgrade_policy.value, "disable_automatic_rollback")  # (Required) 
      enable_automatic_os_upgrade = lookup(automatic_os_upgrade_policy.value, "enable_automatic_os_upgrade") # (Required) 
    }
  }


  dynamic "automatic_instance_repair" { # var.automatic_instance_repair
    for_each = var.automatic_instance_repair != null ? var.automatic_instance_repair : []
    content {
      enabled      = lookup(automatic_instance_repair.value, "enabled") # (Required) 
      grace_period = lookup(automatic_instance_repair.value, "grace_period", pt30m)
    }
  }


  dynamic "boot_diagnostics" { # var.boot_diagnostics
    for_each = var.boot_diagnostics != null ? var.boot_diagnostics : []
    content {
      storage_account_uri = lookup(boot_diagnostics.value, "storage_account_uri", null)
    }
  }

  capacity_reservation_group_id = var.capacity_reservation_group_id
  computer_name_prefix          = var.computer_name_prefix # Default: name
  custom_data                   = var.custom_data

  dynamic "data_disk" { # var.data_disk
    for_each = var.data_disk != null ? var.data_disk : []
    content {
      name                           = data_disk.key
      caching                        = lookup(data_disk.value, "caching") # (Required) possible values: None | ReadOnly | ReadWrite
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

  do_not_run_extensions_on_overprovisioned_machines = var.do_not_run_extensions_on_overprovisioned_machines # Default: False
  edge_zone                                         = var.edge_zone
  enable_automatic_updates                          = var.enable_automatic_updates # Default: True
  encryption_at_host_enabled                        = var.encryption_at_host_enabled

  dynamic "extension" { # var.extension
    for_each = var.extension != null ? var.extension : []
    content {
      name                       = extension.key
      publisher                  = lookup(extension.value, "publisher")            # (Required) 
      type                       = lookup(extension.value, "type")                 # (Required) 
      type_handler_version       = lookup(extension.value, "type_handler_version") # (Required) 
      auto_upgrade_minor_version = lookup(extension.value, "auto_upgrade_minor_version", true)
      automatic_upgrade_enabled  = lookup(extension.value, "automatic_upgrade_enabled", null)
      force_update_tag           = lookup(extension.value, "force_update_tag", null)
      protected_settings         = lookup(extension.value, "protected_settings", null)

      dynamic "protected_settings_from_key_vault" { # extension.value.protected_settings_from_key_vault
        for_each = extension.value.protected_settings_from_key_vault != null ? extension.value.protected_settings_from_key_vault : []
        content {
          secret_url      = lookup(protected_settings_from_key_vault.value, "secret_url")      # (Required) 
          source_vault_id = lookup(protected_settings_from_key_vault.value, "source_vault_id") # (Required) 
        }
      }

      provision_after_extensions = lookup(extension.value, "provision_after_extensions", null)
      settings                   = lookup(extension.value, "settings", null)
    }
  }

  extension_operations_enabled = var.extension_operations_enabled # Default: True
  extensions_time_budget       = var.extensions_time_budget       # Default: PT1H30M
  eviction_policy              = var.eviction_policy

  dynamic "gallery_application" { # var.gallery_application
    for_each = var.gallery_application != null ? var.gallery_application : []
    content {
      version_id             = lookup(gallery_application.value, "version_id") # (Required) 
      configuration_blob_uri = lookup(gallery_application.value, "configuration_blob_uri", null)
      order                  = lookup(gallery_application.value, "order", null)
      tag                    = lookup(gallery_application.value, "tag", null)
    }
  }

  health_probe_id = var.health_probe_id
  host_group_id   = var.host_group_id

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type") # (Required) possible values: SystemAssigned | UserAssigned | SystemAssigned, UserAssigned
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }

  license_type  = var.license_type
  max_bid_price = var.max_bid_price # Default: -1
  overprovision = var.overprovision # Default: True

  dynamic "plan" { # var.plan
    for_each = var.plan != null ? var.plan : []
    content {
      name      = plan.key
      publisher = lookup(plan.value, "publisher") # (Required) 
      product   = lookup(plan.value, "product")   # (Required) 
    }
  }

  platform_fault_domain_count  = var.platform_fault_domain_count
  priority                     = var.priority           # Default: Regular
  provision_vm_agent           = var.provision_vm_agent # Default: True
  proximity_placement_group_id = var.proximity_placement_group_id

  dynamic "rolling_upgrade_policy" { # var.rolling_upgrade_policy
    for_each = var.rolling_upgrade_policy != null ? var.rolling_upgrade_policy : []
    content {
      cross_zone_upgrades_enabled             = lookup(rolling_upgrade_policy.value, "cross_zone_upgrades_enabled", null)
      max_batch_instance_percent              = lookup(rolling_upgrade_policy.value, "max_batch_instance_percent")              # (Required) 
      max_unhealthy_instance_percent          = lookup(rolling_upgrade_policy.value, "max_unhealthy_instance_percent")          # (Required) 
      max_unhealthy_upgraded_instance_percent = lookup(rolling_upgrade_policy.value, "max_unhealthy_upgraded_instance_percent") # (Required) 
      pause_time_between_batches              = lookup(rolling_upgrade_policy.value, "pause_time_between_batches")              # (Required) 
      prioritize_unhealthy_instances_enabled  = lookup(rolling_upgrade_policy.value, "prioritize_unhealthy_instances_enabled", null)
    }
  }


  dynamic "scale_in" { # var.scale_in
    for_each = var.scale_in != null ? var.scale_in : []
    content {
      rule                   = lookup(scale_in.value, "rule", "Default")
      force_deletion_enabled = lookup(scale_in.value, "force_deletion_enabled", false)
    }
  }


  dynamic "secret" { # var.secret
    for_each = var.secret != null ? var.secret : []
    content {
      certificate  = lookup(secret.value, "certificate")  # (Required) 
      key_vault_id = lookup(secret.value, "key_vault_id") # (Required) 
    }
  }

  secure_boot_enabled    = var.secure_boot_enabled
  single_placement_group = var.single_placement_group # Default: True
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


  dynamic "spot_restore" { # var.spot_restore
    for_each = var.spot_restore != null ? var.spot_restore : []
    content {
      enabled = lookup(spot_restore.value, "enabled", false)
      timeout = lookup(spot_restore.value, "timeout", "PT1H")
    }
  }

  tags = var.tags

  dynamic "terminate_notification" { # var.terminate_notification
    for_each = var.terminate_notification != null ? var.terminate_notification : []
    content {
      enabled = lookup(terminate_notification.value, "enabled") # (Required) 
      timeout = lookup(terminate_notification.value, "timeout", "PT5M")
    }
  }


  dynamic "termination_notification" { # var.termination_notification
    for_each = var.termination_notification != null ? var.termination_notification : []
    content {
      enabled = lookup(termination_notification.value, "enabled") # (Required) 
      timeout = lookup(termination_notification.value, "timeout", "PT5M")
    }
  }

  timezone     = var.timezone
  upgrade_mode = var.upgrade_mode # Default: Manual
  user_data    = var.user_data
  vtpm_enabled = var.vtpm_enabled

  dynamic "winrm_listener" { # var.winrm_listener
    for_each = var.winrm_listener != null ? var.winrm_listener : []
    content {
      certificate_url = lookup(winrm_listener.value, "certificate_url", null)
      protocol        = lookup(winrm_listener.value, "protocol") # (Required) possible values: Http | Https
    }
  }

  zone_balance = var.zone_balance # Default: False
  zones        = var.zones
}
