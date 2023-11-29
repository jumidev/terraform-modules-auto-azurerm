# azurerm_maintenance_assignment_virtual_machine

Manages a maintenance assignment to virtual machine.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.location** | string | True | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.maintenance_configuration_id** | string | True | Specifies the ID of the Maintenance Configuration Resource. Changing this forces a new resource to be created. | 
| **var.virtual_machine_id** | string | True | Specifies the Virtual Machine ID to which the Maintenance Configuration will be assigned. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **location** | string  | - | 
| **maintenance_configuration_id** | string  | - | 
| **virtual_machine_id** | string  | - | 
| **id** | string  | The ID of the Maintenance Assignment. | 