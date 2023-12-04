# azurerm_storage_mover_project

Manages a Storage Mover Project.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "storage_mover/storage_mover_project" 
}

inputs = {
   name = "name of storage_mover_project" 
   # storage_mover_id → set in tfstate_inputs
}

tfstate_inputs = {
   storage_mover_id = "path/to/storage_mover_component:id" 
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
| **name** | string |  Specifies the name which should be used for this Storage Mover Project. Changing this forces a new resource to be created. | 
| **storage_mover_id** | string |  Specifies the ID of the storage mover for this Storage Mover Project. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **description** | string |  Specifies a description for this Storage Mover Project. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Storage Mover Project. | 

Additionally, all variables are provided as outputs.
