# azurerm_storage_blob_inventory_policy

Manages a Storage Blob Inventory Policy.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.storage_account_id** | string | True | The ID of the storage account to apply this Blob Inventory Policy to. Changing this forces a new Storage Blob Inventory Policy to be created. | 
| **var.rules** | block | True | One or more `rules` blocks. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **storage_account_id** | string  | - | 
| **rules** | block  | - | 
| **id** | string  | The ID of the Storage Blob Inventory Policy. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "storage/storage_blob_inventory_policy" 
}

inputs = {
   storage_account_id = "storage_account_id of storage_blob_inventory_policy" 
   rules = "rules of storage_blob_inventory_policy" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```