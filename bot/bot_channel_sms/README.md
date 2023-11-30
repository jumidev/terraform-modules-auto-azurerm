# azurerm_bot_channel_sms

Manages a SMS integration for a Bot Channel~> **Note** A bot can only have a single SMS Channel associated with it.

## Example minimal component.hclt

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

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.resource_group_name** | string |  The name of the resource group where the SMS Channel should be created. Changing this forces a new resource to be created. | 
| **var.location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.bot_name** | string |  The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created. | 
| **var.phone_number** | string |  The phone number for the SMS Channel. | 
| **var.sms_channel_account_security_id** | string |  The account security identifier (SID) for the SMS Channel. | 
| **var.sms_channel_auth_token** | string |  The authorization token for the SMS Channel. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the SMS Integration for a Bot Channel. | 

Additionally, all variables are provided as outputs.
