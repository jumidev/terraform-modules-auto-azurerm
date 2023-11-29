# azurerm_proximity_placement_group

Manages a proximity placement group for virtual machines, virtual machine scale sets and availability sets.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the proximity placement group. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the availability set. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.allowed_vm_sizes** | string | False | -  |  -  | Specifies the supported sizes of Virtual Machines that can be created in the Proximity Placement Group. | 
| **var.zone** | string | False | -  |  -  | Specifies the supported zone of the Proximity Placement Group. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **allowed_vm_sizes** | string  | - | 
| **zone** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Proximity Placement Group. | 