# azurerm_bot_channel_sms

Manages a SMS integration for a Bot Channel~> **Note** A bot can only have a single SMS Channel associated with it.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **resource_group_name** | string | True | -  |  -  | The name of the resource group where the SMS Channel should be created. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **bot_name** | string | True | -  |  -  | The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created. | 
| **phone_number** | string | True | -  |  -  | The phone number for the SMS Channel. | 
| **sms_channel_account_security_id** | string | True | -  |  -  | The account security identifier (SID) for the SMS Channel. | 
| **sms_channel_auth_token** | string | True | -  |  -  | The authorization token for the SMS Channel. | 

