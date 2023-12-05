# azurerm_disk_pool_iscsi_target

Manages an iSCSI Target.!> **Note:** Azure are officially [halting](https://learn.microsoft.com/en-us/azure/azure-vmware/attach-disk-pools-to-azure-vmware-solution-hosts?tabs=azure-cli) the preview of Azure Disk Pools, and it **will not** be made generally available. New customers will not be able to register the Microsoft.StoragePool resource provider on their subscription and deploy new Disk Pools. Existing subscriptions registered with Microsoft.StoragePool may continue to deploy and manage disk pools for the time being.!> **Note:** Each Disk Pool can have a maximum of 1 iSCSI Target.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "disks/disk_pool_iscsi_target"   
}

inputs = {
   acl_mode = "Mode for Target connectivity"   
   disks_pool_id = "The ID of the Disk Pool"   
   name = "The name of the iSCSI Target"   
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
| **acl_mode** | string |  Mode for Target connectivity. The only supported value is `Dynamic` for now. Changing this forces a new iSCSI Target to be created. | 
| **disks_pool_id** | string |  The ID of the Disk Pool. Changing this forces a new iSCSI Target to be created. | 
| **name** | string |  The name of the iSCSI Target. The name can only contain lowercase letters, numbers, periods, or hyphens, and length should between [5-223]. Changing this forces a new iSCSI Target to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **target_iqn** | string |  ISCSI Target IQN (iSCSI Qualified Name); example: `iqn.2005-03.org.iscsi:server`. IQN should follow the format `iqn.yyyy-mm.<abc>.<pqr>[:xyz]`; supported characters include alphanumeric characters in lower case, hyphen, dot and colon, and the length should between `4` and `223`. Changing this forces a new iSCSI Target to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the iSCSI Target. | 
| **endpoints** | string | No  | List of private IPv4 addresses to connect to the iSCSI Target. | 
| **port** | string | No  | The port used by iSCSI Target portal group. | 

Additionally, all variables are provided as outputs.
