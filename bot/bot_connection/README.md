# azurerm_bot_connection

Manages a Bot Connection.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Bot Connection. Changing this forces a new resource to be created. Must be globally unique. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the Bot Connection. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | The supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **bot_name** | string | True | -  |  -  | The name of the Bot Resource this connection will be associated with. Changing this forces a new resource to be created. | 
| **service_provider_name** | string | True | -  |  -  | The name of the service provider that will be associated with this connection. Changing this forces a new resource to be created. | 
| **client_id** | string | True | -  |  -  | The Client ID that will be used to authenticate with the service provider. | 
| **client_secret** | string | True | -  |  -  | The Client Secret that will be used to authenticate with the service provider. | 
| **scopes** | string | False | -  |  -  | The Scopes at which the connection should be applied. | 
| **parameters** | string | False | -  |  -  | A map of additional parameters to apply to the connection. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

