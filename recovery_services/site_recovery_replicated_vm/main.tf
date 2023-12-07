data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_site_recovery_replicated_vm" "this" {

  ########################################
  # required vars
  ########################################
  name                                      = var.name
  resource_group_name                       = data.azurerm_resource_group.this.name
  recovery_vault_name                       = var.recovery_vault_name
  recovery_replication_policy_id            = var.recovery_replication_policy_id
  source_recovery_fabric_name               = var.source_recovery_fabric_name
  source_vm_id                              = var.source_vm_id
  source_recovery_protection_container_name = var.source_recovery_protection_container_name
  target_resource_group_id                  = var.target_resource_group_id
  target_recovery_fabric_id                 = var.target_recovery_fabric_id
  target_recovery_protection_container_id   = var.target_recovery_protection_container_id

  ########################################
  # optional vars
  ########################################
  target_availability_set_id = var.target_availability_set_id
  target_zone                = var.target_zone

  dynamic "managed_disk" { # var.managed_disk
    for_each = var.managed_disk != null ? var.managed_disk : []
    content {
      disk_id                       = lookup(managed_disk.value, "disk_id")                    # (Required) 
      staging_storage_account_id    = lookup(managed_disk.value, "staging_storage_account_id") # (Required) 
      target_resource_group_id      = lookup(managed_disk.value, "target_resource_group_id")   # (Required) 
      target_disk_type              = lookup(managed_disk.value, "target_disk_type")           # (Required) possible values: Standard_LRS | Premium_LRS | StandardSSD_LRS | UltraSSD_LRS
      target_replica_disk_type      = lookup(managed_disk.value, "target_replica_disk_type")   # (Required) possible values: Standard_LRS | Premium_LRS | StandardSSD_LRS | UltraSSD_LRS
      target_disk_encryption_set_id = lookup(managed_disk.value, "target_disk_encryption_set_id", null)

      dynamic "target_disk_encryption" { # managed_disk.value.target_disk_encryption
        for_each = managed_disk.value.target_disk_encryption != null ? managed_disk.value.target_disk_encryption : []
        content {

          dynamic "disk_encryption_key" { # target_disk_encryption.value.disk_encryption_key
            for_each = target_disk_encryption.value.disk_encryption_key != null ? target_disk_encryption.value.disk_encryption_key : []
            content {
              secret_url = lookup(disk_encryption_key.value, "secret_url") # (Required) possible values: id | azurerm_key_vault_secret
              vault_id   = lookup(disk_encryption_key.value, "vault_id")   # (Required) possible values: id | azurerm_key_vault
            }
          }


          dynamic "key_encryption_key" { # target_disk_encryption.value.key_encryption_key
            for_each = target_disk_encryption.value.key_encryption_key != null ? target_disk_encryption.value.key_encryption_key : []
            content {
              key_url  = lookup(key_encryption_key.value, "key_url")  # (Required) possible values: id | azurerm_key_vault_key
              vault_id = lookup(key_encryption_key.value, "vault_id") # (Required) possible values: id | azurerm_key_vault
            }
          }

        }
      }

    }
  }


  dynamic "unmanaged_disk" { # var.unmanaged_disk
    for_each = var.unmanaged_disk != null ? var.unmanaged_disk : []
    content {
      disk_uri                   = lookup(unmanaged_disk.value, "disk_uri")                   # (Required) 
      staging_storage_account_id = lookup(unmanaged_disk.value, "staging_storage_account_id") # (Required) 
      target_storage_account_id  = lookup(unmanaged_disk.value, "target_storage_account_id")  # (Required) 
    }
  }

  target_edge_zone                          = var.target_edge_zone
  target_proximity_placement_group_id       = var.target_proximity_placement_group_id
  target_boot_diagnostic_storage_account_id = var.target_boot_diagnostic_storage_account_id
  target_capacity_reservation_group_id      = var.target_capacity_reservation_group_id
  target_virtual_machine_scale_set_id       = var.target_virtual_machine_scale_set_id
  target_network_id                         = var.target_network_id
  test_network_id                           = var.test_network_id

  dynamic "network_interface" { # var.network_interface
    for_each = var.network_interface != null ? var.network_interface : []
    content {
      source_network_interface_id        = lookup(network_interface.value, "source_network_interface_id", null)
      target_static_ip                   = lookup(network_interface.value, "target_static_ip", null)
      target_subnet_name                 = lookup(network_interface.value, "target_subnet_name", null)
      recovery_public_ip_address_id      = lookup(network_interface.value, "recovery_public_ip_address_id", null)
      failover_test_static_ip            = lookup(network_interface.value, "failover_test_static_ip", null)
      failover_test_subnet_name          = lookup(network_interface.value, "failover_test_subnet_name", null)
      failover_test_public_ip_address_id = lookup(network_interface.value, "failover_test_public_ip_address_id", null)
    }
  }

  multi_vm_group_name = var.multi_vm_group_name
}
