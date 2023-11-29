# azurerm_bot_channel_facebook

Manages a Facebook integration for a Bot Channel~> **Note** A bot can only have a single Facebook Channel associated with it.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.resource_group_name** | string | True | -  |  -  | The name of the resource group where the Facebook Channel should be created. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.bot_name** | string | True | -  |  -  | The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created. | 
| **var.facebook_application_id** | string | True | -  |  -  | The Facebook Application ID for the Facebook Channel. | 
| **var.facebook_application_secret** | string | True | -  |  -  | The Facebook Application Secret for the Facebook Channel. | 
| **var.page** | block | True | -  |  -  | One or more `page` blocks. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **bot_name** | string  | - | 
| **facebook_application_id** | string  | - | 
| **facebook_application_secret** | string  | - | 
| **page** | block  | - | 
| **id** | string  | The ID of the Facebook Integration for a Bot Channel. | 