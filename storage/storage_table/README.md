# azurerm_storage_table



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "storage/storage_table"   
}
inputs = {
   name = "The name of the storage table"   
   # storage_account_name → set in component_inputs
}
component_inputs = {
   storage_account_name = "path/to/storage_account_component:name"   
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
| **name** | string |  The name of the storage table. Only Alphanumeric characters allowed, starting with a letter. Must be unique within the storage account the table is located. Changing this forces a new resource to be created. | 
| **storage_account_name** | string |  Specifies the storage account in which to create the storage table. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **acl** | [block](#acl-block-structure) |  One or more `acl` blocks. | 

### `access_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `expiry` | string | Yes | - | The ISO8061 UTC time at which this Access Policy should be valid until. |
| `permissions` | string | Yes | - | The permissions which should associated with this Shared Identifier. |
| `start` | string | Yes | - | The ISO8061 UTC time at which this Access Policy should be valid from. |

### `acl` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `access_policy` | [block](#access_policy-block-structure) | No | - | An 'access_policy' block. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **start** | string | No  | The ISO8061 UTC time at which this Access Policy should be valid from. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Table within the Storage Account. | 

Additionally, all variables are provided as outputs.
