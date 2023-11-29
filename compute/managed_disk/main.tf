data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_managed_disk" "this" {

  ########################################
  # required vars
  ########################################
  name                 = var.name
  resource_group_name  = data.azurerm_resource_group.this.name
  location             = var.location
  storage_account_type = var.storage_account_type
  create_option        = var.create_option

  ########################################
  # optional vars
  ########################################
  disk_encryption_set_id = var.disk_encryption_set_id
  disk_iops_read_write   = var.disk_iops_read_write
  disk_mbps_read_write   = var.disk_mbps_read_write
  disk_iops_read_only    = var.disk_iops_read_only
  disk_mbps_read_only    = var.disk_mbps_read_only
  upload_size_bytes      = var.upload_size_bytes
  disk_size_gb           = var.disk_size_gb
  edge_zone              = var.edge_zone

  dynamic "encryption_settings" { # var.encryption_settings
    for_each = var.encryption_settings != null ? var.encryption_settings : []
    content {

      dynamic "disk_encryption_key" { # encryption_settings.value.disk_encryption_key
        for_each = encryption_settings.value.disk_encryption_key != null ? encryption_settings.value.disk_encryption_key : []
        content {
          secret_url      = lookup(disk_encryption_key.value, "secret_url")      # (Required) 
          source_vault_id = lookup(disk_encryption_key.value, "source_vault_id") # (Required) 
        }
      }


      dynamic "key_encryption_key" { # encryption_settings.value.key_encryption_key
        for_each = encryption_settings.value.key_encryption_key != null ? encryption_settings.value.key_encryption_key : []
        content {
          key_url         = lookup(key_encryption_key.value, "key_url")         # (Required) 
          source_vault_id = lookup(key_encryption_key.value, "source_vault_id") # (Required) 
        }
      }

    }
  }

  hyper_v_generation                = var.hyper_v_generation
  image_reference_id                = var.image_reference_id
  gallery_image_reference_id        = var.gallery_image_reference_id
  logical_sector_size               = var.logical_sector_size               # Default: 4096
  optimized_frequent_attach_enabled = var.optimized_frequent_attach_enabled # Default: False
  performance_plus_enabled          = var.performance_plus_enabled          # Default: False
  os_type                           = var.os_type
  source_resource_id                = var.source_resource_id
  source_uri                        = var.source_uri
  storage_account_id                = var.storage_account_id
  tier                              = var.tier
  max_shares                        = var.max_shares
  trusted_launch_enabled            = var.trusted_launch_enabled
  security_type                     = var.security_type
  secure_vm_disk_encryption_set_id  = var.secure_vm_disk_encryption_set_id
  on_demand_bursting_enabled        = var.on_demand_bursting_enabled
  tags                              = var.tags
  zone                              = var.zone
  network_access_policy             = var.network_access_policy
  disk_access_id                    = var.disk_access_id
  public_network_access_enabled     = var.public_network_access_enabled # Default: True
}
