# azurerm_storage_blob_inventory_policy

Manages a Storage Blob Inventory Policy.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "storage/storage_blob_inventory_policy"   
}

inputs = {
   # storage_account_id → set in tfstate_inputs
   rules = {
      this_rules = {
         name = "..."         
         # storage_container_name → set in tfstate_inputs
         format = "..."         
         schedule = "..."         
         scope = "..."         
         schema_fields = "..."         
      }
      
   }
   
}

tfstate_inputs = {
   storage_account_id = "path/to/storage_account_component:id"   
   rules.this_rules.storage_container_name = "path/to/storage_container_component:name"   
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
| **storage_account_id** | string |  The ID of the storage account to apply this Blob Inventory Policy to. Changing this forces a new Storage Blob Inventory Policy to be created. | 
| **rules** | [block](#rules-block-structure) |  One or more `rules` blocks. | 

### `filter` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `blob_types` | string | Yes | - | A set of blob types. Possible values are 'blockBlob', 'appendBlob', and 'pageBlob'. The storage account with 'is_hns_enabled' is 'true' doesn't support 'pageBlob'. |
| `include_blob_versions` | bool | No | False | Includes blob versions in blob inventory or not? Defaults to 'false'. |
| `include_deleted` | bool | No | False | Includes deleted blobs in blob inventory or not? Defaults to 'false'. |
| `include_snapshots` | bool | No | False | Includes blob snapshots in blob inventory or not? Defaults to 'false'. |
| `prefix_match` | string | No | - | A set of strings for blob prefixes to be matched. Maximum of 10 blob prefixes. |
| `exclude_prefixes` | string | No | - | A set of strings for blob prefixes to be excluded. Maximum of 10 blob prefixes. |

### `rules` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name which should be used for this Blob Inventory Policy Rule. |
| `storage_container_name` | string | Yes | - | The storage container name to store the blob inventory files for this rule. |
| `format` | string | Yes | - | The format of the inventory files. Possible values are 'Csv' and 'Parquet'. |
| `schedule` | string | Yes | - | The inventory schedule applied by this rule. Possible values are 'Daily' and 'Weekly'. |
| `scope` | string | Yes | - | The scope of the inventory for this rule. Possible values are 'Blob' and 'Container'. |
| `schema_fields` | list | Yes | - | A list of fields to be included in the inventory. See the [Azure API reference](https://docs.microsoft.com/rest/api/storagerp/blob-inventory-policies/create-or-update#blobinventorypolicydefinition) for all the supported fields. |
| `filter` | [block](#rules-block-structure) | No | - | A 'filter' block. Can only be set when the 'scope' is 'Blob'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Storage Blob Inventory Policy. | 

Additionally, all variables are provided as outputs.
