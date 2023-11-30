# azurerm_bot_connection

Manages a Bot Connection.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "bot/bot_connection" 
}

inputs = {
   name = "name of bot_connection" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   bot_name = "bot_name of bot_connection" 
   service_provider_name = "service_provider_name of bot_connection" 
   client_id = "client_id of bot_connection" 
   client_secret = "client_secret of bot_connection" 
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
| **var.name** | string |  Specifies the name of the Bot Connection. Changing this forces a new resource to be created. Must be globally unique. | 
| **var.resource_group_name** | string |  The name of the resource group in which to create the Bot Connection. Changing this forces a new resource to be created. | 
| **var.location** | string |  The supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.bot_name** | string |  The name of the Bot Resource this connection will be associated with. Changing this forces a new resource to be created. | 
| **var.service_provider_name** | string |  The name of the service provider that will be associated with this connection. Changing this forces a new resource to be created. | 
| **var.client_id** | string |  The Client ID that will be used to authenticate with the service provider. | 
| **var.client_secret** | string |  The Client Secret that will be used to authenticate with the service provider. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.scopes** | string |  The Scopes at which the connection should be applied. | 
| **var.parameters** | string |  A map of additional parameters to apply to the connection. | 
| **var.tags** | map |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Bot Connection. | 

Additionally, all variables are provided as outputs.
