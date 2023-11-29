# azurerm_bot_channel_direct_line_speech

Manages a Direct Line Speech integration for a Bot Channel

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.resource_group_name** | string | True | The name of the resource group where the Direct Line Speech Channel should be created. Changing this forces a new resource to be created. | 
| **var.location** | string | True | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.bot_name** | string | True | The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created. | 
| **var.cognitive_account_id** | string | False | The ID of the Cognitive Account this Bot Channel should be associated with. | 
| **var.cognitive_service_access_key** | string | True | The access key to access the Cognitive Service. | 
| **var.cognitive_service_location** | string | True | Specifies the supported Azure location where the Cognitive Service resource exists. | 
| **var.custom_speech_model_id** | string | False | The custom speech model id for the Direct Line Speech Channel. | 
| **var.custom_voice_deployment_id** | string | False | The custom voice deployment id for the Direct Line Speech Channel. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **bot_name** | string  | - | 
| **cognitive_account_id** | string  | - | 
| **cognitive_service_access_key** | string  | - | 
| **cognitive_service_location** | string  | - | 
| **custom_speech_model_id** | string  | - | 
| **custom_voice_deployment_id** | string  | - | 
| **id** | string  | The ID of the Direct Line Speech Channel. | 