# azurerm_netapp_volume_group_sap_hana

Manages a Application Volume Group for SAP HANA application.>Note: This feature is intended to be used for SAP-HANA workloads only, with several requirements, please refer to [Understand Azure NetApp Files application volume group for SAP HANA](https://learn.microsoft.com/en-us/azure/azure-netapp-files/application-volume-group-introduction) document as the starting point to understand this feature before using it with Terraform.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "netapp/netapp_volume_group_sap_hana"   
}

inputs = {
   account_name = "Name of the account where the application volume group belong to..."   
   application_identifier = "The SAP System ID, maximum 3 characters, e"   
   group_description = "Volume group description"   
   location = "${location}"   
   name = "The name which should be used for this Application Volume Group..."   
   resource_group_name = "${resource_group}"   
   volume = {
      this_volume = {
         capacity_pool_id = "..."         
         protocols = "..."         
         # proximity_placement_group_id → (optional) set in tfstate_inputs
         security_style = "Possible values: ntfs | unix"         
         service_level = "Possible values: Premium | Standard | Ultra"         
         snapshot_directory_visible = "..."         
         storage_quota_in_gb = "..."         
         # subnet_id → set in tfstate_inputs
         throughput_in_mibps = "..."         
         volume_path = "..."         
         volume_spec_name = "Possible values: data | log | shared | data-backup | log-backup"         
         export_policy_rule = "..."         
      }
      
   }
   
}

tfstate_inputs = {
   volume.this_volume.proximity_placement_group_id = "path/to/proximity_placement_group_component:id"   
   volume.this_volume.subnet_id = "path/to/subnet_component:id"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **account_name** | string |  Name of the account where the application volume group belong to. Changing this forces a new Application Volume Group to be created and data will be lost. | 
| **application_identifier** | string |  The SAP System ID, maximum 3 characters, e.g. `SH9`. Changing this forces a new Application Volume Group to be created and data will be lost. | 
| **group_description** | string |  Volume group description. Changing this forces a new Application Volume Group to be created and data will be lost. | 
| **location** | string |  The Azure Region where the Application Volume Group should exist. Changing this forces a new Application Volume Group to be created and data will be lost. | 
| **name** | string |  The name which should be used for this Application Volume Group. Changing this forces a new Application Volume Group to be created and data will be lost. | 
| **resource_group_name** | string |  The name of the Resource Group where the Application Volume Group should exist. Changing this forces a new Application Volume Group to be created and data will be lost. | 
| **volume** | [block](#volume-block-structure) |  One or more `volume` blocks. | 

### `export_policy_rule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `allowed_clients` | string | Yes | - | A comma-sperated list of allowed client IPv4 addresses. |
| `nfsv3_enabled` | bool | Yes | - | Enables NFSv3. Please note that this cannot be enabled if volume has NFSv4.1 as its protocol. |
| `nfsv41_enabled` | bool | Yes | - | Enables NFSv4.1. Please note that this cannot be enabled if volume has NFSv3 as its protocol. |
| `root_access_enabled` | bool | No | True | Is root access permitted to this volume? Defaults to 'true'. |
| `rule_index` | number | Yes | - | The index number of the rule, must start at 1 and maximum 5. |
| `unix_read_only` | string | No | false. | Is the file system on unix read only? Defaults to 'false. |
| `unix_read_write` | bool | No | True | Is the file system on unix read and write? Defaults to 'true'. |

### `volume` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `capacity_pool_id` | string | Yes | - | The ID of the Capacity Pool. Changing this forces a new Application Volume Group to be created and data will be lost. |
| `name` | string | Yes | - | The name which should be used for this volume. Changing this forces a new Application Volume Group to be created and data will be lost. |
| `protocols` | string | Yes | - | The target volume protocol expressed as a list. Changing this forces a new Application Volume Group to be created and data will be lost. Supported values for Application Volume Group include 'NFSv3' or 'NFSv4.1', multi-protocol is not supported and there are certain rules on which protocol is supporteed per volume spec, please check [Configure application volume groups for the SAP HANA REST API](https://learn.microsoft.com/en-us/azure/azure-netapp-files/configure-application-volume-group-sap-hana-api) document for details. |
| `proximity_placement_group_id` | string | No | - | The ID of the proximity placement group. Changing this forces a new Application Volume Group to be created and data will be lost. For SAP-HANA application, it is required to have PPG enabled so Azure NetApp Files can pin the volumes next to your compute resources, please check [Requirements and considerations for application volume group for SAP HANA](https://learn.microsoft.com/en-us/azure/azure-netapp-files/application-volume-group-considerations) for details and other requirements. |
| `security_style` | string | Yes | - | Volume security style. Possible values are 'ntfs' and 'unix'. Changing this forces a new Application Volume Group to be created and data will be lost. |
| `service_level` | string | Yes | - | Volume security style. Possible values are 'Premium', 'Standard' and 'Ultra'. Changing this forces a new Application Volume Group to be created and data will be lost. |
| `snapshot_directory_visible` | bool | Yes | - | Specifies whether the .snapshot (NFS clients) path of a volume is visible. Changing this forces a new Application Volume Group to be created and data will be lost. |
| `storage_quota_in_gb` | number | Yes | - | The maximum Storage Quota allowed for a file system in Gigabytes. |
| `subnet_id` | string | Yes | - | The ID of the Subnet the NetApp Volume resides in, which must have the 'Microsoft.NetApp/volumes' delegation. Changing this forces a new Application Volume Group to be created and data will be lost. |
| `throughput_in_mibps` | string | Yes | - | Throughput of this volume in Mibps. |
| `volume_path` | string | Yes | - | A unique file path for the volume. Changing this forces a new Application Volume Group to be created and data will be lost. |
| `volume_spec_name` | string | Yes | - | Volume specification name. Possible values are 'data', 'log', 'shared', 'data-backup' and 'log-backup'. Changing this forces a new Application Volume Group to be created and data will be lost. |
| `tags` | map | No | - | A mapping of tags which should be assigned to the Application Volume Group. |
| `export_policy_rule` | [block](#export_policy_rule-block-structure) | Yes | - | One or more 'export_policy_rule' blocks. |
| `data_protection_replication` | [block](#data_protection_replication-block-structure) | No | - | A 'data_protection_replication' block. Changing this forces a new Application Volume Group to be created and data will be lost. |
| `data_protection_snapshot_policy` | [block](#data_protection_snapshot_policy-block-structure) | No | - | A 'data_protection_snapshot_policy' block. |

### `data_protection_replication` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `remote_volume_location` | string | Yes | - | Location of the primary volume. |
| `remote_volume_resource_id` | string | Yes | - | Resource ID of the primary volume. |
| `replication_frequency` | string | Yes | - | eplication frequency. Possible values are '10minutes', 'daily' and 'hourly'. |
| `endpoint_type` | string | No | dst | The endpoint type. Possible values are 'dst' and 'src'. Defaults to 'dst'. |

### `data_protection_snapshot_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `snapshot_policy_id` | string | Yes | - | Resource ID of the snapshot policy to apply to the volume. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Application Volume Group. | 

Additionally, all variables are provided as outputs.
