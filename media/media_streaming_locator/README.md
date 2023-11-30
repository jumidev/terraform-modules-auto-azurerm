# azurerm_media_streaming_locator

Manages a Media Streaming Locator.

## Example minimal component.hclt

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

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.asset_name** | string | True | Asset Name. Changing this forces a new Streaming Locator to be created. | 
| **var.media_services_account_name** | string | True | The Media Services account name. Changing this forces a new Streaming Locator to be created. | 
| **var.name** | string | True | The name which should be used for this Streaming Locator. Changing this forces a new Streaming Locator to be created. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the Streaming Locator should exist. Changing this forces a new Streaming Locator to be created. | 
| **var.streaming_policy_name** | string | True | Name of the Streaming Policy used by this Streaming Locator. Either specify the name of Streaming Policy you created or use one of the predefined Streaming Policies. The predefined Streaming Policies available are: `Predefined_DownloadOnly`, `Predefined_ClearStreamingOnly`, `Predefined_DownloadAndClearStreaming`, `Predefined_ClearKey`, `Predefined_MultiDrmCencStreaming` and `Predefined_MultiDrmStreaming`. Changing this forces a new Streaming Locator to be created. | 
| **var.alternative_media_id** | string | False | Alternative Media ID of this Streaming Locator. Changing this forces a new Streaming Locator to be created. | 
| **var.content_key** | block | False | One or more `content_key` blocks. Changing this forces a new Streaming Locator to be created. | 
| **var.default_content_key_policy_name** | string | False | Name of the default Content Key Policy used by this Streaming Locator.Changing this forces a new Streaming Locator to be created. | 
| **var.end_time** | string | False | The end time of the Streaming Locator. Changing this forces a new Streaming Locator to be created. | 
| **var.filter_names** | list | False | A list of names of asset or account filters which apply to this Streaming Locator. Changing this forces a new Streaming Locator to be created. | 
| **var.start_time** | string | False | The start time of the Streaming Locator. Changing this forces a new Streaming Locator to be created. | 
| **var.streaming_locator_id** | string | False | The ID of the Streaming Locator. Changing this forces a new Streaming Locator to be created. | 

### `content_key` block structure

> `content_key_id` (string): ID of Content Key. Changing this forces a new Streaming Locator to be created.\
> `label_reference_in_streaming_policy` (string): Label of Content Key as specified in the Streaming Policy. Changing this forces a new Streaming Locator to be created.\
> `policy_name` (string): Content Key Policy used by Content Key. Changing this forces a new Streaming Locator to be created.\
> `type` (string): Encryption type of Content Key. Supported values are 'CommonEncryptionCbcs', 'CommonEncryptionCenc' or 'EnvelopeEncryption'. Changing this forces a new Streaming Locator to be created.\
> `value` (string): Value of Content Key. Changing this forces a new Streaming Locator to be created.\



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Streaming Locator. | 

Additionally, all variables are provided as outputs.
