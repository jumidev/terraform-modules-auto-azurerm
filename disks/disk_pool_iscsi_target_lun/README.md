# azurerm_disk_pool_iscsi_target_lun



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "disks/disk_pool_iscsi_target_lun"   
}
inputs = {
   iscsi_target_id = "The ID of the iSCSI Target"   
   # disk_pool_managed_disk_attachment_id → set in component_inputs
   name = "User defined name for iSCSI LUN"   
}
component_inputs = {
   disk_pool_managed_disk_attachment_id = "path/to/disk_pool_managed_disk_attachment_component:id"   
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
| **iscsi_target_id** | string |  The ID of the iSCSI Target. Changing this forces a new iSCSI Target LUN to be created. | 
| **disk_pool_managed_disk_attachment_id** | string |  The ID of the `azurerm_disk_pool_managed_disk_attachment`. Changing this forces a new iSCSI Target LUN to be created. | 
| **name** | string |  User defined name for iSCSI LUN. Supported characters include uppercase letters, lowercase letters, numbers, periods, underscores or hyphens. Name should end with an alphanumeric character. The length must be between `1` and `90`. Changing this forces a new iSCSI Target LUN to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **name** | string | No  | User defined name for iSCSI LUN. Supported characters include uppercase letters, lowercase letters, numbers, periods, underscores or hyphens. Name should end with an alphanumeric character. The length must be between `1` and `90`. Changing this forces a new iSCSI Target LUN to be created. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the iSCSI Target LUN. | 
| **lun** | number | No  | The Logical Unit Number of the iSCSI Target LUN. | 

Additionally, all variables are provided as outputs.
