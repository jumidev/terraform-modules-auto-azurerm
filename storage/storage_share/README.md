# azurerm_storage_share

Manages a File Share within Azure Storage.~> **Note:** The storage share supports two storage tiers: premium and standard. Standard file shares are created in general purpose (GPv1 or GPv2) storage accounts and premium file shares are created in FileStorage storage accounts. For further information, refer to the section "What storage tiers are supported in Azure Files?" of [documentation](https://docs.microsoft.com/azure/storage/files/storage-files-faq#general).

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the share. Must be unique within the storage account where the share is located. Changing this forces a new resource to be created. | 
| **storage_account_name** | string | True | -  |  -  | Specifies the storage account in which to create the share. Changing this forces a new resource to be created. | 
| **access_tier** | string | False | -  |  `Hot`, `Cool`, `TransactionOptimized`, `Premium`  | The access tier of the File Share. Possible values are `Hot`, `Cool` and `TransactionOptimized`, `Premium`. | 
| **acl** | block | False | -  |  -  | One or more `acl` blocks. | 
| **enabled_protocol** | string | False | `SMB`  |  `SMB`, `NFS`  | The protocol used for the share. Possible values are `SMB` and `NFS`. The `SMB` indicates the share can be accessed by SMBv3.0, SMBv2.1 and REST. The `NFS` indicates the share can be accessed by NFSv4.1. Defaults to `SMB`. Changing this forces a new resource to be created. | 
| **quota** | string | True | -  |  -  | The maximum size of the share, in gigabytes. | 
| **metadata** | string | False | -  |  -  | A mapping of MetaData for this File Share. | 

