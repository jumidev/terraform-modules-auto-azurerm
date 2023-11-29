# azurerm_disk_pool

Manages a Disk Pool.!> **Note:** Azure are officially [halting](https://learn.microsoft.com/en-us/azure/azure-vmware/attach-disk-pools-to-azure-vmware-solution-hosts?tabs=azure-cli) the preview of Azure Disk Pools, and it **will not** be made generally available. New customers will not be able to register the Microsoft.StoragePool resource provider on their subscription and deploy new Disk Pools. Existing subscriptions registered with Microsoft.StoragePool may continue to deploy and manage disk pools for the time being.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name of the Disk Pool. Changing this forces a new Disk Pool to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the Resource Group where the Disk Pool should exist. Changing this forces a new Disk Pool to be created. | 
| **var.location** | string | True | -  |  The Azure Region where the Disk Pool should exist. Changing this forces a new Disk Pool to be created. | 
| **var.zones** | string | True | -  |  Specifies a list of Availability Zones in which this Disk Pool should be located. Changing this forces a new Disk Pool to be created. | 
| **var.sku_name** | string | True | `Basic_B1`, `Standard_S1`, `Premium_P1`  |  The SKU of the Disk Pool. Possible values are `Basic_B1`, `Standard_S1` and `Premium_P1`. Changing this forces a new Disk Pool to be created. | 
| **var.subnet_id** | string | True | -  |  The ID of the Subnet where the Disk Pool should be created. Changing this forces a new Disk Pool to be created. | 
| **var.tags** | map | False | -  |  A mapping of tags which should be assigned to the Disk Pool. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **zones** | string  | - | 
| **sku_name** | string  | - | 
| **subnet_id** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Disk Pool. | 