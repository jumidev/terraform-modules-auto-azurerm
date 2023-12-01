# azurerm_media_streaming_locator

Manages a Media Streaming Locator.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "media/media_streaming_locator" 
}

inputs = {
   asset_name = "asset_name of media_streaming_locator" 
   media_services_account_name = "media_services_account_name of media_streaming_locator" 
   name = "name of media_streaming_locator" 
   resource_group_name = "${resource_group}" 
   streaming_policy_name = "streaming_policy_name of media_streaming_locator" 
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
| **asset_name** | string |  Asset Name. Changing this forces a new Streaming Locator to be created. | 
| **media_services_account_name** | string |  The Media Services account name. Changing this forces a new Streaming Locator to be created. | 
| **name** | string |  The name which should be used for this Streaming Locator. Changing this forces a new Streaming Locator to be created. | 
| **resource_group_name** | string |  The name of the Resource Group where the Streaming Locator should exist. Changing this forces a new Streaming Locator to be created. | 
| **streaming_policy_name** | string |  Name of the Streaming Policy used by this Streaming Locator. Either specify the name of Streaming Policy you created or use one of the predefined Streaming Policies. The predefined Streaming Policies available are: `Predefined_DownloadOnly`, `Predefined_ClearStreamingOnly`, `Predefined_DownloadAndClearStreaming`, `Predefined_ClearKey`, `Predefined_MultiDrmCencStreaming` and `Predefined_MultiDrmStreaming`. Changing this forces a new Streaming Locator to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **alternative_media_id** | string |  Alternative Media ID of this Streaming Locator. Changing this forces a new Streaming Locator to be created. | 
| **content_key** | [block](#content_key-block-structure) |  One or more `content_key` blocks. Changing this forces a new Streaming Locator to be created. | 
| **default_content_key_policy_name** | string |  Name of the default Content Key Policy used by this Streaming Locator.Changing this forces a new Streaming Locator to be created. | 
| **end_time** | string |  The end time of the Streaming Locator. Changing this forces a new Streaming Locator to be created. | 
| **filter_names** | list |  A list of names of asset or account filters which apply to this Streaming Locator. Changing this forces a new Streaming Locator to be created. | 
| **start_time** | string |  The start time of the Streaming Locator. Changing this forces a new Streaming Locator to be created. | 
| **streaming_locator_id** | string |  The ID of the Streaming Locator. Changing this forces a new Streaming Locator to be created. | 

### `content_key` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `content_key_id` | string | No | - | ID of Content Key. Changing this forces a new Streaming Locator to be created. |
| `label_reference_in_streaming_policy` | string | No | - | Label of Content Key as specified in the Streaming Policy. Changing this forces a new Streaming Locator to be created. |
| `policy_name` | string | No | - | Content Key Policy used by Content Key. Changing this forces a new Streaming Locator to be created. |
| `type` | string | No | - | Encryption type of Content Key. Supported values are 'CommonEncryptionCbcs', 'CommonEncryptionCenc' or 'EnvelopeEncryption'. Changing this forces a new Streaming Locator to be created. |
| `value` | string | No | - | Value of Content Key. Changing this forces a new Streaming Locator to be created. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Streaming Locator. | 

Additionally, all variables are provided as outputs.
