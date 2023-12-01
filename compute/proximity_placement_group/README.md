# azurerm_proximity_placement_group

Manages a proximity placement group for virtual machines, virtual machine scale sets and availability sets.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "compute/proximity_placement_group" 
}

inputs = {
   name = "name of proximity_placement_group" 
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
| **name** | string |  Specifies the name of the proximity placement group. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which to create the availability set. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **allowed_vm_sizes** | string |  Specifies the supported sizes of Virtual Machines that can be created in the Proximity Placement Group. | 
| **zone** | string |  Specifies the supported zone of the Proximity Placement Group. Changing this forces a new resource to be created. | 
| **tags** | map |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Proximity Placement Group. | 

Additionally, all variables are provided as outputs.
