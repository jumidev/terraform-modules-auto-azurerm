# azurerm_bot_channel_alexa

Manages an Alexa integration for a Bot Channel~> **Note** A bot can only have a single Alexa Channel associated with it.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "bot/bot_channel_alexa"   
}

inputs = {
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   bot_name = "The name of the Bot Resource this channel will be associated with..."   
   skill_id = "The Alexa skill ID for the Alexa Channel"   
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
| **resource_group_name** | string |  The name of the resource group where the Alexa Channel should be created. Changing this forces a new resource to be created. | 
| **location** | string |  The supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **bot_name** | string |  The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created. | 
| **skill_id** | string |  The Alexa skill ID for the Alexa Channel. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Alexa Integration for a Bot Channel. | 

Additionally, all variables are provided as outputs.
