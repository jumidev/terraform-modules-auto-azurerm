# azurerm_bot_channel_email

Manages a Email integration for a Bot Channel~> **Note** A bot can only have a single Email Channel associated with it.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the Bot Channel. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  | The supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.bot_name** | string | True | -  |  -  | The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created. | 
| **var.email_address** | string | True | -  |  -  | The email address that the Bot will authenticate with. | 
| **var.email_password** | string | True | -  |  -  | The email password that the Bot will authenticate with. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **bot_name** | string  | - | 
| **email_address** | string  | - | 
| **email_password** | string  | - | 
| **id** | string  | The ID of the Email Integration for a Bot Channel. | 