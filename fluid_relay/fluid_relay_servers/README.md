# azurerm_fluid_relay_servers

Manages a Fluid Relay Server.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **location** | string | True | -  |  -  | The Azure Region where the Fluid Relay Server should exist. Changing this forces a new Fluid Relay Server to be created. | 
| **name** | string | True | -  |  -  | The name which should be used for this Fluid Relay Server. Changing this forces a new Fluid Relay Server to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Fluid Relay Server should exist. Changing this forces a new Fluid Relay Server to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Fluid Relay Server. | 
| **identity** | block | False | -  |  -  | An `identity` block. | 
| **storage_sku** | string | False | -  |  `standard`, `basic`  | Sku of the storage associated with the resource, Possible values are `standard` and `basic`. Changing this forces a new Fluid Relay Server to be created. | 

