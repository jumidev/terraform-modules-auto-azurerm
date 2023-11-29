# azurerm_media_asset_filter

Manages an Azure Media Asset Filter.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **asset_id** | string | True | -  |  -  | The Asset ID for which the Asset Filter should be created. Changing this forces a new Asset Filter to be created. | 
| **name** | string | True | -  |  -  | The name which should be used for this Asset Filter. Changing this forces a new Asset Filter to be created. | 
| **first_quality_bitrate** | string | False | -  |  -  | The first quality bitrate. Sets the first video track to appear in the Live Streaming playlist to allow HLS native players to start downloading from this quality level at the beginning. | 
| **presentation_time_range** | block | False | -  |  -  | A `presentation_time_range` block. | 
| **track_selection** | block | False | -  |  -  | One or more `track_selection` blocks. | 

