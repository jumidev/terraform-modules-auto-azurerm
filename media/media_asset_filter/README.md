# azurerm_media_asset_filter

Manages an Azure Media Asset Filter.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.asset_id** | string | True | The Asset ID for which the Asset Filter should be created. Changing this forces a new Asset Filter to be created. | 
| **var.name** | string | True | The name which should be used for this Asset Filter. Changing this forces a new Asset Filter to be created. | 
| **var.first_quality_bitrate** | string | False | The first quality bitrate. Sets the first video track to appear in the Live Streaming playlist to allow HLS native players to start downloading from this quality level at the beginning. | 
| **var.presentation_time_range** | block | False | A `presentation_time_range` block. | 
| **var.track_selection** | block | False | One or more `track_selection` blocks. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **asset_id** | string  | - | 
| **name** | string  | - | 
| **first_quality_bitrate** | string  | - | 
| **presentation_time_range** | block  | - | 
| **track_selection** | block  | - | 
| **id** | string  | The ID of the Asset Filter. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "media/media_asset_filter" 
}

inputs = {
   asset_id = "asset_id of media_asset_filter" 
   name = "name of media_asset_filter" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```