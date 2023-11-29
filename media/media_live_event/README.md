# azurerm_media_live_event

Manages a Live Event.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.input** | block | True | -  |  -  | A `input` block. | 
| **var.location** | string | True | -  |  -  | The Azure Region where the Live Event should exist. Changing this forces a new Live Event to be created. | 
| **var.media_services_account_name** | string | True | -  |  -  | The Media Services account name. Changing this forces a new Live Event to be created. | 
| **var.name** | string | True | -  |  -  | The name which should be used for this Live Event. Changing this forces a new Live Event to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Live Event should exist. Changing this forces a new Live Event to be created. | 
| **var.auto_start_enabled** | bool | False | -  |  -  | The flag indicates if the resource should be automatically started on creation. Changing this forces a new resource to be created. | 
| **var.cross_site_access_policy** | block | False | -  |  -  | A `cross_site_access_policy` block. | 
| **var.description** | string | False | -  |  -  | A description for the live event. | 
| **var.encoding** | block | False | -  |  -  | A `encoding` block. | 
| **var.hostname_prefix** | string | False | -  |  -  | When `use_static_hostname` is set to true, the `hostname_prefix` specifies the first part of the hostname assigned to the live event preview and ingest endpoints. The final hostname would be a combination of this prefix, the media service account name and a short code for the Azure Media Services data center. | 
| **var.preview** | block | False | -  |  -  | A `preview` block. | 
| **var.stream_options** | string | False | -  |  `Default`, `LowLatency`, `LowLatencyV2`  | A list of options to use for the LiveEvent. Possible values are `Default`, `LowLatency`, `LowLatencyV2`. Please see more at this [document](https://learn.microsoft.com/en-us/azure/media-services/latest/live-event-latency-reference#lowlatency-and-lowlatencyv2-options). Changing this forces a new resource to be created. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Live Event. | 
| **var.transcription_languages** | string | False | -  |  -  | Specifies a list of languages (locale) to be used for speech-to-text transcription – it should match the spoken language in the audio track. The value should be in `BCP-47` format (e.g: `en-US`). [See the Microsoft Documentation for more information about the live transcription feature and the list of supported languages](https://go.microsoft.com/fwlink/?linkid=2133742 ). | 
| **var.use_static_hostname** | bool | False | -  |  -  | Specifies whether a static hostname would be assigned to the live event preview and ingest endpoints. Changing this forces a new Live Event to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **input** | block  | - | 
| **location** | string  | - | 
| **media_services_account_name** | string  | - | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **auto_start_enabled** | bool  | - | 
| **cross_site_access_policy** | block  | - | 
| **description** | string  | - | 
| **encoding** | block  | - | 
| **hostname_prefix** | string  | - | 
| **preview** | block  | - | 
| **stream_options** | string  | - | 
| **tags** | map  | - | 
| **transcription_languages** | string  | - | 
| **use_static_hostname** | bool  | - | 
| **id** | string  | The ID of the Live Event. | 