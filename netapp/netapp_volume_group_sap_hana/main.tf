data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_netapp_volume_group_sap_hana" "this" {

  ########################################
  # required vars
  ########################################
  account_name           = var.account_name
  application_identifier = var.application_identifier
  group_description      = var.group_description
  location               = var.location
  name                   = var.name
  resource_group_name    = data.azurerm_resource_group.this.name

  dynamic "volume" { # var.volume
    for_each = var.volume != null ? var.volume : []
    content {
      capacity_pool_id             = lookup(volume.value, "capacity_pool_id") # (Required) 
      name                         = volume.key
      protocols                    = lookup(volume.value, "protocols") # (Required) 
      proximity_placement_group_id = lookup(volume.value, "proximity_placement_group_id", null)
      security_style               = lookup(volume.value, "security_style")             # (Required) possible values: ntfs | unix
      service_level                = lookup(volume.value, "service_level")              # (Required) possible values: Premium | Standard | Ultra
      snapshot_directory_visible   = lookup(volume.value, "snapshot_directory_visible") # (Required) 
      storage_quota_in_gb          = lookup(volume.value, "storage_quota_in_gb")        # (Required) 
      subnet_id                    = lookup(volume.value, "subnet_id")                  # (Required) 
      throughput_in_mibps          = lookup(volume.value, "throughput_in_mibps")        # (Required) 
      volume_path                  = lookup(volume.value, "volume_path")                # (Required) 
      volume_spec_name             = lookup(volume.value, "volume_spec_name")           # (Required) possible values: data | log | shared | data-backup | log-backup
      tags                         = lookup(volume.value, "tags", null)

      dynamic "export_policy_rule" { # volume.value.export_policy_rule
        for_each = volume.value.export_policy_rule != null ? volume.value.export_policy_rule : []
        content {
          allowed_clients     = lookup(export_policy_rule.value, "allowed_clients") # (Required) 
          nfsv3_enabled       = lookup(export_policy_rule.value, "nfsv3_enabled")   # (Required) 
          nfsv41_enabled      = lookup(export_policy_rule.value, "nfsv41_enabled")  # (Required) 
          root_access_enabled = lookup(export_policy_rule.value, "root_access_enabled", true)
          rule_index          = lookup(export_policy_rule.value, "rule_index") # (Required) 
          unix_read_only      = lookup(export_policy_rule.value, "unix_read_only", "false.")
          unix_read_write     = lookup(export_policy_rule.value, "unix_read_write", true)
        }
      }


      dynamic "data_protection_replication" { # volume.value.data_protection_replication
        for_each = volume.value.data_protection_replication != null ? volume.value.data_protection_replication : []
        content {
          remote_volume_location    = lookup(data_protection_replication.value, "remote_volume_location")    # (Required) 
          remote_volume_resource_id = lookup(data_protection_replication.value, "remote_volume_resource_id") # (Required) 
          replication_frequency     = lookup(data_protection_replication.value, "replication_frequency")     # (Required) possible values: 10minutes | daily | hourly
          endpoint_type             = lookup(data_protection_replication.value, "endpoint_type", "dst")
        }
      }


      dynamic "data_protection_snapshot_policy" { # volume.value.data_protection_snapshot_policy
        for_each = volume.value.data_protection_snapshot_policy != null ? volume.value.data_protection_snapshot_policy : []
        content {
          snapshot_policy_id = lookup(data_protection_snapshot_policy.value, "snapshot_policy_id") # (Required) 
        }
      }

    }
  }

}
