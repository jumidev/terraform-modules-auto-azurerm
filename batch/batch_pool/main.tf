data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_batch_pool" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  account_name        = var.account_name
  node_agent_sku_id   = var.node_agent_sku_id
  vm_size             = var.vm_size

  storage_image_reference {
    publisher = lookup(storage_image_reference.value, "publisher", null)
    offer     = lookup(storage_image_reference.value, "offer", null)
    sku       = lookup(storage_image_reference.value, "sku", null)
    version   = lookup(storage_image_reference.value, "version", null)
  }


  ########################################
  # optional vars
  ########################################
  stop_pending_resize_operation = var.stop_pending_resize_operation

  dynamic "data_disks" { # var.data_disks
    for_each = var.data_disks != null ? var.data_disks : []
    content {
      lun                  = lookup(data_disks.value, "lun") # (Required) 
      caching              = lookup(data_disks.value, "caching", "ReadOnly")
      disk_size_gb         = lookup(data_disks.value, "disk_size_gb") # (Required) 
      storage_account_type = lookup(data_disks.value, "storage_account_type", "Standard_LRS")
    }
  }

  display_name = var.display_name

  dynamic "disk_encryption" { # var.disk_encryption
    for_each = var.disk_encryption != null ? var.disk_encryption : []
    content {
      disk_encryption_target = lookup(disk_encryption.value, "disk_encryption_target") # (Required) 
    }
  }


  dynamic "extensions" { # var.extensions
    for_each = var.extensions != null ? var.extensions : []
    content {
      name                       = extensions.key
      publisher                  = lookup(extensions.value, "publisher") # (Required) 
      type                       = lookup(extensions.value, "type")      # (Required) 
      type_handler_version       = lookup(extensions.value, "type_handler_version", null)
      auto_upgrade_minor_version = lookup(extensions.value, "auto_upgrade_minor_version", null)
      automatic_upgrade_enabled  = lookup(extensions.value, "automatic_upgrade_enabled", null)
      settings_json              = lookup(extensions.value, "settings_json", null)
      protected_settings         = lookup(extensions.value, "protected_settings", null)
      provision_after_extensions = lookup(extensions.value, "provision_after_extensions", null)
    }
  }

  inter_node_communication = var.inter_node_communication # Default: False

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type")         # (Required) possible values: UserAssigned
      identity_ids = lookup(identity.value, "identity_ids") # (Required) 
    }
  }

  license_type       = var.license_type
  max_tasks_per_node = var.max_tasks_per_node # Default: 1

  dynamic "fixed_scale" { # var.fixed_scale
    for_each = var.fixed_scale != null ? var.fixed_scale : []
    content {
      node_deallocation_method  = lookup(fixed_scale.value, "node_deallocation_method", null)
      target_dedicated_nodes    = lookup(fixed_scale.value, "target_dedicated_nodes", 1)
      target_low_priority_nodes = lookup(fixed_scale.value, "target_low_priority_nodes", 0)
      resize_timeout            = lookup(fixed_scale.value, "resize_timeout", "PT15M")
    }
  }


  dynamic "auto_scale" { # var.auto_scale
    for_each = var.auto_scale != null ? var.auto_scale : []
    content {
      evaluation_interval = lookup(auto_scale.value, "evaluation_interval", "PT15M")
      formula             = lookup(auto_scale.value, "formula") # (Required) 
    }
  }


  dynamic "start_task" { # var.start_task
    for_each = var.start_task != null ? var.start_task : []
    content {
      command_line = lookup(start_task.value, "command_line") # (Required) 

      dynamic "container" { # start_task.value.container
        for_each = start_task.value.container != null ? start_task.value.container : []
        content {
          image_name        = lookup(container.value, "image_name") # (Required) 
          run_options       = lookup(container.value, "run_options", null)
          registry          = lookup(container.value, "registry", null)
          working_directory = lookup(container.value, "working_directory", null)
        }
      }

      task_retry_maximum            = lookup(start_task.value, "task_retry_maximum", null)
      wait_for_success              = lookup(start_task.value, "wait_for_success", false)
      common_environment_properties = lookup(start_task.value, "common_environment_properties", null)

      dynamic "user_identity" { # start_task.value.user_identity
        for_each = start_task.value.user_identity != null ? start_task.value.user_identity : []
        content {
          user_name = lookup(user_identity.value, "user_name", null)

          dynamic "auto_user" { # user_identity.value.auto_user
            for_each = user_identity.value.auto_user != null ? user_identity.value.auto_user : []
            content {
              elevation_level = lookup(auto_user.value, "elevation_level", "NonAdmin")
              scope           = lookup(auto_user.value, "scope", "Task")
            }
          }

        }
      }

      resource_file = lookup(start_task.value, "resource_file", null)
    }
  }

  certificate = var.certificate

  dynamic "container_configuration" { # var.container_configuration
    for_each = var.container_configuration != null ? var.container_configuration : []
    content {
      type                  = lookup(container_configuration.value, "type", null)
      container_image_names = lookup(container_configuration.value, "container_image_names", null)

      dynamic "container_registries" { # container_configuration.value.container_registries
        for_each = container_configuration.value.container_registries != null ? container_configuration.value.container_registries : []
        content {
          registry_server           = lookup(container_registries.value, "registry_server") # (Required) 
          user_name                 = lookup(container_registries.value, "user_name", null)
          password                  = lookup(container_registries.value, "password", null)
          user_assigned_identity_id = lookup(container_registries.value, "user_assigned_identity_id", null)
        }
      }

    }
  }

  metadata = var.metadata

  dynamic "mount" { # var.mount
    for_each = var.mount != null ? var.mount : []
    content {

      dynamic "azure_blob_file_system" { # mount.value.azure_blob_file_system
        for_each = mount.value.azure_blob_file_system != null ? mount.value.azure_blob_file_system : []
        content {
          account_name        = lookup(azure_blob_file_system.value, "account_name")        # (Required) 
          container_name      = lookup(azure_blob_file_system.value, "container_name")      # (Required) 
          relative_mount_path = lookup(azure_blob_file_system.value, "relative_mount_path") # (Required) 
          account_key         = lookup(azure_blob_file_system.value, "account_key", null)
          sas_key             = lookup(azure_blob_file_system.value, "sas_key", null)
          identity_id         = lookup(azure_blob_file_system.value, "identity_id", null)
          blobfuse_options    = lookup(azure_blob_file_system.value, "blobfuse_options", null)
        }
      }


      dynamic "azure_file_share" { # mount.value.azure_file_share
        for_each = mount.value.azure_file_share != null ? mount.value.azure_file_share : []
        content {
          account_name        = lookup(azure_file_share.value, "account_name")        # (Required) 
          account_key         = lookup(azure_file_share.value, "account_key")         # (Required) 
          azure_file_url      = lookup(azure_file_share.value, "azure_file_url")      # (Required) 
          relative_mount_path = lookup(azure_file_share.value, "relative_mount_path") # (Required) 
          mount_options       = lookup(azure_file_share.value, "mount_options", null)
        }
      }


      dynamic "cifs_mount" { # mount.value.cifs_mount
        for_each = mount.value.cifs_mount != null ? mount.value.cifs_mount : []
        content {
          user_name           = lookup(cifs_mount.value, "user_name")           # (Required) 
          password            = lookup(cifs_mount.value, "password")            # (Required) 
          source              = lookup(cifs_mount.value, "source")              # (Required) 
          relative_mount_path = lookup(cifs_mount.value, "relative_mount_path") # (Required) 
          mount_options       = lookup(cifs_mount.value, "mount_options", null)
        }
      }


      dynamic "nfs_mount" { # mount.value.nfs_mount
        for_each = mount.value.nfs_mount != null ? mount.value.nfs_mount : []
        content {
          source              = lookup(nfs_mount.value, "source")              # (Required) 
          relative_mount_path = lookup(nfs_mount.value, "relative_mount_path") # (Required) 
          mount_options       = lookup(nfs_mount.value, "mount_options", null)
        }
      }

    }
  }


  dynamic "network_configuration" { # var.network_configuration
    for_each = var.network_configuration != null ? var.network_configuration : []
    content {
      subnet_id                      = lookup(network_configuration.value, "subnet_id", null)
      dynamic_vnet_assignment_scope  = lookup(network_configuration.value, "dynamic_vnet_assignment_scope", "none")
      accelerated_networking_enabled = lookup(network_configuration.value, "accelerated_networking_enabled", false)
      public_ips                     = lookup(network_configuration.value, "public_ips", null)

      dynamic "endpoint_configuration" { # network_configuration.value.endpoint_configuration
        for_each = network_configuration.value.endpoint_configuration != null ? network_configuration.value.endpoint_configuration : []
        content {
          name                = endpoint_configuration.key
          backend_port        = lookup(endpoint_configuration.value, "backend_port")        # (Required) 
          protocol            = lookup(endpoint_configuration.value, "protocol")            # (Required) 
          frontend_port_range = lookup(endpoint_configuration.value, "frontend_port_range") # (Required) 

          dynamic "network_security_group_rules" { # endpoint_configuration.value.network_security_group_rules
            for_each = endpoint_configuration.value.network_security_group_rules != null ? endpoint_configuration.value.network_security_group_rules : []
            content {
              access                = lookup(network_security_group_rules.value, "access")                # (Required) 
              priority              = lookup(network_security_group_rules.value, "priority")              # (Required) 
              source_address_prefix = lookup(network_security_group_rules.value, "source_address_prefix") # (Required) 
              source_port_ranges    = lookup(network_security_group_rules.value, "source_port_ranges", null)
            }
          }

        }
      }

      public_address_provisioning_type = lookup(network_configuration.value, "public_address_provisioning_type", null)
    }
  }


  dynamic "node_placement" { # var.node_placement
    for_each = var.node_placement != null ? var.node_placement : []
    content {
      policy = lookup(node_placement.value, "policy", "Regional")
    }
  }

  os_disk_placement              = var.os_disk_placement
  target_node_communication_mode = var.target_node_communication_mode

  dynamic "task_scheduling_policy" { # var.task_scheduling_policy
    for_each = var.task_scheduling_policy != null ? var.task_scheduling_policy : []
    content {
      node_fill_type = lookup(task_scheduling_policy.value, "node_fill_type", null)
    }
  }


  dynamic "user_accounts" { # var.user_accounts
    for_each = var.user_accounts != null ? var.user_accounts : []
    content {
      name                       = user_accounts.key
      password                   = lookup(user_accounts.value, "password")        # (Required) 
      elevation_level            = lookup(user_accounts.value, "elevation_level") # (Required) 
      linux_user_configuration   = lookup(user_accounts.value, "linux_user_configuration", null)
      windows_user_configuration = lookup(user_accounts.value, "windows_user_configuration", null)
    }
  }


  dynamic "windows" { # var.windows
    for_each = var.windows != null ? var.windows : []
    content {
      enable_automatic_updates = lookup(windows.value, "enable_automatic_updates", true)
    }
  }

}
