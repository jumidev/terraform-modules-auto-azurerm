# azurerm_bot_channel_alexa

Manages an Alexa integration for a Bot Channel~> **Note** A bot can only have a single Alexa Channel associated with it.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **resource_group_name** | string | True | -  |  -  | The name of the resource group where the Alexa Channel should be created. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | The supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **bot_name** | string | True | -  |  -  | The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created. | 
| **skill_id** | string | True | -  |  -  | The Alexa skill ID for the Alexa Channel. | 

