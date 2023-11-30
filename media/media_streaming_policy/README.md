# azurerm_media_streaming_policy

Manages a Streaming Policy.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "media/media_streaming_policy" 
}

inputs = {
   media_services_account_name = "media_services_account_name of media_streaming_policy" 
   name = "name of media_streaming_policy" 
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
| **var.media_services_account_name** | string | True | The Media Services account name. Changing this forces a new Streaming Policy to be created. | 
| **var.name** | string | True | The name which should be used for this Streaming Policy. Changing this forces a new Streaming Policy to be created. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the Streaming Policy should exist. Changing this forces a new Streaming Policy to be created. | 
| **var.common_encryption_cbcs** | block | False | A `common_encryption_cbcs` block. Changing this forces a new Streaming Policy to be created. | 
| `common_encryption_cbcs` block structure: || 
|   clear_key_encryption (block): A 'clear_key_encryption' block. Changing this forces a new Streaming Policy to be created. ||
|   default_content_key (block): A 'default_content_key' block. Changing this forces a new Streaming Policy to be created. ||
|   drm_fairplay (block): A 'drm_fairplay' block. Changing this forces a new Streaming Policy to be created. ||
|   enabled_protocols (block): A 'enabled_protocols' block. Changing this forces a new Streaming Policy to be created. ||
| **var.common_encryption_cenc** | block | False | A `common_encryption_cenc` block. Changing this forces a new Streaming Policy to be created. | 
| `common_encryption_cenc` block structure: || 
|   clear_key_encryption (block): A 'clear_key_encryption' block. Changing this forces a new Streaming Policy to be created. ||
|   clear_track (block): One or more 'clear_track' blocks. Changing this forces a new Streaming Policy to be created. ||
|   content_key_to_track_mapping (block): One or more 'content_key_to_track_mapping' blocks. Changing this forces a new Streaming Policy to be created. ||
|   default_content_key (block): A 'default_content_key' block. Changing this forces a new Streaming Policy to be created. ||
|   drm_playready (block): A 'drm_playready' block. Changing this forces a new Streaming Policy to be created. ||
|   drm_widevine_custom_license_acquisition_url_template (string): The URL template for the custom service that delivers licenses to the end user. This is not required when using Azure Media Services for issuing licenses. Changing this forces a new Streaming Policy to be created. ||
|   enabled_protocols (block): A 'enabled_protocols' block. Changing this forces a new Streaming Policy to be created. ||
| **var.default_content_key_policy_name** | string | False | Default Content Key used by current Streaming Policy. Changing this forces a new Streaming Policy to be created. | 
| **var.envelope_encryption** | block | False | A `envelope_encryption` block. Changing this forces a new Streaming Policy to be created. | 
| `envelope_encryption` block structure: || 
|   custom_keys_acquisition_url_template (string): The URL template for the custom service that delivers content keys to the end user. This is not required when using Azure Media Services for issuing keys. Changing this forces a new Streaming Policy to be created. ||
|   default_content_key (block): A 'default_content_key' block. Changing this forces a new Streaming Policy to be created. ||
|   enabled_protocols (block): A 'enabled_protocols' block. Changing this forces a new Streaming Policy to be created. ||
| **var.no_encryption_enabled_protocols** | block | False | A `no_encryption_enabled_protocols` block. Changing this forces a new Streaming Policy to be created. | 
| `no_encryption_enabled_protocols` block structure: || 
|   dash (string): Enable DASH protocol or not. Changing this forces a new Streaming Policy to be created. ||
|   download (string): Enable Download protocol or not. Changing this forces a new Streaming Policy to be created. ||
|   hls (string): Enable HLS protocol or not. Changing this forces a new Streaming Policy to be created. ||
|   smooth_streaming (string): Enable SmoothStreaming protocol or not. Changing this forces a new Streaming Policy to be created. ||



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Streaming Policy. | 

Additionally, all variables are provided as outputs.
