# azurerm_maintenance_assignment_virtual_machine

Manages a maintenance assignment to virtual machine.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **maintenance_configuration_id** | string | True | -  |  -  | Specifies the ID of the Maintenance Configuration Resource. Changing this forces a new resource to be created. | 
| **virtual_machine_id** | string | True | -  |  -  | Specifies the Virtual Machine ID to which the Maintenance Configuration will be assigned. Changing this forces a new resource to be created. | 

