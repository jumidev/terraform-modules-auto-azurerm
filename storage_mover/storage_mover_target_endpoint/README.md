# azurerm_storage_mover_target_endpoint

Manages a Storage Mover Target Endpoint.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "storage_mover/storage_mover_target_endpoint" 
}

inputs = {
   name = "name of storage_mover_target_endpoint" 
   storage_mover_id = "storage_mover_id of storage_mover_target_endpoint" 
   storage_account_id = "storage_account_id of storage_mover_target_endpoint" 
   storage_container_name = "storage_container_name of storage_mover_target_endpoint" 
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
| **var.name** | string | True | Specifies the name which should be used for this Storage Mover Target Endpoint. Changing this forces a new resource to be created. | 
| **var.storage_mover_id** | string | True | Specifies the ID of the storage mover for this Storage Mover Target Endpoint. Changing this forces a new resource to be created. | 
| **var.storage_account_id** | string | True | Specifies the ID of the storage account for this Storage Mover Target Endpoint. Changing this forces a new resource to be created. | 
| **var.storage_container_name** | string | True | Specifies the name of the storage blob container for this Storage Mover Target Endpoint. Changing this forces a new resource to be created. | 
| **var.description** | string | False | Specifies a description for the Storage Mover Target Endpoint. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Storage Mover Target Endpoint. | 

Additionally, all variables are provided as outputs.
