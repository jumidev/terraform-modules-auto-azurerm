# azurerm_disk_pool

Manages a Disk Pool.!> **Note:** Azure are officially [halting](https://learn.microsoft.com/en-us/azure/azure-vmware/attach-disk-pools-to-azure-vmware-solution-hosts?tabs=azure-cli) the preview of Azure Disk Pools, and it **will not** be made generally available. New customers will not be able to register the Microsoft.StoragePool resource provider on their subscription and deploy new Disk Pools. Existing subscriptions registered with Microsoft.StoragePool may continue to deploy and manage disk pools for the time being.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "disks/disk_pool"   
}

inputs = {
   name = "The name of the Disk Pool"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   zones = "Specifies a list of Availability Zones in which this Disk Pool should be located..."   
   sku_name = "The SKU of the Disk Pool"   
   # subnet_id → set in tfstate_inputs
}

tfstate_inputs = {
   subnet_id = "path/to/subnet_component:id"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```
## Optional associated resource

| `tfstate_input` variable | Information |
| -------- | ----------- |
| **managed_disk_id** | If set to a valid `azurerm_managed_disk` `id`, makes a **azurerm_disk_pool_managed_disk_attachment** - Manages a Disk Pool Managed Disk Attachment.!> **Note:** Azure are officially [halting](https://learn.microsoft.com/en-us/azure/azure-vmware/attach-disk-pools-to-azure-vmware-solution-hosts?tabs=azure-cli) the preview of Azure Disk Pools, and it **will not** be made generally available. New customers will not be able to register the Microsoft.StoragePool resource provider on their subscription and deploy new Disk Pools. Existing subscriptions registered with Microsoft.StoragePool may continue to deploy and manage disk pools for the time being.~> **Note:** Must be either a premium SSD, standard SSD, or an ultra disk in the same region and availability zone as the disk pool.~> **Note:** Ultra disks must have a disk sector size of 512 bytes.~> **Note:** Must be a shared disk, with a maxShares value of two or greater.~> **Note:** You must provide the StoragePool resource provider RBAC permissions to the disks that will be added to the disk pool.|

Example associated resources in a `tfstate_inputs` block:

```hcl
tfstate_inputs = {
   managed_disk_id = "path/to/managed_disk_component:id"
}
```


## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  The name of the Disk Pool. Changing this forces a new Disk Pool to be created. | 
| **resource_group_name** | string |  -  |  The name of the Resource Group where the Disk Pool should exist. Changing this forces a new Disk Pool to be created. | 
| **location** | string |  -  |  The Azure Region where the Disk Pool should exist. Changing this forces a new Disk Pool to be created. | 
| **zones** | string |  -  |  Specifies a list of Availability Zones in which this Disk Pool should be located. Changing this forces a new Disk Pool to be created. | 
| **sku_name** | string |  `Basic_B1`, `Standard_S1`, `Premium_P1`  |  The SKU of the Disk Pool. Possible values are `Basic_B1`, `Standard_S1` and `Premium_P1`. Changing this forces a new Disk Pool to be created. | 
| **subnet_id** | string |  -  |  The ID of the Subnet where the Disk Pool should be created. Changing this forces a new Disk Pool to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **tags** | map |  A mapping of tags which should be assigned to the Disk Pool. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Disk Pool. | 

Additionally, all variables are provided as outputs.
