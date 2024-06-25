# azurerm_storage_share



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "storage/storage_share"   
}
inputs = {
   name = "The name of the share"   
   # storage_account_name → set in component_inputs
   quota = "The maximum size of the share, in gigabytes"   
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

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  The name of the share. Must be unique within the storage account where the share is located. Changing this forces a new resource to be created. | 
| **storage_account_name** | string |  -  |  Specifies the storage account in which to create the share. Changing this forces a new resource to be created. | 
| **quota** | string |  `5120`, `large_file_share_enabled`, `true`, `azurerm_storage_account`  |  The maximum size of the share, in gigabytes. ~>**NOTE:** For Standard storage accounts, by default this must be `1` GB (or higher) and at most `5120` GB (`5` TB). This can be set to a value larger than `5120` GB if `large_file_share_enabled` is set to `true` in the parent `azurerm_storage_account`. ~>**NOTE:** For Premium FileStorage storage accounts, this must be greater than `100` GB and at most `102400` GB (`100` TB). | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **access_tier** | string |  -  |  `Hot`, `Cool`, `TransactionOptimized`, `Premium`  |  The access tier of the File Share. Possible values are `Hot`, `Cool` and `TransactionOptimized`, `Premium`. ~>**NOTE:** The `FileStorage` `account_kind` of the `azurerm_storage_account` requires `Premium` `access_tier`. | 
| **acls** | [block](#acl-block-structure) |  -  |  -  |  One or more `acl` blocks. | 
| **enabled_protocol** | bool |  `False`  |  `NFS`  |  The protocol used for the share. Possible values are `SMB` and `NFS`. The `SMB` indicates the share can be accessed by SMBv3.0, SMBv2.1 and REST. The `NFS` indicates the share can be accessed by NFSv4.1. Defaults to `SMB`. Changing this forces a new resource to be created. ~>**NOTE:** The `FileStorage` `account_kind` of the `azurerm_storage_account` is required for the `NFS` protocol. | 
| **metadata** | string |  -  |  -  |  A mapping of MetaData for this File Share. | 

### `access_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `permissions` | string | Yes | - | The permissions which should be associated with this Shared Identifier. Possible value is combination of 'r' (read), 'w' (write), 'd' (delete), and 'l' (list). ~> **Note:** Permission order is strict at the service side, and permissions need to be listed in the order above. |
| `start` | string | No | - | The time at which this Access Policy should be valid from, in [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) format. |
| `expiry` | string | No | - | The time at which this Access Policy should be valid until, in [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) format. |

### `acl` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `access_policy` | [block](#access_policy-block-structure) | No | - | An 'access_policy' block. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **expiry** | string | No  | The time at which this Access Policy should be valid until, in [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) format. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the File Share. | 
| **resource_manager_id** | string | No  | The Resource Manager ID of this File Share. | 
| **url** | string | No  | The URL of the File Share | 

Additionally, all variables are provided as outputs.
