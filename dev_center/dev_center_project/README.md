# azurerm_dev_center_project

Manages a Dev Center Project.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "dev_center/dev_center_project" 
}

inputs = {
   dev_center_id = "dev_center_id of dev_center_project" 
   location = "${location}" 
   name = "name of dev_center_project" 
   resource_group_name = "${resource_group}" 
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
| **var.dev_center_id** | string  Resource Id of an associated DevCenter. Changing this forces a new Dev Center Project to be created. | 
| **var.location** | string  The Azure Region where the Dev Center Project should exist. Changing this forces a new Dev Center Project to be created. | 
| **var.name** | string  Specifies the name of this Dev Center Project. Changing this forces a new Dev Center Project to be created. | 
| **var.resource_group_name** | string  Specifies the name of the Resource Group within which this Dev Center Project should exist. Changing this forces a new Dev Center Project to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.description** | string  Description of the project. Changing this forces a new Dev Center Project to be created. | 
| **var.maximum_dev_boxes_per_user** | int  When specified, limits the maximum number of Dev Boxes a single user can create across all pools in the project. | 
| **var.tags** | map  A mapping of tags which should be assigned to the Dev Center Project. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Dev Center Project. | 
| **dev_center_uri** | string | No  | The URI of the Dev Center resource this project is associated with. | 

Additionally, all variables are provided as outputs.
