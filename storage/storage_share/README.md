# azurerm_storage_share

Manages a File Share within Azure Storage.~> **Note:** The storage share supports two storage tiers: premium and standard. Standard file shares are created in general purpose (GPv1 or GPv2) storage accounts and premium file shares are created in FileStorage storage accounts. For further information, refer to the section "What storage tiers are supported in Azure Files?" of [documentation](https://docs.microsoft.com/azure/storage/files/storage-files-faq#general).

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "storage/storage_share" 
}

inputs = {
   name = "name of storage_share" 
   storage_account_name = "storage_account_name of storage_share" 
   quota = "quota of storage_share" 
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
| **var.name** | string |  The name of the share. Must be unique within the storage account where the share is located. Changing this forces a new resource to be created. | 
| **var.storage_account_name** | string |  Specifies the storage account in which to create the share. Changing this forces a new resource to be created. | 
| **var.quota** | string |  The maximum size of the share, in gigabytes. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **var.access_tier** | string |  -  |  `Hot`, `Cool`, `TransactionOptimized`, `Premium`  |  The access tier of the File Share. Possible values are `Hot`, `Cool` and `TransactionOptimized`, `Premium`. | 
| **var.acl** | [block](#acl-block-structure) |  -  |  -  |  One or more `acl` blocks. | 
| **var.enabled_protocol** | string |  `SMB`  |  `SMB`, `NFS`  |  The protocol used for the share. Possible values are `SMB` and `NFS`. The `SMB` indicates the share can be accessed by SMBv3.0, SMBv2.1 and REST. The `NFS` indicates the share can be accessed by NFSv4.1. Defaults to `SMB`. Changing this forces a new resource to be created. | 
| **var.metadata** | string |  -  |  -  |  A mapping of MetaData for this File Share. | 

### `acl` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `access_policy` | [block](#acl-block-structure) | No | - | An 'access_policy' block. |

### `access_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `permissions` | string | Yes | - | The permissions which should be associated with this Shared Identifier. Possible value is combination of 'r' (read), 'w' (write), 'd' (delete), and 'l' (list). |
| `start` | string | No | - | The time at which this Access Policy should be valid from, in [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) format. |
| `expiry` | string | No | - | The time at which this Access Policy should be valid until, in [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) format. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the File Share. | 
| **resource_manager_id** | string | No  | The Resource Manager ID of this File Share. | 
| **url** | string | No  | The URL of the File Share | 

Additionally, all variables are provided as outputs.
