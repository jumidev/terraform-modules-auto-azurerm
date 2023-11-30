# azurerm_netapp_volume_group_sap_hana

Manages a Application Volume Group for SAP HANA application.>Note: This feature is intended to be used for SAP-HANA workloads only, with several requirements, please refer to [Understand Azure NetApp Files application volume group for SAP HANA](https://learn.microsoft.com/en-us/azure/azure-netapp-files/application-volume-group-introduction) document as the starting point to understand this feature before using it with Terraform.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "netapp/netapp_volume_group_sap_hana" 
}

inputs = {
   account_name = "account_name of netapp_volume_group_sap_hana" 
   application_identifier = "application_identifier of netapp_volume_group_sap_hana" 
   group_description = "group_description of netapp_volume_group_sap_hana" 
   location = "${location}" 
   name = "name of netapp_volume_group_sap_hana" 
   resource_group_name = "${resource_group}" 
   volume = {
      example_volume = {
         ...
      }
  
   }
 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.account_name** | string | True | Name of the account where the application volume group belong to. Changing this forces a new Application Volume Group to be created and data will be lost. | 
| **var.application_identifier** | string | True | The SAP System ID, maximum 3 characters, e.g. `SH9`. Changing this forces a new Application Volume Group to be created and data will be lost. | 
| **var.group_description** | string | True | Volume group description. Changing this forces a new Application Volume Group to be created and data will be lost. | 
| **var.location** | string | True | The Azure Region where the Application Volume Group should exist. Changing this forces a new Application Volume Group to be created and data will be lost. | 
| **var.name** | string | True | The name which should be used for this Application Volume Group. Changing this forces a new Application Volume Group to be created and data will be lost. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the Application Volume Group should exist. Changing this forces a new Application Volume Group to be created and data will be lost. | 
| **var.volume** | block | True | One or more `volume` blocks. | 

### `volume` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `capacity_pool_id` | string | Yes | - | The ID of the Capacity Pool. Changing this forces a new Application Volume Group to be created and data will be lost. |
| `protocols` | string | Yes | - | The target volume protocol expressed as a list. Changing this forces a new Application Volume Group to be created and data will be lost. Supported values for Application Volume Group include 'NFSv3' or 'NFSv4.1', multi-protocol is not supported and there are certain rules on which protocol is supporteed per volume spec, please check [Configure application volume groups for the SAP HANA REST API](https://learn.microsoft.com/en-us/azure/azure-netapp-files/configure-application-volume-group-sap-hana-api) document for details. |
| `proximity_placement_group_id` | string | No | - | The ID of the proximity placement group. Changing this forces a new Application Volume Group to be created and data will be lost. For SAP-HANA application, it is required to have PPG enabled so Azure NetApp Files can pin the volumes next to your compute resources, please check [Requirements and considerations for application volume group for SAP HANA](https://learn.microsoft.com/en-us/azure/azure-netapp-files/application-volume-group-considerations) for details and other requirements. |
| `security_style` | string | Yes | - | Volume security style. Possible values are 'ntfs' and 'unix'. Changing this forces a new Application Volume Group to be created and data will be lost. |
| `service_level` | string | Yes | - | Volume security style. Possible values are 'Premium', 'Standard' and 'Ultra'. Changing this forces a new Application Volume Group to be created and data will be lost. |
| `snapshot_directory_visible` | bool | Yes | - | Specifies whether the .snapshot (NFS clients) path of a volume is visible. Changing this forces a new Application Volume Group to be created and data will be lost. |
| `storage_quota_in_gb` | int | Yes | - | The maximum Storage Quota allowed for a file system in Gigabytes. |
| `subnet_id` | string | Yes | - | The ID of the Subnet the NetApp Volume resides in, which must have the 'Microsoft.NetApp/volumes' delegation. Changing this forces a new Application Volume Group to be created and data will be lost. |
| `throughput_in_mibps` | string | Yes | - | Throughput of this volume in Mibps. |
| `volume_path` | string | Yes | - | A unique file path for the volume. Changing this forces a new Application Volume Group to be created and data will be lost. |
| `volume_spec_name` | string | Yes | - | Volume specification name. Possible values are 'data', 'log', 'shared', 'data-backup' and 'log-backup'. Changing this forces a new Application Volume Group to be created and data will be lost. |
| `tags` | map | No | - | A mapping of tags which should be assigned to the Application Volume Group. |
| `export_policy_rule` | block | Yes | - | One or more 'export_policy_rule' blocks. |
| `data_protection_replication` | block | No | - | A 'data_protection_replication' block. Changing this forces a new Application Volume Group to be created and data will be lost. |
| `data_protection_snapshot_policy` | block | No | - | A 'data_protection_snapshot_policy' block. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Application Volume Group. | 

Additionally, all variables are provided as outputs.
