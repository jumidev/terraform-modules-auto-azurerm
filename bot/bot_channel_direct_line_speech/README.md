# azurerm_bot_channel_direct_line_speech

Manages a Direct Line Speech integration for a Bot Channel

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **resource_group_name** | string | True | -  |  -  | The name of the resource group where the Direct Line Speech Channel should be created. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **bot_name** | string | True | -  |  -  | The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created. | 
| **cognitive_account_id** | string | False | -  |  -  | The ID of the Cognitive Account this Bot Channel should be associated with. | 
| **cognitive_service_access_key** | string | True | -  |  -  | The access key to access the Cognitive Service. | 
| **cognitive_service_location** | string | True | -  |  -  | Specifies the supported Azure location where the Cognitive Service resource exists. | 
| **custom_speech_model_id** | string | False | -  |  -  | The custom speech model id for the Direct Line Speech Channel. | 
| **custom_voice_deployment_id** | string | False | -  |  -  | The custom voice deployment id for the Direct Line Speech Channel. | 

