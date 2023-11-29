# azurerm_virtual_hub_connection

Manages a Connection for a Virtual Hub.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The Name which should be used for this Connection, which must be unique within the Virtual Hub. Changing this forces a new resource to be created. | 
| **var.virtual_hub_id** | string | True | -  |  -  | The ID of the Virtual Hub within which this connection should be created. Changing this forces a new resource to be created. | 
| **var.remote_virtual_network_id** | string | True | -  |  -  | The ID of the Virtual Network which the Virtual Hub should be connected to. Changing this forces a new resource to be created. | 
| **var.internet_security_enabled** | bool | False | `False`  |  -  | Should Internet Security be enabled to secure internet traffic? Defaults to `false`. | 
| **var.routing** | block | False | -  |  -  | A `routing` block. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **virtual_hub_id** | string  | - | 
| **remote_virtual_network_id** | string  | - | 
| **internet_security_enabled** | bool  | - | 
| **routing** | block  | - | 
| **id** | string  | The ID of the Virtual Hub Connection. | 