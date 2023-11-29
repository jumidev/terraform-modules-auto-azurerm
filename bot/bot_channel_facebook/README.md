# azurerm_bot_channel_facebook

Manages a Facebook integration for a Bot Channel~> **Note** A bot can only have a single Facebook Channel associated with it.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **resource_group_name** | string | True | -  |  -  | The name of the resource group where the Facebook Channel should be created. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **bot_name** | string | True | -  |  -  | The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created. | 
| **facebook_application_id** | string | True | -  |  -  | The Facebook Application ID for the Facebook Channel. | 
| **facebook_application_secret** | string | True | -  |  -  | The Facebook Application Secret for the Facebook Channel. | 
| **page** | block | True | -  |  -  | One or more `page` blocks. | 

