# azurerm_storage_account

Manages an Azure Storage Account.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  Specifies the name of the storage account. Only lowercase Alphanumeric characters allowed. Changing this forces a new resource to be created. This must be unique across the entire Azure service, not just within the resource group. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the resource group in which to create the storage account. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.account_kind** | string | False | `StorageV2`  |  `BlobStorage`, `BlockBlobStorage`, `FileStorage`, `Storage`, `StorageV2`  |  Defines the Kind of account. Valid options are `BlobStorage`, `BlockBlobStorage`, `FileStorage`, `Storage` and `StorageV2`. Defaults to `StorageV2`. | 
| **var.account_tier** | string | True | -  |  `Standard`, `Premium`  |  Defines the Tier to use for this storage account. Valid options are `Standard` and `Premium`. For `BlockBlobStorage` and `FileStorage` accounts only `Premium` is valid. Changing this forces a new resource to be created. | 
| **var.account_replication_type** | string | True | -  |  `LRS`, `GRS`, `RAGRS`, `ZRS`, `GZRS`, `RAGZRS`  |  Defines the type of replication to use for this storage account. Valid options are `LRS`, `GRS`, `RAGRS`, `ZRS`, `GZRS` and `RAGZRS`. | 
| **var.cross_tenant_replication_enabled** | bool | False | `True`  |  -  |  Should cross Tenant replication be enabled? Defaults to `true`. | 
| **var.access_tier** | string | False | `Hot`  |  `Hot`, `Cool`  |  Defines the access tier for `BlobStorage`, `FileStorage` and `StorageV2` accounts. Valid options are `Hot` and `Cool`, defaults to `Hot`. | 
| **var.edge_zone** | string | False | -  |  -  |  Specifies the Edge Zone within the Azure Region where this Storage Account should exist. Changing this forces a new Storage Account to be created. | 
| **var.enable_https_traffic_only** | bool | False | `True`  |  -  |  Boolean flag which forces HTTPS if enabled, see [here](https://docs.microsoft.com/azure/storage/storage-require-secure-transfer/) for more information. Defaults to `true`. | 
| **var.min_tls_version** | string | False | `TLS1_2`  |  `TLS1_0`, `TLS1_1`, `TLS1_2`  |  The minimum supported TLS version for the storage account. Possible values are `TLS1_0`, `TLS1_1`, and `TLS1_2`. Defaults to `TLS1_2` for new storage accounts. | 
| **var.allow_nested_items_to_be_public** | bool | False | `True`  |  -  |  Allow or disallow nested items within this Account to opt into being public. Defaults to `true`. | 
| **var.shared_access_key_enabled** | bool | False | `True`  |  -  |  Indicates whether the storage account permits requests to be authorized with the account access key via Shared Key. If false, then all requests, including shared access signatures, must be authorized with Azure Active Directory (Azure AD). Defaults to `true`. | 
| **var.public_network_access_enabled** | bool | False | `True`  |  -  |  Whether the public network access is enabled? Defaults to `true`. | 
| **var.default_to_oauth_authentication** | bool | False | `False`  |  -  |  Default to Azure Active Directory authorization in the Azure portal when accessing the Storage Account. The default value is `false` | 
| **var.is_hns_enabled** | bool | False | -  |  -  |  Is Hierarchical Namespace enabled? This can be used with Azure Data Lake Storage Gen 2 ([see here for more information](https://docs.microsoft.com/azure/storage/blobs/data-lake-storage-quickstart-create-account/)). Changing this forces a new resource to be created. | 
| **var.nfsv3_enabled** | bool | False | `False`  |  -  |  Is NFSv3 protocol enabled? Changing this forces a new resource to be created. Defaults to `false`. | 
| **var.custom_domain** | block | False | -  |  -  |  A `custom_domain` block. | 
| **var.customer_managed_key** | block | False | -  |  -  |  A `customer_managed_key` block. | 
| **var.identity** | block | False | -  |  -  |  An `identity` block. | 
| **var.blob_properties** | block | False | -  |  -  |  A `blob_properties` block. | 
| **var.queue_properties** | block | False | -  |  -  |  A `queue_properties` block. | 
| **var.static_website** | block | False | -  |  -  |  A `static_website` block. | 
| **var.share_properties** | block | False | -  |  -  |  A `share_properties` block. | 
| **var.network_rules** | block | False | -  |  -  |  A `network_rules` block. | 
| **var.large_file_share_enabled** | bool | False | -  |  -  |  Is Large File Share Enabled? | 
| **var.azure_files_authentication** | block | False | -  |  -  |  A `azure_files_authentication` block. | 
| **var.routing** | block | False | -  |  -  |  A `routing` block. | 
| **var.queue_encryption_key_type** | string | False | -  |  `Service`, `Account`  |  The encryption type of the queue service. Possible values are `Service` and `Account`. Changing this forces a new resource to be created. Default value is `Service`. | 
| **var.table_encryption_key_type** | string | False | -  |  `Service`, `Account`  |  The encryption type of the table service. Possible values are `Service` and `Account`. Changing this forces a new resource to be created. Default value is `Service`. | 
| **var.infrastructure_encryption_enabled** | bool | False | `False`  |  -  |  Is infrastructure encryption enabled? Changing this forces a new resource to be created. Defaults to `false`. | 
| **var.immutability_policy** | block | False | -  |  -  |  An `immutability_policy` block. Changing this forces a new resource to be created. | 
| **var.sas_policy** | block | False | -  |  -  |  A `sas_policy` block. | 
| **var.allowed_copy_scope** | string | False | -  |  `AAD`, `PrivateLink`  |  Restrict copy to and from Storage Accounts within an AAD tenant or with Private Links to the same VNet. Possible values are `AAD` and `PrivateLink`. | 
| **var.sftp_enabled** | bool | False | -  |  -  |  Boolean, enable SFTP for the storage account | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **account_kind** | string  | - | 
| **account_tier** | string  | - | 
| **account_replication_type** | string  | - | 
| **cross_tenant_replication_enabled** | bool  | - | 
| **access_tier** | string  | - | 
| **edge_zone** | string  | - | 
| **enable_https_traffic_only** | bool  | - | 
| **min_tls_version** | string  | - | 
| **allow_nested_items_to_be_public** | bool  | - | 
| **shared_access_key_enabled** | bool  | - | 
| **public_network_access_enabled** | bool  | - | 
| **default_to_oauth_authentication** | bool  | - | 
| **is_hns_enabled** | bool  | - | 
| **nfsv3_enabled** | bool  | - | 
| **custom_domain** | block  | - | 
| **customer_managed_key** | block  | - | 
| **identity** | block  | - | 
| **blob_properties** | block  | - | 
| **queue_properties** | block  | - | 
| **static_website** | block  | - | 
| **share_properties** | block  | - | 
| **network_rules** | block  | - | 
| **large_file_share_enabled** | bool  | - | 
| **azure_files_authentication** | block  | - | 
| **routing** | block  | - | 
| **queue_encryption_key_type** | string  | - | 
| **table_encryption_key_type** | string  | - | 
| **infrastructure_encryption_enabled** | bool  | - | 
| **immutability_policy** | block  | - | 
| **sas_policy** | block  | - | 
| **allowed_copy_scope** | string  | - | 
| **sftp_enabled** | bool  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Storage Account. | 
| **primary_location** | string  | The primary location of the storage account. | 
| **secondary_location** | string  | The secondary location of the storage account. | 
| **primary_blob_endpoint** | string  | The endpoint URL for blob storage in the primary location. | 
| **primary_blob_host** | string  | The hostname with port if applicable for blob storage in the primary location. | 
| **secondary_blob_endpoint** | string  | The endpoint URL for blob storage in the secondary location. | 
| **secondary_blob_host** | string  | The hostname with port if applicable for blob storage in the secondary location. | 
| **primary_queue_endpoint** | string  | The endpoint URL for queue storage in the primary location. | 
| **primary_queue_host** | string  | The hostname with port if applicable for queue storage in the primary location. | 
| **secondary_queue_endpoint** | string  | The endpoint URL for queue storage in the secondary location. | 
| **secondary_queue_host** | string  | The hostname with port if applicable for queue storage in the secondary location. | 
| **primary_table_endpoint** | string  | The endpoint URL for table storage in the primary location. | 
| **primary_table_host** | string  | The hostname with port if applicable for table storage in the primary location. | 
| **secondary_table_endpoint** | string  | The endpoint URL for table storage in the secondary location. | 
| **secondary_table_host** | string  | The hostname with port if applicable for table storage in the secondary location. | 
| **primary_file_endpoint** | string  | The endpoint URL for file storage in the primary location. | 
| **primary_file_host** | string  | The hostname with port if applicable for file storage in the primary location. | 
| **secondary_file_endpoint** | string  | The endpoint URL for file storage in the secondary location. | 
| **secondary_file_host** | string  | The hostname with port if applicable for file storage in the secondary location. | 
| **primary_dfs_endpoint** | string  | The endpoint URL for DFS storage in the primary location. | 
| **primary_dfs_host** | string  | The hostname with port if applicable for DFS storage in the primary location. | 
| **secondary_dfs_endpoint** | string  | The endpoint URL for DFS storage in the secondary location. | 
| **secondary_dfs_host** | string  | The hostname with port if applicable for DFS storage in the secondary location. | 
| **primary_web_endpoint** | string  | The endpoint URL for web storage in the primary location. | 
| **primary_web_host** | string  | The hostname with port if applicable for web storage in the primary location. | 
| **secondary_web_endpoint** | string  | The endpoint URL for web storage in the secondary location. | 
| **secondary_web_host** | string  | The hostname with port if applicable for web storage in the secondary location. | 
| **primary_access_key** | string  | The primary access key for the storage account. | 
| **secondary_access_key** | string  | The secondary access key for the storage account. | 
| **primary_connection_string** | string  | The connection string associated with the primary location. | 
| **secondary_connection_string** | string  | The connection string associated with the secondary location. | 
| **primary_blob_connection_string** | string  | The connection string associated with the primary blob location. | 
| **secondary_blob_connection_string** | string  | The connection string associated with the secondary blob location. | 
| **identity** | block  | An `identity` block. | 
| **principal_id** | string  | The Principal ID for the Service Principal associated with the Identity of this Storage Account. | 
| **tenant_id** | string  | The Tenant ID for the Service Principal associated with the Identity of this Storage Account. | 