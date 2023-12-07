# azurerm_dev_center_project

Manages a Dev Center Project.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "dev_center/dev_center_project"   
}

inputs = {
   # dev_center_id → set in tfstate_inputs
   location = "${location}"   
   name = "Specifies the name of this Dev Center Project"   
   resource_group_name = "${resource_group}"   
}

tfstate_inputs = {
   dev_center_id = "path/to/dev_center_component:id"   
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
| **dev_center_id** | string |  Resource Id of an associated DevCenter. Changing this forces a new Dev Center Project to be created. | 
| **location** | string |  The Azure Region where the Dev Center Project should exist. Changing this forces a new Dev Center Project to be created. | 
| **name** | string |  Specifies the name of this Dev Center Project. Changing this forces a new Dev Center Project to be created. | 
| **resource_group_name** | string |  Specifies the name of the Resource Group within which this Dev Center Project should exist. Changing this forces a new Dev Center Project to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **description** | string |  Description of the project. Changing this forces a new Dev Center Project to be created. | 
| **maximum_dev_boxes_per_user** | number |  When specified, limits the maximum number of Dev Boxes a single user can create across all pools in the project. | 
| **tags** | map |  A mapping of tags which should be assigned to the Dev Center Project. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Dev Center Project. | 
| **dev_center_uri** | string | No  | The URI of the Dev Center resource this project is associated with. | 

Additionally, all variables are provided as outputs.
