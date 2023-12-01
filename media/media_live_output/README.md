# azurerm_media_live_output

Manages a Azure Media Live Event Output.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "media/media_live_output" 
}

inputs = {
   archive_window_duration = "archive_window_duration of media_live_output" 
   asset_name = "asset_name of media_live_output" 
   live_event_id = "live_event_id of media_live_output" 
   name = "name of media_live_output" 
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
| **archive_window_duration** | string |  `ISO 8601` time between 1 minute to 25 hours to indicate the maximum content length that can be archived in the asset for this live output. This also sets the maximum content length for the rewind window. For example, use `PT1H30M` to indicate 1 hour and 30 minutes of archive window. Changing this forces a new Live Output to be created. | 
| **asset_name** | string |  The asset that the live output will write to. Changing this forces a new Live Output to be created. | 
| **live_event_id** | string |  The id of the live event. Changing this forces a new Live Output to be created. | 
| **name** | string |  The name which should be used for this Live Event Output. Changing this forces a new Live Output to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **description** | string |  The description of the live output. Changing this forces a new Live Output to be created. | 
| **hls_fragments_per_ts_segment** | int |  The number of fragments in an HTTP Live Streaming (HLS) TS segment in the output of the live event. This value does not affect the packing ratio for HLS CMAF output. Changing this forces a new Live Output to be created. | 
| **manifest_name** | string |  The manifest file name. If not provided, the service will generate one automatically. Changing this forces a new Live Output to be created. | 
| **output_snap_time_in_seconds** | int |  The initial timestamp that the live output will start at, any content before this value will not be archived. Changing this forces a new Live Output to be created. | 
| **rewind_window_duration** | string |  `ISO 8601` time between 1 minute to the duration of `archive_window_duration` to control seek-able window length during Live. The service won't use this property once LiveOutput stops. The archived VOD will have full content with original ArchiveWindowLength. For example, use `PT1H30M` to indicate 1 hour and 30 minutes of rewind window length. Service will use implicit default value 30m only if Live Event enables LL. Changing this forces a new Live Output to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Live Output. | 

Additionally, all variables are provided as outputs.
