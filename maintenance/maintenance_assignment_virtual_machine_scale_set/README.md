# azurerm_maintenance_assignment_virtual_machine_scale_set

Manages a maintenance assignment to a virtual machine scale set.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "maintenance/maintenance_assignment_virtual_machine_scale_set"   
}

inputs = {
   location = "${location}"   
   # maintenance_configuration_id → set in tfstate_inputs
   # virtual_machine_scale_set_id → set in tfstate_inputs
}

tfstate_inputs = {
   maintenance_configuration_id = "path/to/maintenance_configuration_component:id"   
   virtual_machine_scale_set_id = "path/to/virtual_machine_scale_set_component:id"   
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
| **location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **maintenance_configuration_id** | string |  Specifies the ID of the Maintenance Configuration Resource. Changing this forces a new resource to be created. | 
| **virtual_machine_scale_set_id** | string |  Specifies the Virtual Machine Scale Set ID to which the Maintenance Configuration will be assigned. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Maintenance Assignment. | 

Additionally, all variables are provided as outputs.
