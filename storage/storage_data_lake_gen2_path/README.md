# azurerm_storage_data_lake_gen2_path

Manages a Data Lake Gen2 Path in a File System within an Azure Storage Account.~> **NOTE:** This resource requires some `Storage` specific roles which are not granted by default. Some of the built-ins roles that can be attributed are [`Storage Account Contributor`](https://docs.microsoft.com/azure/role-based-access-control/built-in-roles#storage-account-contributor), [`Storage Blob Data Owner`](https://docs.microsoft.com/azure/role-based-access-control/built-in-roles#storage-blob-data-owner), [`Storage Blob Data Contributor`](https://docs.microsoft.com/azure/role-based-access-control/built-in-roles#storage-blob-data-contributor), [`Storage Blob Data Reader`](https://docs.microsoft.com/azure/role-based-access-control/built-in-roles#storage-blob-data-reader).

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "storage/storage_data_lake_gen2_path"   
}

inputs = {
   path = "The path which should be created within the Data Lake Gen2 File System in the St..."   
   filesystem_name = "The name of the Data Lake Gen2 File System which should be created within the St..."   
   # storage_account_id → set in tfstate_inputs
   resource = "Specifies the type for path to create"   
}

tfstate_inputs = {
   storage_account_id = "path/to/storage_account_component:id"   
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
| **path** | string |  -  |  The path which should be created within the Data Lake Gen2 File System in the Storage Account. Changing this forces a new resource to be created. | 
| **filesystem_name** | string |  -  |  The name of the Data Lake Gen2 File System which should be created within the Storage Account. Must be unique within the storage account the queue is located. Changing this forces a new resource to be created. | 
| **storage_account_id** | string |  -  |  Specifies the ID of the Storage Account in which the Data Lake Gen2 File System should exist. Changing this forces a new resource to be created. | 
| **resource** | string |  `directory`  |  Specifies the type for path to create. Currently only `directory` is supported. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **owner** | string |  `$superuser`  |  Specifies the Object ID of the Azure Active Directory User to make the owning user. Possible values also include `$superuser`. | 
| **group** | string |  `$superuser`  |  Specifies the Object ID of the Azure Active Directory Group to make the owning group. Possible values also include `$superuser`. | 
| **ace** | [block](#ace-block-structure) |  -  |  One or more `ace` blocks to specify the entries for the ACL for the path. | 

### `ace` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `scope` | bool | No | - | Specifies whether the ACE represents an 'access' entry or a 'default' entry. Default value is 'access'. |
| `type` | string | Yes | - | Specifies the type of entry. Can be 'user', 'group', 'mask' or 'other'. |
| `permissions` | string | Yes | - | Specifies the permissions for the entry in 'rwx' form. For example, 'rwx' gives full permissions but 'r--' only gives read permissions. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Lake Gen2 File System. | 

Additionally, all variables are provided as outputs.
