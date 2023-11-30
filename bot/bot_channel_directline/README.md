# azurerm_bot_channel_directline

Manages a Directline integration for a Bot Channel

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "bot/bot_channel_directline" 
}

inputs = {
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   bot_name = "bot_name of bot_channel_directline" 
   site = "site of bot_channel_directline" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.resource_group_name** | string | True | The name of the resource group in which to create the Bot Channel. Changing this forces a new resource to be created. | 
| **var.location** | string | True | The supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.bot_name** | string | True | The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created. | 
| **var.site** | block | True | A site represents a client application that you want to connect to your bot. One or more `site` blocks. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | Id for the site | 
| **key** | string | No  | Primary key for accessing this site | 
| **key2** | string | No  | Secondary key for accessing this site | 

Additionally, all variables are provided as outputs.
