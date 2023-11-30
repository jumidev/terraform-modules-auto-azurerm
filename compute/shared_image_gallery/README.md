# azurerm_shared_image_gallery

Manages a Shared Image Gallery.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "compute/shared_image_gallery" 
}

inputs = {
   name = "name of shared_image_gallery" 
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
| **var.name** | string |  Specifies the name of the Shared Image Gallery. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  The name of the resource group in which to create the Shared Image Gallery. Changing this forces a new resource to be created. | 
| **var.location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.description** | string |  A description for this Shared Image Gallery. | 
| **var.sharing** | [block](#sharing-block-structure) |  A `sharing` block. Changing this forces a new resource to be created. | 
| **var.tags** | map |  A mapping of tags to assign to the Shared Image Gallery. | 

### `sharing` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `permission` | string | Yes | - | The permission of the Shared Image Gallery when sharing. Possible values are 'Community', 'Groups' and 'Private'. Changing this forces a new resource to be created. |
| `community_gallery` | block | No | - | A 'community_gallery' block. Changing this forces a new resource to be created. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Shared Image Gallery. | 
| **unique_name** | string | No  | The Unique Name for this Shared Image Gallery. | 
| **name** | string | No  | The community public name of the Shared Image Gallery. | 

Additionally, all variables are provided as outputs.
