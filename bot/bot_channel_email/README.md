# azurerm_bot_channel_email

Manages a Email integration for a Bot Channel~> **Note** A bot can only have a single Email Channel associated with it.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.resource_group_name** | string | True | The name of the resource group in which to create the Bot Channel. Changing this forces a new resource to be created. | 
| **var.location** | string | True | The supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.bot_name** | string | True | The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created. | 
| **var.email_address** | string | True | The email address that the Bot will authenticate with. | 
| **var.email_password** | string | True | The email password that the Bot will authenticate with. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **bot_name** | string  | - | 
| **email_address** | string  | - | 
| **email_password** | string  | - | 
| **id** | string  | The ID of the Email Integration for a Bot Channel. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "bot/bot_channel_email" 
}

inputs = {
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   bot_name = "bot_name of bot_channel_email" 
   email_address = "email_address of bot_channel_email" 
   email_password = "email_password of bot_channel_email" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```