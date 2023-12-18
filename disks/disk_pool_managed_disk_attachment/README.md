# azurerm_disk_pool_managed_disk_attachment

Manages a Disk Pool Managed Disk Attachment.!> **Note:** Azure are officially [halting](https://learn.microsoft.com/en-us/azure/azure-vmware/attach-disk-pools-to-azure-vmware-solution-hosts?tabs=azure-cli) the preview of Azure Disk Pools, and it **will not** be made generally available. New customers will not be able to register the Microsoft.StoragePool resource provider on their subscription and deploy new Disk Pools. Existing subscriptions registered with Microsoft.StoragePool may continue to deploy and manage disk pools for the time being.~> **Note:** Must be either a premium SSD, standard SSD, or an ultra disk in the same region and availability zone as the disk pool.~> **Note:** Ultra disks must have a disk sector size of 512 bytes.~> **Note:** Must be a shared disk, with a maxShares value of two or greater.~> **Note:** You must provide the StoragePool resource provider RBAC permissions to the disks that will be added to the disk pool.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "disks/disk_pool_managed_disk_attachment"   
}

inputs = {
   # disk_pool_id → set in tfstate_inputs
   # managed_disk_id → set in tfstate_inputs
}

tfstate_inputs = {
   disk_pool_id = "path/to/disk_pool_component:id"   
   managed_disk_id = "path/to/managed_disk_component:id"   
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
| **disk_pool_id** | string |  The ID of the Disk Pool. Changing this forces a new Disk Pool Managed Disk Attachment to be created. | 
| **managed_disk_id** | string |  The ID of the Managed Disk. Changing this forces a new Disks Pool Managed Disk Attachment to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Disk Pool Managed Disk Attachment. | 

Additionally, all variables are provided as outputs.
