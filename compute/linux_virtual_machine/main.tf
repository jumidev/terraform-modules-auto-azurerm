data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
resource "random_string" "admin_password" {
  length  = 32
  special = false
  upper   = true
}


resource "azurerm_linux_virtual_machine" "this" {

  ########################################
  # required vars
  ########################################
  admin_username        = var.admin_username
  location              = var.location
  name                  = var.name
  network_interface_ids = var.network_interface_ids

  os_disk {
    caching                          = lookup(os_disk.value, "caching")              # (Required) 
    storage_account_type             = lookup(os_disk.value, "storage_account_type") # (Required) 
    diff_disk_settings               = lookup(os_disk.value, "diff_disk_settings", null)
    disk_encryption_set_id           = lookup(os_disk.value, "disk_encryption_set_id", null)
    disk_size_gb                     = lookup(os_disk.value, "disk_size_gb", null)
    name                             = lookup(os_disk.value, "name", null)
    secure_vm_disk_encryption_set_id = lookup(os_disk.value, "secure_vm_disk_encryption_set_id", null)
    security_encryption_type         = lookup(os_disk.value, "security_encryption_type", null)
    write_accelerator_enabled        = lookup(os_disk.value, "write_accelerator_enabled", false)
  }

  resource_group_name = data.azurerm_resource_group.this.name
  size                = var.size

  ########################################
  # optional vars
  ########################################
  license_type = var.license_type

  dynamic "additional_capabilities" { # var.additional_capabilities
    for_each = var.additional_capabilities != null ? var.additional_capabilities : []
    content {
      ultra_ssd_enabled = lookup(additional_capabilities.value, "ultra_ssd_enabled", false)
    }
  }

  admin_password = random_string.admin_password.result

  dynamic "admin_ssh_key" { # var.admin_ssh_key
    for_each = var.admin_ssh_key != null ? var.admin_ssh_key : []
    content {
      public_key = lookup(admin_ssh_key.value, "public_key") # (Required) 
      username   = lookup(admin_ssh_key.value, "username")   # (Required) 
    }
  }

  allow_extension_operations = var.allow_extension_operations # Default: True
  availability_set_id        = var.availability_set_id

  dynamic "boot_diagnostics" { # var.boot_diagnostics
    for_each = var.boot_diagnostics != null ? var.boot_diagnostics : []
    content {
      storage_account_uri = lookup(boot_diagnostics.value, "storage_account_uri", null)
    }
  }

  bypass_platform_safety_checks_on_user_schedule_enabled = var.bypass_platform_safety_checks_on_user_schedule_enabled # Default: False
  capacity_reservation_group_id                          = var.capacity_reservation_group_id
  computer_name                                          = var.computer_name # Default: name
  custom_data                                            = var.custom_data
  dedicated_host_id                                      = var.dedicated_host_id
  dedicated_host_group_id                                = var.dedicated_host_group_id
  disable_password_authentication                        = var.disable_password_authentication # Default: True
  edge_zone                                              = var.edge_zone
  encryption_at_host_enabled                             = var.encryption_at_host_enabled
  eviction_policy                                        = var.eviction_policy
  extensions_time_budget                                 = var.extensions_time_budget # Default: PT1H30M

  dynamic "gallery_application" { # var.gallery_application
    for_each = var.gallery_application != null ? var.gallery_application : []
    content {
      version_id             = lookup(gallery_application.value, "version_id") # (Required) 
      configuration_blob_uri = lookup(gallery_application.value, "configuration_blob_uri", null)
      order                  = lookup(gallery_application.value, "order", null)
      tag                    = lookup(gallery_application.value, "tag", null)
    }
  }


  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type") # (Required) possible values: SystemAssigned | UserAssigned | SystemAssigned, UserAssigned
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }

  patch_assessment_mode = var.patch_assessment_mode # Default: ImageDefault
  patch_mode            = var.patch_mode            # Default: ImageDefault
  max_bid_price         = var.max_bid_price         # Default: -1

  dynamic "plan" { # var.plan
    for_each = var.plan != null ? var.plan : []
    content {
      name      = plan.key
      product   = lookup(plan.value, "product")   # (Required) 
      publisher = lookup(plan.value, "publisher") # (Required) 
    }
  }

  platform_fault_domain        = var.platform_fault_domain # Default: -1
  priority                     = var.priority              # Default: Regular
  provision_vm_agent           = var.provision_vm_agent    # Default: True
  proximity_placement_group_id = var.proximity_placement_group_id
  reboot_setting               = var.reboot_setting

  dynamic "secret" { # var.secret
    for_each = var.secret != null ? var.secret : []
    content {
      certificate  = lookup(secret.value, "certificate")  # (Required) 
      key_vault_id = lookup(secret.value, "key_vault_id") # (Required) 
    }
  }

  secure_boot_enabled = var.secure_boot_enabled
  source_image_id     = var.source_image_id

  dynamic "source_image_reference" { # var.source_image_reference
    for_each = var.source_image_reference != null ? var.source_image_reference : []
    content {
      publisher = lookup(source_image_reference.value, "publisher") # (Required) 
      offer     = lookup(source_image_reference.value, "offer")     # (Required) 
      sku       = lookup(source_image_reference.value, "sku")       # (Required) 
      version   = lookup(source_image_reference.value, "version")   # (Required) 
    }
  }

  tags = var.tags

  dynamic "termination_notification" { # var.termination_notification
    for_each = var.termination_notification != null ? var.termination_notification : []
    content {
      enabled = lookup(termination_notification.value, "enabled") # (Required) 
      timeout = lookup(termination_notification.value, "timeout", "PT5M")
    }
  }

  user_data                    = var.user_data
  vtpm_enabled                 = var.vtpm_enabled
  virtual_machine_scale_set_id = var.virtual_machine_scale_set_id
  zone                         = var.zone
}

##############################################################################################
# optional azurerm_virtual_machine_data_disk_attachment 
##############################################################################################
resource "azurerm_virtual_machine_data_disk_attachment" "this" {
  count                     = var.managed_disk_id != null ? 1 : 0
  virtual_machine_id        = azurerm_linux_virtual_machine.this.id
  managed_disk_id           = var.managed_disk_id
  lun                       = var.lun                       # Default: 3
  caching                   = var.caching                   # Default: ReadOnly
  create_option             = var.create_option             # Default: Attach
  write_accelerator_enabled = var.write_accelerator_enabled # Default: False
}
