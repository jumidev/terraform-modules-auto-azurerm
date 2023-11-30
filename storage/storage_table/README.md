# azurerm_storage_table

Manages a Table within an Azure Storage Account.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "storage/storage_table" 
}

inputs = {
   name = "name of storage_table" 
   storage_account_name = "storage_account_name of storage_table" 
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
| **var.name** | string | True | The name of the storage table. Only Alphanumeric characters allowed, starting with a letter. Must be unique within the storage account the table is located. Changing this forces a new resource to be created. | 
| **var.storage_account_name** | string | True | Specifies the storage account in which to create the storage table. Changing this forces a new resource to be created. | 
| **var.acl** | block | False | One or more `acl` blocks. | 

### `acl` block structure

> `access_policy` (block): An 'access_policy' block.\



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Table within the Storage Account. | 

Additionally, all variables are provided as outputs.
