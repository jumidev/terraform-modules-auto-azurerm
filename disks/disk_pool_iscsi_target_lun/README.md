# azurerm_disk_pool_iscsi_target_lun

Manages an iSCSI Target lun.!> **Note:** Azure are officially [halting](https://learn.microsoft.com/en-us/azure/azure-vmware/attach-disk-pools-to-azure-vmware-solution-hosts?tabs=azure-cli) the preview of Azure Disk Pools, and it **will not** be made generally available. New customers will not be able to register the Microsoft.StoragePool resource provider on their subscription and deploy new Disk Pools. Existing subscriptions registered with Microsoft.StoragePool may continue to deploy and manage disk pools for the time being.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.iscsi_target_id** | string | True | The ID of the iSCSI Target. Changing this forces a new iSCSI Target LUN to be created. | 
| **var.disk_pool_managed_disk_attachment_id** | string | True | The ID of the `azurerm_disk_pool_managed_disk_attachment`. Changing this forces a new iSCSI Target LUN to be created. | 
| **var.name** | string | True | User defined name for iSCSI LUN. Supported characters include uppercase letters, lowercase letters, numbers, periods, underscores or hyphens. Name should end with an alphanumeric character. The length must be between `1` and `90`. Changing this forces a new iSCSI Target LUN to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **iscsi_target_id** | string  | - | 
| **disk_pool_managed_disk_attachment_id** | string  | - | 
| **name** | string  | - | 
| **id** | string  | The ID of the iSCSI Target LUN. | 
| **lun** | int  | The Logical Unit Number of the iSCSI Target LUN. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "disks/disk_pool_iscsi_target_lun" 
}

inputs = {
   iscsi_target_id = "iscsi_target_id of disk_pool_iscsi_target_lun" 
   disk_pool_managed_disk_attachment_id = "disk_pool_managed_disk_attachment_id of disk_pool_iscsi_target_lun" 
   name = "name of disk_pool_iscsi_target_lun" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```