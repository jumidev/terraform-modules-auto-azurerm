# azurerm_availability_set

Manages an Availability Set for Virtual Machines.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  Specifies the name of the availability set. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the resource group in which to create the availability set. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.platform_update_domain_count** | int | False | `5`  |  -  |  Specifies the number of update domains that are used. Defaults to `5`. Changing this forces a new resource to be created. | 
| **var.platform_fault_domain_count** | int | False | `3`  |  -  |  Specifies the number of fault domains that are used. Defaults to `3`. Changing this forces a new resource to be created. | 
| **var.proximity_placement_group_id** | string | False | -  |  -  |  The ID of the Proximity Placement Group to which this Virtual Machine should be assigned. Changing this forces a new resource to be created. | 
| **var.managed** | bool | False | `True`  |  `true`, `false`  |  Specifies whether the availability set is managed or not. Possible values are `true` (to specify aligned) or `false` (to specify classic). Default is `true`. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **platform_update_domain_count** | int  | - | 
| **platform_fault_domain_count** | int  | - | 
| **proximity_placement_group_id** | string  | - | 
| **managed** | bool  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Availability Set. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "compute/availability_set" 
}

inputs = {
   name = "name of availability_set" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```