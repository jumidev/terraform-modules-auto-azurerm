# azurerm_bot_channel_email

Manages a Email integration for a Bot Channel~> **Note** A bot can only have a single Email Channel associated with it.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "bot/bot_channel_email"   
}

inputs = {
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   # bot_name → set in component_inputs
   email_address = "The email address that the Bot will authenticate with..."   
   email_password = "The email password that the Bot will authenticate with..."   
}

component_inputs = {
   bot_name = "path/to/bot_channels_registration_component:name"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **resource_group_name** | string |  -  |  The name of the resource group in which to create the Bot Channel. Changing this forces a new resource to be created. | 
| **location** | string |  -  |  The supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **bot_name** | string |  -  |  The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created. | 
| **email_address** | string |  -  |  The email address that the Bot will authenticate with. | 
| **email_password** | string |  `Random string of 32 characters`  |  The email password that the Bot will authenticate with. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Email Integration for a Bot Channel. | 

Additionally, all variables are provided as outputs.
