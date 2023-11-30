# azurerm_media_content_key_policy

Manages a Content Key Policy.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "media/media_content_key_policy" 
}

inputs = {
   media_services_account_name = "media_services_account_name of media_content_key_policy" 
   name = "name of media_content_key_policy" 
   policy_option = {
      example_policy_option = {
      }
  
   }
 
   resource_group_name = "${resource_group}" 
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
| **var.media_services_account_name** | string | True | The Media Services account name. Changing this forces a new Content Key Policy to be created. | 
| **var.name** | string | True | The name which should be used for this Content Key Policy. Changing this forces a new Content Key Policy to be created. | 
| **var.policy_option** | block | True | One or more `policy_option` blocks. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the Content Key Policy should exist. Changing this forces a new Content Key Policy to be created. | 
| **var.description** | string | False | A description for the Policy. | 

### `policy_option` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `clear_key_configuration_enabled` | bool | No | - | Enable a configuration for non-DRM keys. |
| `fairplay_configuration` | block | No | - | A 'fairplay_configuration' block. Check license requirements here <https://docs.microsoft.com/azure/media-services/latest/fairplay-license-overview>. |
| `open_restriction_enabled` | bool | No | - | Enable an open restriction. License or key will be delivered on every request. |
| `playready_configuration_license` | list | No | - | One or more 'playready_configuration_license' blocks. |
| `playready_response_custom_data` | string | No | - | The custom response data of the PlayReady configuration. This only applies when 'playready_configuration_license' is specified. |
| `token_restriction` | block | No | - | A 'token_restriction' block. |
| `widevine_configuration_template` | string | No | - | The Widevine template. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Content Key Policy. | 

Additionally, all variables are provided as outputs.
