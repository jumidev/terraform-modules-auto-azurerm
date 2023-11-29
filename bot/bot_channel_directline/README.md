# azurerm_bot_channel_directline

Manages a Directline integration for a Bot Channel

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.resource_group_name** | string | True | The name of the resource group in which to create the Bot Channel. Changing this forces a new resource to be created. | 
| **var.location** | string | True | The supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.bot_name** | string | True | The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created. | 
| **var.site** | block | True | A site represents a client application that you want to connect to your bot. One or more `site` blocks. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **bot_name** | string  | - | 
| **site** | block  | - | 
| **id** | string  | Id for the site | 
| **key** | string  | Primary key for accessing this site | 
| **key2** | string  | Secondary key for accessing this site | 