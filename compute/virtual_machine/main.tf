data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_virtual_machine" "this" {

  ########################################
  # required vars
  ########################################
  name                  = var.name
  resource_group_name   = data.azurerm_resource_group.this.name
  location              = var.location
  network_interface_ids = var.network_interface_ids
  vm_size               = var.vm_size

  storage_os_disk {
    name                      = lookup(storage_os_disk.value, "name")          # (Required) 
    create_option             = lookup(storage_os_disk.value, "create_option") # (Required) 
    caching                   = lookup(storage_os_disk.value, "caching", null)
    disk_size_gb              = lookup(storage_os_disk.value, "disk_size_gb", null)
    image_uri                 = lookup(storage_os_disk.value, "image_uri", null)
    os_type                   = lookup(storage_os_disk.value, "os_type", null)
    write_accelerator_enabled = lookup(storage_os_disk.value, "write_accelerator_enabled", false)
    managed_disk_id           = lookup(storage_os_disk.value, "managed_disk_id", null)
    managed_disk_type         = lookup(storage_os_disk.value, "managed_disk_type", null)
    vhd_uri                   = lookup(storage_os_disk.value, "vhd_uri", null)
  }


  ########################################
  # optional vars
  ########################################

  dynamic "os_profile_linux_config" { # var.os_profile_linux_config
    for_each = var.os_profile_linux_config != null ? var.os_profile_linux_config : []
    content {
      disable_password_authentication = lookup(os_profile_linux_config.value, "disable_password_authentication") # (Required) 

      dynamic "ssh_keys" { # os_profile_linux_config.value.ssh_keys
        for_each = os_profile_linux_config.value.ssh_keys != null ? os_profile_linux_config.value.ssh_keys : []
        content {
          key_data = lookup(ssh_keys.value, "key_data") # (Required) 
          path     = lookup(ssh_keys.value, "path")     # (Required) 
        }
      }

    }
  }


  dynamic "os_profile_windows_config" { # var.os_profile_windows_config
    for_each = var.os_profile_windows_config != null ? var.os_profile_windows_config : []
    content {
      provision_vm_agent        = lookup(os_profile_windows_config.value, "provision_vm_agent", false)
      enable_automatic_upgrades = lookup(os_profile_windows_config.value, "enable_automatic_upgrades", false)
      timezone                  = lookup(os_profile_windows_config.value, "timezone", null)

      dynamic "winrm" { # os_profile_windows_config.value.winrm
        for_each = os_profile_windows_config.value.winrm != null ? os_profile_windows_config.value.winrm : []
        content {
          protocol        = lookup(winrm.value, "protocol") # (Required) possible values: HTTP | HTTPS
          certificate_url = lookup(winrm.value, "certificate_url", null)
        }
      }


      dynamic "additional_unattend_config" { # os_profile_windows_config.value.additional_unattend_config
        for_each = os_profile_windows_config.value.additional_unattend_config != null ? os_profile_windows_config.value.additional_unattend_config : []
        content {
          pass         = lookup(additional_unattend_config.value, "pass")         # (Required) 
          component    = lookup(additional_unattend_config.value, "component")    # (Required) 
          setting_name = lookup(additional_unattend_config.value, "setting_name") # (Required) possible values: FirstLogonCommands | AutoLogon
          content      = lookup(additional_unattend_config.value, "content")      # (Required) 
        }
      }

    }
  }

  availability_set_id = var.availability_set_id

  dynamic "boot_diagnostics" { # var.boot_diagnostics
    for_each = var.boot_diagnostics != null ? var.boot_diagnostics : []
    content {
      enabled     = lookup(boot_diagnostics.value, "enabled")     # (Required) 
      storage_uri = lookup(boot_diagnostics.value, "storage_uri") # (Required) 
    }
  }


  dynamic "additional_capabilities" { # var.additional_capabilities
    for_each = var.additional_capabilities != null ? var.additional_capabilities : []
    content {
      ultra_ssd_enabled = lookup(additional_capabilities.value, "ultra_ssd_enabled") # (Required) 
    }
  }

  delete_os_disk_on_termination    = var.delete_os_disk_on_termination    # Default: False
  delete_data_disks_on_termination = var.delete_data_disks_on_termination # Default: False

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type") # (Required) possible values: SystemAssigned | UserAssigned | SystemAssigned, UserAssigned
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }

  license_type = var.license_type

  dynamic "os_profile" { # var.os_profile
    for_each = var.os_profile != null ? var.os_profile : []
    content {
      computer_name  = lookup(os_profile.value, "computer_name")  # (Required) 
      admin_username = lookup(os_profile.value, "admin_username") # (Required) 
      admin_password = lookup(os_profile.value, "admin_password", null)
      custom_data    = lookup(os_profile.value, "custom_data", null)
    }
  }


  dynamic "os_profile_secrets" { # var.os_profile_secrets
    for_each = var.os_profile_secrets != null ? var.os_profile_secrets : []
    content {
      source_vault_id = lookup(os_profile_secrets.value, "source_vault_id") # (Required) 

      dynamic "vault_certificates" { # os_profile_secrets.value.vault_certificates
        for_each = os_profile_secrets.value.vault_certificates != null ? os_profile_secrets.value.vault_certificates : []
        content {
          certificate_url   = lookup(vault_certificates.value, "certificate_url") # (Required) 
          certificate_store = lookup(vault_certificates.value, "certificate_store", null)
        }
      }

    }
  }


  dynamic "plan" { # var.plan
    for_each = var.plan != null ? var.plan : []
    content {
      name      = plan.key
      publisher = lookup(plan.value, "publisher") # (Required) 
      product   = lookup(plan.value, "product")   # (Required) 
    }
  }

  primary_network_interface_id = var.primary_network_interface_id
  proximity_placement_group_id = var.proximity_placement_group_id

  dynamic "storage_data_disk" { # var.storage_data_disk
    for_each = var.storage_data_disk != null ? var.storage_data_disk : []
    content {
      name                      = storage_data_disk.key
      caching                   = lookup(storage_data_disk.value, "caching", null)
      create_option             = lookup(storage_data_disk.value, "create_option") # (Required) possible values: Attach | FromImage | Empty
      disk_size_gb              = lookup(storage_data_disk.value, "disk_size_gb", null)
      lun                       = lookup(storage_data_disk.value, "lun") # (Required) 
      write_accelerator_enabled = lookup(storage_data_disk.value, "write_accelerator_enabled", false)
      managed_disk_type         = lookup(storage_data_disk.value, "managed_disk_type", null)
      managed_disk_id           = lookup(storage_data_disk.value, "managed_disk_id", null)
      vhd_uri                   = lookup(storage_data_disk.value, "vhd_uri", null)
    }
  }


  dynamic "storage_image_reference" { # var.storage_image_reference
    for_each = var.storage_image_reference != null ? var.storage_image_reference : []
    content {
      publisher = lookup(storage_image_reference.value, "publisher", null)
      offer     = lookup(storage_image_reference.value, "offer", null)
      sku       = lookup(storage_image_reference.value, "sku", null)
      version   = lookup(storage_image_reference.value, "version", null)
    }
  }

  tags  = var.tags
  zones = var.zones
}
