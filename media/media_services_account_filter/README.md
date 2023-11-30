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



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Account Filter. | 

Additionally, all variables are provided as outputs.
