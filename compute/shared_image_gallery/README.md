# azurerm_shared_image_gallery

Manages a Shared Image Gallery.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "compute/shared_image_gallery"   
}

inputs = {
   name = "Specifies the name of the Shared Image Gallery"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
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
| **name** | string |  Specifies the name of the Shared Image Gallery. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which to create the Shared Image Gallery. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **description** | string |  A description for this Shared Image Gallery. | 
| **sharing** | [block](#sharing-block-structure) |  A `sharing` block. Changing this forces a new resource to be created. | 
| **tags** | map |  A mapping of tags to assign to the Shared Image Gallery. | 

### `community_gallery` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `eula` | string | Yes | - | The End User Licence Agreement for the Shared Image Gallery. Changing this forces a new resource to be created. |
| `prefix` | string | Yes | - | Prefix of the community public name for the Shared Image Gallery. Changing this forces a new resource to be created. |
| `publisher_email` | string | Yes | - | Email of the publisher for the Shared Image Gallery. Changing this forces a new resource to be created. |
| `publisher_uri` | string | Yes | - | URI of the publisher for the Shared Image Gallery. Changing this forces a new resource to be created. |

### `sharing` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `permission` | string | Yes | - | The permission of the Shared Image Gallery when sharing. Possible values are 'Community', 'Groups' and 'Private'. Changing this forces a new resource to be created. |
| `community_gallery` | [block](#community_gallery-block-structure) | No | - | A 'community_gallery' block. Changing this forces a new resource to be created. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Shared Image Gallery. | 
| **unique_name** | string | No  | The Unique Name for this Shared Image Gallery. | 
| **name** | string | No  | The community public name of the Shared Image Gallery. | 

Additionally, all variables are provided as outputs.
