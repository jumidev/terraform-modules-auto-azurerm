# azurerm_storage_account

Manages an Azure Storage Account.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the storage account. Only lowercase Alphanumeric characters allowed. Changing this forces a new resource to be created. This must be unique across the entire Azure service, not just within the resource group. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the storage account. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **account_kind** | string | False | `StorageV2`  |  `BlobStorage`, `BlockBlobStorage`, `FileStorage`, `Storage`, `StorageV2`  | Defines the Kind of account. Valid options are `BlobStorage`, `BlockBlobStorage`, `FileStorage`, `Storage` and `StorageV2`. Defaults to `StorageV2`. | 
| **account_tier** | string | True | -  |  `Standard`, `Premium`  | Defines the Tier to use for this storage account. Valid options are `Standard` and `Premium`. For `BlockBlobStorage` and `FileStorage` accounts only `Premium` is valid. Changing this forces a new resource to be created. | 
| **account_replication_type** | string | True | -  |  `LRS`, `GRS`, `RAGRS`, `ZRS`, `GZRS`, `RAGZRS`  | Defines the type of replication to use for this storage account. Valid options are `LRS`, `GRS`, `RAGRS`, `ZRS`, `GZRS` and `RAGZRS`. | 
| **cross_tenant_replication_enabled** | bool | False | `True`  |  -  | Should cross Tenant replication be enabled? Defaults to `true`. | 
| **access_tier** | string | False | `Hot`  |  `Hot`, `Cool`  | Defines the access tier for `BlobStorage`, `FileStorage` and `StorageV2` accounts. Valid options are `Hot` and `Cool`, defaults to `Hot`. | 
| **edge_zone** | string | False | -  |  -  | Specifies the Edge Zone within the Azure Region where this Storage Account should exist. Changing this forces a new Storage Account to be created. | 
| **enable_https_traffic_only** | bool | False | `True`  |  -  | Boolean flag which forces HTTPS if enabled, see [here](https://docs.microsoft.com/azure/storage/storage-require-secure-transfer/) for more information. Defaults to `true`. | 
| **min_tls_version** | string | False | `TLS1_2`  |  `TLS1_0`, `TLS1_1`, `TLS1_2`  | The minimum supported TLS version for the storage account. Possible values are `TLS1_0`, `TLS1_1`, and `TLS1_2`. Defaults to `TLS1_2` for new storage accounts. | 
| **allow_nested_items_to_be_public** | bool | False | `True`  |  -  | Allow or disallow nested items within this Account to opt into being public. Defaults to `true`. | 
| **shared_access_key_enabled** | bool | False | `True`  |  -  | Indicates whether the storage account permits requests to be authorized with the account access key via Shared Key. If false, then all requests, including shared access signatures, must be authorized with Azure Active Directory (Azure AD). Defaults to `true`. | 
| **public_network_access_enabled** | bool | False | `True`  |  -  | Whether the public network access is enabled? Defaults to `true`. | 
| **default_to_oauth_authentication** | bool | False | `False`  |  -  | Default to Azure Active Directory authorization in the Azure portal when accessing the Storage Account. The default value is `false` | 
| **is_hns_enabled** | bool | False | -  |  -  | Is Hierarchical Namespace enabled? This can be used with Azure Data Lake Storage Gen 2 ([see here for more information](https://docs.microsoft.com/azure/storage/blobs/data-lake-storage-quickstart-create-account/)). Changing this forces a new resource to be created. | 
| **nfsv3_enabled** | bool | False | `False`  |  -  | Is NFSv3 protocol enabled? Changing this forces a new resource to be created. Defaults to `false`. | 
| **custom_domain** | block | False | -  |  -  | A `custom_domain` block. | 
| **customer_managed_key** | block | False | -  |  -  | A `customer_managed_key` block. | 
| **identity** | block | False | -  |  -  | An `identity` block. | 
| **blob_properties** | block | False | -  |  -  | A `blob_properties` block. | 
| **queue_properties** | block | False | -  |  -  | A `queue_properties` block. | 
| **static_website** | block | False | -  |  -  | A `static_website` block. | 
| **share_properties** | block | False | -  |  -  | A `share_properties` block. | 
| **network_rules** | block | False | -  |  -  | A `network_rules` block. | 
| **large_file_share_enabled** | bool | False | -  |  -  | Is Large File Share Enabled? | 
| **azure_files_authentication** | block | False | -  |  -  | A `azure_files_authentication` block. | 
| **routing** | block | False | -  |  -  | A `routing` block. | 
| **queue_encryption_key_type** | string | False | -  |  `Service`, `Account`  | The encryption type of the queue service. Possible values are `Service` and `Account`. Changing this forces a new resource to be created. Default value is `Service`. | 
| **table_encryption_key_type** | string | False | -  |  `Service`, `Account`  | The encryption type of the table service. Possible values are `Service` and `Account`. Changing this forces a new resource to be created. Default value is `Service`. | 
| **infrastructure_encryption_enabled** | bool | False | `False`  |  -  | Is infrastructure encryption enabled? Changing this forces a new resource to be created. Defaults to `false`. | 
| **immutability_policy** | block | False | -  |  -  | An `immutability_policy` block. Changing this forces a new resource to be created. | 
| **sas_policy** | block | False | -  |  -  | A `sas_policy` block. | 
| **allowed_copy_scope** | string | False | -  |  `AAD`, `PrivateLink`  | Restrict copy to and from Storage Accounts within an AAD tenant or with Private Links to the same VNet. Possible values are `AAD` and `PrivateLink`. | 
| **sftp_enabled** | bool | False | -  |  -  | Boolean, enable SFTP for the storage account | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

