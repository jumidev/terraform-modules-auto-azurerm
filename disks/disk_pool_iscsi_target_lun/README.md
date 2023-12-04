# azurerm_disk_pool_iscsi_target_lun

Manages an iSCSI Target lun.!> **Note:** Azure are officially [halting](https://learn.microsoft.com/en-us/azure/azure-vmware/attach-disk-pools-to-azure-vmware-solution-hosts?tabs=azure-cli) the preview of Azure Disk Pools, and it **will not** be made generally available. New customers will not be able to register the Microsoft.StoragePool resource provider on their subscription and deploy new Disk Pools. Existing subscriptions registered with Microsoft.StoragePool may continue to deploy and manage disk pools for the time being.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "disks/disk_pool_iscsi_target_lun" 
}

inputs = {
   iscsi_target_id = "iscsi_target_id of disk_pool_iscsi_target_lun" 
   # disk_pool_managed_disk_attachment_id → set in tfstate_inputs
   name = "name of disk_pool_iscsi_target_lun" 
}

tfstate_inputs = {
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
| **id** | string | No  | The ID of the iSCSI Target LUN. | 
| **lun** | int | No  | The Logical Unit Number of the iSCSI Target LUN. | 

Additionally, all variables are provided as outputs.
