# azurerm_maintenance_assignment_virtual_machine_scale_set

Manages a maintenance assignment to a virtual machine scale set.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **maintenance_configuration_id** | string | True | -  |  -  | Specifies the ID of the Maintenance Configuration Resource. Changing this forces a new resource to be created. | 
| **virtual_machine_scale_set_id** | string | True | -  |  -  | Specifies the Virtual Machine Scale Set ID to which the Maintenance Configuration will be assigned. Changing this forces a new resource to be created. | 

