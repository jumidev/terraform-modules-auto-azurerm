# azurerm_maintenance_assignment_dedicated_host

Manages a maintenance assignment to Dedicated Host.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "maintenance/maintenance_assignment_dedicated_host"   
}

inputs = {
   location = "${location}"   
   # maintenance_configuration_id → set in component_inputs
   # dedicated_host_id → set in component_inputs
}

component_inputs = {
   maintenance_configuration_id = "path/to/maintenance_configuration_component:id"   
   dedicated_host_id = "path/to/dedicated_host_component:id"   
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
| **dedicated_host_id** | string |  Specifies the Dedicated Host ID to which the Maintenance Configuration will be assigned. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Maintenance Assignment. | 

Additionally, all variables are provided as outputs.
