# azurerm_disk_pool_iscsi_target

Manages an iSCSI Target.!> **Note:** Azure are officially [halting](https://learn.microsoft.com/en-us/azure/azure-vmware/attach-disk-pools-to-azure-vmware-solution-hosts?tabs=azure-cli) the preview of Azure Disk Pools, and it **will not** be made generally available. New customers will not be able to register the Microsoft.StoragePool resource provider on their subscription and deploy new Disk Pools. Existing subscriptions registered with Microsoft.StoragePool may continue to deploy and manage disk pools for the time being.!> **Note:** Each Disk Pool can have a maximum of 1 iSCSI Target.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "disks/disk_pool_iscsi_target" 
}

inputs = {
   acl_mode = "acl_mode of disk_pool_iscsi_target" 
   disks_pool_id = "disks_pool_id of disk_pool_iscsi_target" 
   name = "name of disk_pool_iscsi_target" 
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
| **var.acl_mode** | string | True | Mode for Target connectivity. The only supported value is `Dynamic` for now. Changing this forces a new iSCSI Target to be created. | 
| **var.disks_pool_id** | string | True | The ID of the Disk Pool. Changing this forces a new iSCSI Target to be created. | 
| **var.name** | string | True | The name of the iSCSI Target. The name can only contain lowercase letters, numbers, periods, or hyphens, and length should between [5-223]. Changing this forces a new iSCSI Target to be created. | 
| **var.target_iqn** | string | False | ISCSI Target IQN (iSCSI Qualified Name); example: `iqn.2005-03.org.iscsi:server`. IQN should follow the format `iqn.yyyy-mm.<abc>.<pqr>[:xyz]`; supported characters include alphanumeric characters in lower case, hyphen, dot and colon, and the length should between `4` and `223`. Changing this forces a new iSCSI Target to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the iSCSI Target. | 
| **endpoints** | string | No  | List of private IPv4 addresses to connect to the iSCSI Target. | 
| **port** | string | No  | The port used by iSCSI Target portal group. | 

Additionally, all variables are provided as outputs.
