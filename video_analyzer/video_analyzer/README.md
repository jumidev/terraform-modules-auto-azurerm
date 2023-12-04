# azurerm_video_analyzer

Manages a Video Analyzer.!> Video Analyzer (Preview) is now Deprecated and will be Retired on 2022-11-30 - as such the `azurerm_video_analyzer` resource is deprecated and will be removed in v4.0 of the AzureRM Provider.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "video_analyzer/video_analyzer" 
}

inputs = {
   name = "name of video_analyzer" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   storage_account = {
      example_storage_account = {
         user_assigned_identity_id = "..."   
      }
  
   }
 
   identity = {
      example_identity = {
         type = "..."   
         identity_ids = "..."   
      }
  
   }
 
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
| **name** | string |  Specifies the name of the Video Analyzer. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which to create the Video Analyzer. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **storage_account** | [block](#storage_account-block-structure) |  A `storage_account` block. | 
| **identity** | [block](#identity-block-structure) |  An `identity` block. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **tags** | map |  A mapping of tags assigned to the resource. | 

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Video Analyzer instance. Only possible value is 'UserAssigned'. |
| `identity_ids` | string | Yes | - | Specifies a list of User Assigned Managed Identity IDs to be assigned to this Video Analyzer instance. |

### `storage_account` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `user_assigned_identity_id` | string | Yes | - | Specifies the User Assigned Identity ID which should be assigned to access this Storage Account. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Video Analyzer. | 

Additionally, all variables are provided as outputs.
