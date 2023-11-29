# azurerm_bot_channel_line

Manages a Line integration for a Bot Channel~> **Note** A bot can only have a single Line Channel associated with it.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.resource_group_name** | string | True | -  |  -  | The name of the resource group where the Line Channel should be created. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.bot_name** | string | True | -  |  -  | The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created. | 
| **var.line_channel** | block | True | -  |  -  | One or more `line_channel` blocks. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **bot_name** | string  | - | 
| **line_channel** | block  | - | 
| **id** | string  | The ID of the Line Integration for a Bot Channel. | 