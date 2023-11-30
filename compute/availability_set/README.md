# azurerm_availability_set

Manages an Availability Set for Virtual Machines.

## Example minimal component.hclt

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

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.name** | string  Specifies the name of the availability set. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string  The name of the resource group in which to create the availability set. Changing this forces a new resource to be created. | 
| **var.location** | string  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **var.platform_update_domain_count** | int  `5`  |  -  |  Specifies the number of update domains that are used. Defaults to `5`. Changing this forces a new resource to be created. | 
| **var.platform_fault_domain_count** | int  `3`  |  -  |  Specifies the number of fault domains that are used. Defaults to `3`. Changing this forces a new resource to be created. | 
| **var.proximity_placement_group_id** | string  -  |  -  |  The ID of the Proximity Placement Group to which this Virtual Machine should be assigned. Changing this forces a new resource to be created. | 
| **var.managed** | bool  `True`  |  `true`, `false`  |  Specifies whether the availability set is managed or not. Possible values are `true` (to specify aligned) or `false` (to specify classic). Default is `true`. Changing this forces a new resource to be created. | 
| **var.tags** | map  -  |  -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Availability Set. | 

Additionally, all variables are provided as outputs.
