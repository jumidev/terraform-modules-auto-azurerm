# azurerm_maintenance_assignment_dedicated_host

Manages a maintenance assignment to Dedicated Host.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.location** | string | True | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.maintenance_configuration_id** | string | True | Specifies the ID of the Maintenance Configuration Resource. Changing this forces a new resource to be created. | 
| **var.dedicated_host_id** | string | True | Specifies the Dedicated Host ID to which the Maintenance Configuration will be assigned. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **location** | string  | - | 
| **maintenance_configuration_id** | string  | - | 
| **dedicated_host_id** | string  | - | 
| **id** | string  | The ID of the Maintenance Assignment. | 

## Example minimal hclt

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