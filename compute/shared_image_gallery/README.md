# azurerm_shared_image_gallery

Manages a Shared Image Gallery.

## Example minimal component.hclt

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

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the Shared Image Gallery. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group in which to create the Shared Image Gallery. Changing this forces a new resource to be created. | 
| **var.location** | string | True | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.description** | string | False | A description for this Shared Image Gallery. | 
| **var.sharing** | block | False | A `sharing` block. Changing this forces a new resource to be created. | 
| `sharing` block structure: || 
|   permission (string): (REQUIRED) The permission of the Shared Image Gallery when sharing. Possible values are 'Community', 'Groups' and 'Private'. Changing this forces a new resource to be created. ||
|   community_gallery (block): A 'community_gallery' block. Changing this forces a new resource to be created. ||
| **var.tags** | map | False | A mapping of tags to assign to the Shared Image Gallery. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Shared Image Gallery. | 
| **unique_name** | string | No  | The Unique Name for this Shared Image Gallery. | 
| **name** | string | No  | The community public name of the Shared Image Gallery. | 

Additionally, all variables are provided as outputs.
