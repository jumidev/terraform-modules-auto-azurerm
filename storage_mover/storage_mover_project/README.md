# azurerm_storage_mover_project

Manages a Storage Mover Project.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "storage_mover/storage_mover_project" 
}

inputs = {
   name = "name of storage_mover_project" 
   storage_mover_id = "storage_mover_id of storage_mover_project" 
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
| **var.name** | string | True | Specifies the name which should be used for this Storage Mover Project. Changing this forces a new resource to be created. | 
| **var.storage_mover_id** | string | True | Specifies the ID of the storage mover for this Storage Mover Project. Changing this forces a new resource to be created. | 
| **var.description** | string | False | Specifies a description for this Storage Mover Project. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Storage Mover Project. | 

Additionally, all variables are provided as outputs.
