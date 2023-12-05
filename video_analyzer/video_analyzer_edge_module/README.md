# azurerm_video_analyzer_edge_module

Manages a Video Analyzer Edge Module.!> Video Analyzer (Preview) is now Deprecated and will be Retired on 2022-11-30 - as such the `azurerm_video_analyzer_edge_module` resource is deprecated and will be removed in v4.0 of the AzureRM Provider.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "video_analyzer/video_analyzer_edge_module"   
}

inputs = {
   name = "name of video_analyzer_edge_module"   
   resource_group_name = "${resource_group}"   
   # video_analyzer_name → set in tfstate_inputs
}

tfstate_inputs = {
   video_analyzer_name = "path/to/video_analyzer_component:name"   
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
| **name** | string |  Specifies the name of the Video Analyzer Edge Module. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which to create the Video Analyzer Edge Module. Changing this forces a new resource to be created. | 
| **video_analyzer_name** | string |  The name of the Video Analyzer in which to create the Edge Module. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Video Analyzer Edge Module. | 

Additionally, all variables are provided as outputs.
