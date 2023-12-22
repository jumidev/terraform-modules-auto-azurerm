# azurerm_bot_channel_direct_line_speech

Manages a Direct Line Speech integration for a Bot Channel

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "bot/bot_channel_direct_line_speech"   
}

inputs = {
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   # bot_name → set in component_inputs
   cognitive_service_access_key = "The access key to access the Cognitive Service"   
   cognitive_service_location = "Specifies the supported Azure location where the Cognitive Service resource exis..."   
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
| **resource_group_name** | string |  The name of the resource group where the Direct Line Speech Channel should be created. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **bot_name** | string |  The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created. | 
| **cognitive_service_access_key** | string |  The access key to access the Cognitive Service. | 
| **cognitive_service_location** | string |  Specifies the supported Azure location where the Cognitive Service resource exists. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **cognitive_account_id** | string |  The ID of the Cognitive Account this Bot Channel should be associated with. | 
| **custom_speech_model_id** | string |  The custom speech model id for the Direct Line Speech Channel. | 
| **custom_voice_deployment_id** | string |  The custom voice deployment id for the Direct Line Speech Channel. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Direct Line Speech Channel. | 

Additionally, all variables are provided as outputs.
