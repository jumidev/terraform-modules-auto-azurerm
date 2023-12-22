# azurerm_bot_connection

Manages a Bot Connection.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "bot/bot_connection"   
}

inputs = {
   name = "Specifies the name of the Bot Connection"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   # bot_name → set in component_inputs
   service_provider_name = "The name of the service provider that will be associated with this connection..."   
   client_id = "The Client ID that will be used to authenticate with the service provider..."   
   client_secret = "The Client Secret that will be used to authenticate with the service provider..."   
}

component_inputs = {
   bot_name = "path/to/bot_channels_registration_component:name"   
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
| **name** | string |  Specifies the name of the Bot Connection. Changing this forces a new resource to be created. Must be globally unique. | 
| **resource_group_name** | string |  The name of the resource group in which to create the Bot Connection. Changing this forces a new resource to be created. | 
| **location** | string |  The supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **bot_name** | string |  The name of the Bot Resource this connection will be associated with. Changing this forces a new resource to be created. | 
| **service_provider_name** | string |  The name of the service provider that will be associated with this connection. Changing this forces a new resource to be created. | 
| **client_id** | string |  The Client ID that will be used to authenticate with the service provider. | 
| **client_secret** | string |  The Client Secret that will be used to authenticate with the service provider. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **scopes** | string |  The Scopes at which the connection should be applied. | 
| **parameters** | string |  A map of additional parameters to apply to the connection. | 
| **tags** | map |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Bot Connection. | 

Additionally, all variables are provided as outputs.
