# azurerm_availability_set

Manages an Availability Set for Virtual Machines.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the availability set. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the availability set. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **platform_update_domain_count** | int | False | `5`  |  -  | Specifies the number of update domains that are used. Defaults to `5`. Changing this forces a new resource to be created. | 
| **platform_fault_domain_count** | int | False | `3`  |  -  | Specifies the number of fault domains that are used. Defaults to `3`. Changing this forces a new resource to be created. | 
| **proximity_placement_group_id** | string | False | -  |  -  | The ID of the Proximity Placement Group to which this Virtual Machine should be assigned. Changing this forces a new resource to be created. | 
| **managed** | bool | False | `True`  |  `true`, `false`  | Specifies whether the availability set is managed or not. Possible values are `true` (to specify aligned) or `false` (to specify classic). Default is `true`. Changing this forces a new resource to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

