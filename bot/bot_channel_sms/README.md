# azurerm_bot_channel_sms

Manages a SMS integration for a Bot Channel~> **Note** A bot can only have a single SMS Channel associated with it.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "bot/bot_channel_sms"   
}

inputs = {
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   # bot_name → set in component_inputs
   phone_number = "The phone number for the SMS Channel"   
   sms_channel_account_security_id = "The account security identifier (SID) for the SMS Channel..."   
   sms_channel_auth_token = "The authorization token for the SMS Channel"   
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

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **resource_group_name** | string |  The name of the resource group where the SMS Channel should be created. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **bot_name** | string |  The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created. | 
| **phone_number** | string |  The phone number for the SMS Channel. | 
| **sms_channel_account_security_id** | string |  The account security identifier (SID) for the SMS Channel. | 
| **sms_channel_auth_token** | string |  The authorization token for the SMS Channel. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the SMS Integration for a Bot Channel. | 

Additionally, all variables are provided as outputs.
