# azurerm_maintenance_assignment_dedicated_host

Manages a maintenance assignment to Dedicated Host.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "maintenance/maintenance_assignment_dedicated_host" 
}

inputs = {
   location = "${location}" 
   maintenance_configuration_id = "maintenance_configuration_id of maintenance_assignment_dedicated_host" 
   dedicated_host_id = "dedicated_host_id of maintenance_assignment_dedicated_host" 
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
| **var.location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.maintenance_configuration_id** | string |  Specifies the ID of the Maintenance Configuration Resource. Changing this forces a new resource to be created. | 
| **var.dedicated_host_id** | string |  Specifies the Dedicated Host ID to which the Maintenance Configuration will be assigned. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Maintenance Assignment. | 

Additionally, all variables are provided as outputs.
