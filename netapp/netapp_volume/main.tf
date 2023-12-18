data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_netapp_volume" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  account_name        = var.account_name
  volume_path         = var.volume_path
  pool_name           = var.pool_name
  service_level       = var.service_level
  subnet_id           = var.subnet_id
  storage_quota_in_gb = var.storage_quota_in_gb

  ########################################
  # optional vars
  ########################################
  zone                             = var.zone
  azure_vmware_data_store_enabled  = var.azure_vmware_data_store_enabled # Default: False
  protocols                        = var.protocols                       # Default: NFSv3
  security_style                   = var.security_style                  # Default: ntfs
  network_features                 = var.network_features                # Default: Basic
  snapshot_directory_visible       = var.snapshot_directory_visible
  create_from_snapshot_resource_id = var.create_from_snapshot_resource_id

  dynamic "data_protection_replication" { # var.data_protection_replication
    for_each = var.data_protection_replication != null ? var.data_protection_replication : []
    content {
      endpoint_type             = lookup(data_protection_replication.value, "endpoint_type", "dst")
      remote_volume_location    = lookup(data_protection_replication.value, "remote_volume_location")    # (Required) 
      remote_volume_resource_id = lookup(data_protection_replication.value, "remote_volume_resource_id") # (Required) 
      replication_frequency     = lookup(data_protection_replication.value, "replication_frequency")     # (Required) 
    }
  }


  dynamic "data_protection_snapshot_policy" { # var.data_protection_snapshot_policy
    for_each = var.data_protection_snapshot_policy != null ? var.data_protection_snapshot_policy : []
    content {
      snapshot_policy_id = lookup(data_protection_snapshot_policy.value, "snapshot_policy_id") # (Required) 
    }
  }

  export_policy_rule  = var.export_policy_rule
  throughput_in_mibps = var.throughput_in_mibps
  tags                = var.tags
}

##############################################################################################
# optional azurerm_vmware_netapp_volume_attachment 
##############################################################################################
resource "azurerm_vmware_netapp_volume_attachment" "this" {
  count             = var.vmware_netapp_volume_attachment != null ? 1 : 0
  name              = lookup(var.vmware_netapp_volume_attachment, "name")
  netapp_volume_id  = azurerm_netapp_volume.this.id
  vmware_cluster_id = lookup(var.vmware_netapp_volume_attachment, "vmware_cluster_id")
}
