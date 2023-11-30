# azurerm_bot_channel_sms

Manages a SMS integration for a Bot Channel~> **Note** A bot can only have a single SMS Channel associated with it.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.resource_group_name** | string | True | The name of the resource group where the SMS Channel should be created. Changing this forces a new resource to be created. | 
| **var.location** | string | True | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.bot_name** | string | True | The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created. | 
| **var.phone_number** | string | True | The phone number for the SMS Channel. | 
| **var.sms_channel_account_security_id** | string | True | The account security identifier (SID) for the SMS Channel. | 
| **var.sms_channel_auth_token** | string | True | The authorization token for the SMS Channel. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **bot_name** | string  | - | 
| **phone_number** | string  | - | 
| **sms_channel_account_security_id** | string  | - | 
| **sms_channel_auth_token** | string  | - | 
| **id** | string  | The ID of the SMS Integration for a Bot Channel. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "bot/bot_channel_sms" 
}

inputs = {
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   bot_name = "bot_name of bot_channel_sms" 
   phone_number = "phone_number of bot_channel_sms" 
   sms_channel_account_security_id = "sms_channel_account_security_id of bot_channel_sms" 
   sms_channel_auth_token = "sms_channel_auth_token of bot_channel_sms" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```