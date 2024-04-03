# azurerm_disk_pool



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
   # subnet_id → set in component_inputs
}

component_inputs = {
   subnet_id = "path/to/subnet_component:id"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```
## Associated component


### `managed_disk_id` 

- If set to a valid `azurerm_managed_disk` `id`, makes a **azurerm_disk_pool_managed_disk_attachment** - 

Example component snippet (**See also** [compute/managed_disk](https://github.com/jumidev/terraform-modules-auto-azurerm/tree/master/compute/managed_disk))

```hcl
component_inputs = {
   managed_disk_id = "path/to/managed_disk_component:id"
}
```


## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  The name of the Disk Pool. Changing this forces a new Disk Pool to be created. | 
| **resource_group_name** | string |  -  |  The name of the Resource Group where the Disk Pool should exist. Changing this forces a new Disk Pool to be created. | 
| **location** | string |  -  |  The Azure Region where the Disk Pool should exist. Changing this forces a new Disk Pool to be created. | 
| **zones** | list |  -  |  Specifies a list of Availability Zones in which this Disk Pool should be located. Changing this forces a new Disk Pool to be created. | 
| **sku_name** | string |  `Basic_B1`, `Standard_S1`, `Premium_P1`  |  The SKU of the Disk Pool. Possible values are `Basic_B1`, `Standard_S1` and `Premium_P1`. Changing this forces a new Disk Pool to be created. | 
| **subnet_id** | string |  -  |  The ID of the Subnet where the Disk Pool should be created. Changing this forces a new Disk Pool to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **tags** | map |  A mapping of tags which should be assigned to the Disk Pool. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **tags** | map | No  | A mapping of tags which should be assigned to the Disk Pool. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Disk Pool. | 

Additionally, all variables are provided as outputs.
