# azurerm_media_streaming_locator

Manages a Media Streaming Locator.

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



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **asset_name** | string  | - | 
| **media_services_account_name** | string  | - | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **streaming_policy_name** | string  | - | 
| **alternative_media_id** | string  | - | 
| **content_key** | block  | - | 
| **default_content_key_policy_name** | string  | - | 
| **end_time** | string  | - | 
| **filter_names** | list  | - | 
| **start_time** | string  | - | 
| **streaming_locator_id** | string  | - | 
| **id** | string  | The ID of the Streaming Locator. | 