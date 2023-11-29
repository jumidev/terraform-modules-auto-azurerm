# azurerm_media_services_account_filter

Manages a Media Services Account Filter.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Account Filter. Changing this forces a new Account Filter to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Account Filter should exist. Changing this forces a new Account Filter to be created. | 
| **media_services_account_name** | string | True | -  |  -  | The Media Services account name. Changing this forces a new Account Filter to be created. | 
| **first_quality_bitrate** | string | False | -  |  -  | The first quality bitrate. Sets the first video track to appear in the Live Streaming playlist to allow HLS native players to start downloading from this quality level at the beginning. | 
| **presentation_time_range** | block | False | -  |  -  | A `presentation_time_range` block. | 
| **track_selection** | block | False | -  |  -  | One or more `track_selection` blocks. | 

