# azurerm_maintenance_assignment_dedicated_host

Manages a maintenance assignment to Dedicated Host.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **maintenance_configuration_id** | string | True | -  |  -  | Specifies the ID of the Maintenance Configuration Resource. Changing this forces a new resource to be created. | 
| **dedicated_host_id** | string | True | -  |  -  | Specifies the Dedicated Host ID to which the Maintenance Configuration will be assigned. Changing this forces a new resource to be created. | 

