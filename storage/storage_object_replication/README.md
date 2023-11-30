# azurerm_storage_object_replication

Manages a Storage Object Replication.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.source_storage_account_id** | string | True | The ID of the source storage account. Changing this forces a new Storage Object Replication to be created. | 
| **var.destination_storage_account_id** | string | True | The ID of the destination storage account. Changing this forces a new Storage Object Replication to be created. | 
| **var.rules** | block | True | One or more `rules` blocks. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **source_storage_account_id** | string  | - | 
| **destination_storage_account_id** | string  | - | 
| **rules** | block  | - | 
| **id** | string  | The ID of the Storage Object Replication in the destination storage account. It's composed as format `source_object_replication_id;destination_object_replication_id`. | 
| **source_object_replication_id** | string  | The ID of the Object Replication in the source storage account. | 
| **destination_object_replication_id** | string  | The ID of the Object Replication in the destination storage account. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "storage/storage_object_replication" 
}

inputs = {
   source_storage_account_id = "source_storage_account_id of storage_object_replication" 
   destination_storage_account_id = "destination_storage_account_id of storage_object_replication" 
   rules = "rules of storage_object_replication" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```