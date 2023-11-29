# azurerm_bot_connection

Manages a Bot Connection.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the Bot Connection. Changing this forces a new resource to be created. Must be globally unique. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the Bot Connection. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  | The supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.bot_name** | string | True | -  |  -  | The name of the Bot Resource this connection will be associated with. Changing this forces a new resource to be created. | 
| **var.service_provider_name** | string | True | -  |  -  | The name of the service provider that will be associated with this connection. Changing this forces a new resource to be created. | 
| **var.client_id** | string | True | -  |  -  | The Client ID that will be used to authenticate with the service provider. | 
| **var.client_secret** | string | True | -  |  -  | The Client Secret that will be used to authenticate with the service provider. | 
| **var.scopes** | string | False | -  |  -  | The Scopes at which the connection should be applied. | 
| **var.parameters** | string | False | -  |  -  | A map of additional parameters to apply to the connection. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **bot_name** | string  | - | 
| **service_provider_name** | string  | - | 
| **client_id** | string  | - | 
| **client_secret** | string  | - | 
| **scopes** | string  | - | 
| **parameters** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Bot Connection. | 