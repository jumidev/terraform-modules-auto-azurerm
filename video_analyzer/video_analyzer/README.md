# azurerm_video_analyzer

Manages a Video Analyzer.!> Video Analyzer (Preview) is now Deprecated and will be Retired on 2022-11-30 - as such the `azurerm_video_analyzer` resource is deprecated and will be removed in v4.0 of the AzureRM Provider.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the Video Analyzer. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group in which to create the Video Analyzer. Changing this forces a new resource to be created. | 
| **var.location** | string | True | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.storage_account** | block | True | A `storage_account` block. | 
| **var.identity** | block | True | An `identity` block. | 
| **var.tags** | map | False | A mapping of tags assigned to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **storage_account** | block  | - | 
| **identity** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Video Analyzer. | 