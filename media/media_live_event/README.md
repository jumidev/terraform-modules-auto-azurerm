# azurerm_media_live_event

Manages a Live Event.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "media/media_live_event"   
}

inputs = {
   input = {
      this_input = {
      }
      
   }
   
   location = "${location}"   
   # media_services_account_name → set in tfstate_inputs
   name = "name of media_live_event"   
   resource_group_name = "${resource_group}"   
}

tfstate_inputs = {
   media_services_account_name = "path/to/media_services_account_component:name"   
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
| **input** | [block](#input-block-structure) |  A `input` block. | 
| **location** | string |  The Azure Region where the Live Event should exist. Changing this forces a new Live Event to be created. | 
| **media_services_account_name** | string |  The Media Services account name. Changing this forces a new Live Event to be created. | 
| **name** | string |  The name which should be used for this Live Event. Changing this forces a new Live Event to be created. | 
| **resource_group_name** | string |  The name of the Resource Group where the Live Event should exist. Changing this forces a new Live Event to be created. | 

## Optional Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **auto_start_enabled** | bool |  -  |  The flag indicates if the resource should be automatically started on creation. Changing this forces a new resource to be created. | 
| **cross_site_access_policy** | [block](#cross_site_access_policy-block-structure) |  -  |  A `cross_site_access_policy` block. | 
| **description** | string |  -  |  A description for the live event. | 
| **encoding** | [block](#encoding-block-structure) |  -  |  A `encoding` block. | 
| **hostname_prefix** | string |  -  |  When `use_static_hostname` is set to true, the `hostname_prefix` specifies the first part of the hostname assigned to the live event preview and ingest endpoints. The final hostname would be a combination of this prefix, the media service account name and a short code for the Azure Media Services data center. | 
| **preview** | [block](#preview-block-structure) |  -  |  A `preview` block. | 
| **stream_options** | string |  `Default`, `LowLatency`, `LowLatencyV2`  |  A list of options to use for the LiveEvent. Possible values are `Default`, `LowLatency`, `LowLatencyV2`. Please see more at this [document](https://learn.microsoft.com/en-us/azure/media-services/latest/live-event-latency-reference#lowlatency-and-lowlatencyv2-options). Changing this forces a new resource to be created. | 
| **tags** | map |  -  |  A mapping of tags which should be assigned to the Live Event. | 
| **transcription_languages** | string |  -  |  Specifies a list of languages (locale) to be used for speech-to-text transcription – it should match the spoken language in the audio track. The value should be in `BCP-47` format (e.g: `en-US`). [See the Microsoft Documentation for more information about the live transcription feature and the list of supported languages](https://go.microsoft.com/fwlink/?linkid=2133742 ). | 
| **use_static_hostname** | bool |  -  |  Specifies whether a static hostname would be assigned to the live event preview and ingest endpoints. Changing this forces a new Live Event to be created. | 

### `cross_site_access_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `client_access_policy` | string | No | - | The content of clientaccesspolicy.xml used by Silverlight. |
| `cross_domain_policy` | string | No | - | The content of the Cross Domain Policy ('crossdomain.xml'). |

### `encoding` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `key_frame_interval` | string | No | PT2S | Use an 'ISO 8601' time value between 0.5 to 20 seconds to specify the output fragment length for the video and audio tracks of an encoding live event. For example, use 'PT2S' to indicate 2 seconds. For the video track it also defines the key frame interval, or the length of a GoP (group of pictures). The value cannot be set for pass-through live events. Defaults to 'PT2S'. |
| `preset_name` | string | No | - | The optional encoding preset name, used when 'type' is not 'None'. If the 'type' is set to 'Standard', then the default preset name is 'Default720p'. Else if the 'type' is set to 'Premium1080p', Changing this forces a new resource to be created. |
| `stretch_mode` | string | No | None | Specifies how the input video will be resized to fit the desired output resolution(s). Allowed values are 'None', 'AutoFit' or 'AutoSize'. Default is 'None'. |
| `type` | string | No | None | Live event type. Possible values are 'None', 'Premium1080p', 'PassthroughBasic', 'PassthroughStandard' and 'Standard'. When set to 'None', the service simply passes through the incoming video and audio layer(s) to the output. When 'type' is set to 'Standard' or 'Premium1080p', a live encoder transcodes the incoming stream into multiple bitrates or layers. Defaults to 'None'. Changing this forces a new resource to be created. |

### `ip_access_control_allow` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `address` | string | No | - | The IP address or CIDR range. |
| `name` | string | No | - | The friendly name for the IP address range. |
| `subnet_prefix_length` | string | No | - | The subnet mask prefix length (see CIDR notation). |

### `preview` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `alternative_media_id` | string | No | - | An alternative media identifier associated with the streaming locator created for the preview. The identifier can be used in the 'CustomLicenseAcquisitionUrlTemplate' or the 'CustomKeyAcquisitionUrlTemplate' of the Streaming Policy specified in the 'streaming_policy_name' field. |
| `ip_access_control_allow` | list | No | - | One or more 'ip_access_control_allow' blocks. |
| `preview_locator` | string | No | - | The identifier of the preview locator in GUID format. Specifying this at creation time allows the caller to know the preview locator url before the event is created. If omitted, the service will generate a random identifier. Changing this forces a new resource to be created. |
| `streaming_policy_name` | string | No | - | The name of streaming policy used for the live event preview. Changing this forces a new resource to be created. |

### `input` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `access_token` | string | No | - | A UUID in string form to uniquely identify the stream. If omitted, the service will generate a unique value. Changing this forces a new value to be created. |
| `ip_access_control_allow` | [block](#input-block-structure) | No | - | One or more 'ip_access_control_allow' blocks. |
| `key_frame_interval_duration` | string | No | - | ISO 8601 time duration of the key frame interval duration of the input. This value sets the 'EXT-X-TARGETDURATION' property in the HLS output. For example, use PT2S to indicate 2 seconds. This field cannot be set when 'type' is set to 'Encoding'. |
| `streaming_protocol` | string | No | - | The input protocol for the live event. Allowed values are 'FragmentedMP4' and 'RTMP'. Changing this forces a new resource to be created. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Live Event. | 

Additionally, all variables are provided as outputs.
