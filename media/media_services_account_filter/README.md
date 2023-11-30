# azurerm_media_services_account_filter

Manages a Media Services Account Filter.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "media/media_services_account_filter" 
}

inputs = {
   name = "name of media_services_account_filter" 
   resource_group_name = "${resource_group}" 
   media_services_account_name = "media_services_account_name of media_services_account_filter" 
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
| **var.name** | string | True | The name which should be used for this Account Filter. Changing this forces a new Account Filter to be created. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the Account Filter should exist. Changing this forces a new Account Filter to be created. | 
| **var.media_services_account_name** | string | True | The Media Services account name. Changing this forces a new Account Filter to be created. | 
| **var.first_quality_bitrate** | string | False | The first quality bitrate. Sets the first video track to appear in the Live Streaming playlist to allow HLS native players to start downloading from this quality level at the beginning. | 
| **var.presentation_time_range** | block | False | A `presentation_time_range` block. | 
| **var.track_selection** | block | False | One or more `track_selection` blocks. | 

### `presentation_time_range` block structure

> `unit_timescale_in_milliseconds` (int): (REQUIRED) Specified as the number of milliseconds in one unit timescale. For example, if you want to set a 'start_in_units' at 30 seconds, you would use a value of 30 when using the 'unit_timescale_in_milliseconds' in 1000. Or if you want to set 'start_in_units' in 30 milliseconds, you would use a value of 30 when using the 'unit_timescale_in_milliseconds' in 1. Applies timescale to 'start_in_units', 'start_timescale' and 'presentation_window_in_timescale' and 'live_backoff_in_timescale'.\
> `end_in_units` (string): The absolute end time boundary. Applies to Video on Demand (VoD). For the Live Streaming presentation, it is silently ignored and applied when the presentation ends and the stream becomes VoD. This is a long value that represents an absolute end point of the presentation, rounded to the closest next GOP start. The unit is defined by 'unit_timescale_in_milliseconds', so an 'end_in_units' of 180 would be for 3 minutes. Use 'start_in_units' and 'end_in_units' to trim the fragments that will be in the playlist (manifest). For example, 'start_in_units' set to 20 and 'end_in_units' set to 60 using 'unit_timescale_in_milliseconds' in 1000 will generate a playlist that contains fragments from between 20 seconds and 60 seconds of the VoD presentation. If a fragment straddles the boundary, the entire fragment will be included in the manifest.\
> `force_end` (bool): Indicates whether the 'end_in_units' property must be present. If true, 'end_in_units' must be specified or a bad request code is returned. Applies to Live Streaming only. Allowed values: 'false', 'true'.\
> `live_backoff_in_units` (string): The relative to end right edge. Applies to Live Streaming only. This value defines the latest live position that a client can seek to. Using this property, you can delay live playback position and create a server-side buffer for players. The unit is defined by 'unit_timescale_in_milliseconds'. The maximum live back off duration is 300 seconds. For example, a value of 20 means that the latest available content is 20 seconds delayed from the real live edge.\
> `presentation_window_in_units` (string): The relative to end sliding window. Applies to Live Streaming only. Use 'presentation_window_in_units' to apply a sliding window of fragments to include in a playlist. The unit is defined by 'unit_timescale_in_milliseconds'. For example, set 'presentation_window_in_units' to 120 to apply a two-minute sliding window. Media within 2 minutes of the live edge will be included in the playlist. If a fragment straddles the boundary, the entire fragment will be included in the playlist. The minimum presentation window duration is 60 seconds.\
> `start_in_units` (string): The absolute start time boundary. Applies to Video on Demand (VoD) or Live Streaming. This is a long value that represents an absolute start point of the stream. The value gets rounded to the closest next GOP start. The unit is defined by 'unit_timescale_in_milliseconds', so a 'start_in_units' of 15 would be for 15 seconds. Use 'start_in_units' and 'end_in_units' to trim the fragments that will be in the playlist (manifest). For example, 'start_in_units' set to 20 and 'end_in_units' set to 60 using 'unit_timescale_in_milliseconds' in 1000 will generate a playlist that contains fragments from between 20 seconds and 60 seconds of the VoD presentation. If a fragment straddles the boundary, the entire fragment will be included in the manifest.\

### `track_selection` block structure

> `condition` (list): (REQUIRED) One or more 'selection' blocks.\



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Account Filter. | 

Additionally, all variables are provided as outputs.
