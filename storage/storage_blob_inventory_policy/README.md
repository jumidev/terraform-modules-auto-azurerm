# azurerm_storage_blob_inventory_policy

Manages a Storage Blob Inventory Policy.

## Example minimal component.hclt

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

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.storage_account_id** | string | True | The ID of the storage account to apply this Blob Inventory Policy to. Changing this forces a new Storage Blob Inventory Policy to be created. | 
| **var.rules** | block | True | One or more `rules` blocks. | | `rules` block structure: || 
|   name (string): (REQUIRED) The name which should be used for this Blob Inventory Policy Rule. ||
|   storage_container_name (string): (REQUIRED) The storage container name to store the blob inventory files for this rule. ||
|   format (string): (REQUIRED) The format of the inventory files. Possible values are 'Csv' and 'Parquet'. ||
|   schedule (string): (REQUIRED) The inventory schedule applied by this rule. Possible values are 'Daily' and 'Weekly'. ||
|   scope (string): (REQUIRED) The scope of the inventory for this rule. Possible values are 'Blob' and 'Container'. ||
|   schema_fields (list): (REQUIRED) A list of fields to be included in the inventory. See the [Azure API reference](https://docs.microsoft.com/rest/api/storagerp/blob-inventory-policies/create-or-update#blobinventorypolicydefinition) for all the supported fields. ||
|   filter (block): A 'filter' block. Can only be set when the 'scope' is 'Blob'. ||




## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Storage Blob Inventory Policy. | 

Additionally, all variables are provided as outputs.
