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
   bot_name = "bot_name of bot_channel_alexa" 
   skill_id = "skill_id of bot_channel_alexa" 
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
| **var.resource_group_name** | string |  The name of the resource group where the Alexa Channel should be created. Changing this forces a new resource to be created. | 
| **var.location** | string |  The supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.bot_name** | string |  The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created. | 
| **var.skill_id** | string |  The Alexa skill ID for the Alexa Channel. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Alexa Integration for a Bot Channel. | 

Additionally, all variables are provided as outputs.
