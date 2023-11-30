# azurerm_storage_account

Manages an Azure Storage Account.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "storage/storage_account" 
}

inputs = {
   name = "name of storage_account" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   account_tier = "account_tier of storage_account" 
   account_replication_type = "account_replication_type of storage_account" 
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
| **var.name** | string  -  |  Specifies the name of the storage account. Only lowercase Alphanumeric characters allowed. Changing this forces a new resource to be created. This must be unique across the entire Azure service, not just within the resource group. | 
| **var.resource_group_name** | string  -  |  The name of the resource group in which to create the storage account. Changing this forces a new resource to be created. | 
| **var.location** | string  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.account_tier** | string  `Standard`, `Premium`  |  Defines the Tier to use for this storage account. Valid options are `Standard` and `Premium`. For `BlockBlobStorage` and `FileStorage` accounts only `Premium` is valid. Changing this forces a new resource to be created. | 
| **var.account_replication_type** | string  `LRS`, `GRS`, `RAGRS`, `ZRS`, `GZRS`, `RAGZRS`  |  Defines the type of replication to use for this storage account. Valid options are `LRS`, `GRS`, `RAGRS`, `ZRS`, `GZRS` and `RAGZRS`. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **var.account_kind** | string  `StorageV2`  |  `BlobStorage`, `BlockBlobStorage`, `FileStorage`, `Storage`, `StorageV2`  |  Defines the Kind of account. Valid options are `BlobStorage`, `BlockBlobStorage`, `FileStorage`, `Storage` and `StorageV2`. Defaults to `StorageV2`. | 
| **var.cross_tenant_replication_enabled** | bool  `True`  |  -  |  Should cross Tenant replication be enabled? Defaults to `true`. | 
| **var.access_tier** | string  `Hot`  |  `Hot`, `Cool`  |  Defines the access tier for `BlobStorage`, `FileStorage` and `StorageV2` accounts. Valid options are `Hot` and `Cool`, defaults to `Hot`. | 
| **var.edge_zone** | string  -  |  -  |  Specifies the Edge Zone within the Azure Region where this Storage Account should exist. Changing this forces a new Storage Account to be created. | 
| **var.enable_https_traffic_only** | bool  `True`  |  -  |  Boolean flag which forces HTTPS if enabled, see [here](https://docs.microsoft.com/azure/storage/storage-require-secure-transfer/) for more information. Defaults to `true`. | 
| **var.min_tls_version** | string  `TLS1_2`  |  `TLS1_0`, `TLS1_1`, `TLS1_2`  |  The minimum supported TLS version for the storage account. Possible values are `TLS1_0`, `TLS1_1`, and `TLS1_2`. Defaults to `TLS1_2` for new storage accounts. | 
| **var.allow_nested_items_to_be_public** | bool  `True`  |  -  |  Allow or disallow nested items within this Account to opt into being public. Defaults to `true`. | 
| **var.shared_access_key_enabled** | bool  `True`  |  -  |  Indicates whether the storage account permits requests to be authorized with the account access key via Shared Key. If false, then all requests, including shared access signatures, must be authorized with Azure Active Directory (Azure AD). Defaults to `true`. | 
| **var.public_network_access_enabled** | bool  `True`  |  -  |  Whether the public network access is enabled? Defaults to `true`. | 
| **var.default_to_oauth_authentication** | bool  `False`  |  -  |  Default to Azure Active Directory authorization in the Azure portal when accessing the Storage Account. The default value is `false` | 
| **var.is_hns_enabled** | bool  -  |  -  |  Is Hierarchical Namespace enabled? This can be used with Azure Data Lake Storage Gen 2 ([see here for more information](https://docs.microsoft.com/azure/storage/blobs/data-lake-storage-quickstart-create-account/)). Changing this forces a new resource to be created. | 
| **var.nfsv3_enabled** | bool  `False`  |  -  |  Is NFSv3 protocol enabled? Changing this forces a new resource to be created. Defaults to `false`. | 
| **var.custom_domain** | block  -  |  -  |  A `custom_domain` block. | 
| **var.customer_managed_key** | block  -  |  -  |  A `customer_managed_key` block. | 
| **var.identity** | block  -  |  -  |  An `identity` block. | 
| **var.blob_properties** | block  -  |  -  |  A `blob_properties` block. | 
| **var.queue_properties** | block  -  |  -  |  A `queue_properties` block. | 
| **var.static_website** | block  -  |  -  |  A `static_website` block. | 
| **var.share_properties** | block  -  |  -  |  A `share_properties` block. | 
| **var.network_rules** | block  -  |  -  |  A `network_rules` block. | 
| **var.large_file_share_enabled** | bool  -  |  -  |  Is Large File Share Enabled? | 
| **var.azure_files_authentication** | block  -  |  -  |  A `azure_files_authentication` block. | 
| **var.routing** | block  -  |  -  |  A `routing` block. | 
| **var.queue_encryption_key_type** | string  -  |  `Service`, `Account`  |  The encryption type of the queue service. Possible values are `Service` and `Account`. Changing this forces a new resource to be created. Default value is `Service`. | 
| **var.table_encryption_key_type** | string  -  |  `Service`, `Account`  |  The encryption type of the table service. Possible values are `Service` and `Account`. Changing this forces a new resource to be created. Default value is `Service`. | 
| **var.infrastructure_encryption_enabled** | bool  `False`  |  -  |  Is infrastructure encryption enabled? Changing this forces a new resource to be created. Defaults to `false`. | 
| **var.immutability_policy** | block  -  |  -  |  An `immutability_policy` block. Changing this forces a new resource to be created. | 
| **var.sas_policy** | block  -  |  -  |  A `sas_policy` block. | 
| **var.allowed_copy_scope** | string  -  |  `AAD`, `PrivateLink`  |  Restrict copy to and from Storage Accounts within an AAD tenant or with Private Links to the same VNet. Possible values are `AAD` and `PrivateLink`. | 
| **var.sftp_enabled** | bool  -  |  -  |  Boolean, enable SFTP for the storage account | 
| **var.tags** | map  -  |  -  |  A mapping of tags to assign to the resource. | 

### `custom_domain` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `use_subdomain` | bool | No | - | Should the Custom Domain Name be validated by using indirect CNAME validation? |

### `customer_managed_key` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `key_vault_key_id` | string | Yes | - | The ID of the Key Vault Key, supplying a version-less key ID will enable auto-rotation of this key. |
| `user_assigned_identity_id` | string | Yes | - | The ID of a user assigned identity. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Storage Account. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both). |
| `identity_ids` | string | No | - | Specifies a list of User Assigned Managed Identity IDs to be assigned to this Storage Account. |

### `blob_properties` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `cors_rule` | block | No | - | A 'cors_rule' block. |
| `delete_retention_policy` | block | No | - | A 'delete_retention_policy' block. |
| `restore_policy` | block | No | - | A 'restore_policy' block. This must be used together with 'delete_retention_policy' set, 'versioning_enabled' and 'change_feed_enabled' set to 'true'. |
| `versioning_enabled` | bool | No | False | Is versioning enabled? Default to 'false'. |
| `change_feed_enabled` | bool | No | False | Is the blob service properties for change feed events enabled? Default to 'false'. |
| `change_feed_retention_in_days` | string | No | - | The duration of change feed events retention in days. The possible values are between 1 and 146000 days (400 years). Setting this to null (or omit this in the configuration file) indicates an infinite retention of the change feed. |
| `default_service_version` | string | No | - | The API Version which should be used by default for requests to the Data Plane API if an incoming request doesn't specify an API Version. |
| `last_access_time_enabled` | bool | No | False | Is the last access time based tracking enabled? Default to 'false'. |
| `container_delete_retention_policy` | block | No | - | A 'container_delete_retention_policy' block. |

### `queue_properties` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `cors_rule` | block | No | - | A 'cors_rule' block. |
| `logging` | block | No | - | A 'logging' block. |
| `minute_metrics` | block | No | - | A 'minute_metrics' block. |
| `hour_metrics` | block | No | - | A 'hour_metrics' block. |

### `static_website` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `index_document` | string | No | - | The webpage that Azure Storage serves for requests to the root of a website or any subfolder. For example, index.html. The value is case-sensitive. |
| `error_404_document` | string | No | - | The absolute path to a custom webpage that should be used when a request is made which does not correspond to an existing file. |

### `share_properties` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `cors_rule` | block | No | - | A 'cors_rule' block. |
| `retention_policy` | block | No | - | A 'retention_policy' block. |
| `smb` | block | No | - | A 'smb' block. |

### `network_rules` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `default_action` | string | Yes | - | Specifies the default action of allow or deny when no other rules match. Valid options are 'Deny' or 'Allow'. |
| `bypass` | string | No | - | Specifies whether traffic is bypassed for Logging/Metrics/AzureServices. Valid options are any combination of 'Logging', 'Metrics', 'AzureServices', or 'None'. |
| `ip_rules` | string | No | - | List of public IP or IP ranges in CIDR Format. Only IPv4 addresses are allowed. /31 CIDRs, /32 CIDRs, and Private IP address ranges (as defined in [RFC 1918](https://tools.ietf.org/html/rfc1918#section-3)), are not allowed. |
| `virtual_network_subnet_ids` | list | No | - | A list of resource ids for subnets. |
| `private_link_access` | block | No | - | One or more 'private_link_access' block. |

### `azure_files_authentication` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `directory_type` | string | Yes | - | Specifies the directory service used. Possible values are 'AADDS', 'AD' and 'AADKERB'. |
| `active_directory` | block | No | - | A 'active_directory' block. Required when 'directory_type' is 'AD'. |

### `routing` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `publish_internet_endpoints` | bool | No | False | Should internet routing storage endpoints be published? Defaults to 'false'. |
| `publish_microsoft_endpoints` | bool | No | False | Should Microsoft routing storage endpoints be published? Defaults to 'false'. |
| `choice` | string | No | MicrosoftRouting | Specifies the kind of network routing opted by the user. Possible values are 'InternetRouting' and 'MicrosoftRouting'. Defaults to 'MicrosoftRouting'. |

### `immutability_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `allow_protected_append_writes` | bool | Yes | - | When enabled, new blocks can be written to an append blob while maintaining immutability protection and compliance. Only new blocks can be added and any existing blocks cannot be modified or deleted. |
| `state` | string | Yes | - | Defines the mode of the policy. 'Disabled' state disables the policy, 'Unlocked' state allows increase and decrease of immutability retention time and also allows toggling allowProtectedAppendWrites property, 'Locked' state only allows the increase of the immutability retention time. A policy can only be created in a Disabled or Unlocked state and can be toggled between the two states. Only a policy in an Unlocked state can transition to a Locked state which cannot be reverted. |
| `period_since_creation_in_days` | int | Yes | - | The immutability period for the blobs in the container since the policy creation, in days. |

### `sas_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `expiration_period` | string | Yes | - | The SAS expiration period in format of 'DD.HH:MM:SS'. |
| `expiration_action` | string | No | Log | The SAS expiration action. The only possible value is 'Log' at this moment. Defaults to 'Log'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Storage Account. | 
| **primary_location** | string | No  | The primary location of the storage account. | 
| **secondary_location** | string | No  | The secondary location of the storage account. | 
| **primary_blob_endpoint** | string | No  | The endpoint URL for blob storage in the primary location. | 
| **primary_blob_host** | string | No  | The hostname with port if applicable for blob storage in the primary location. | 
| **secondary_blob_endpoint** | string | No  | The endpoint URL for blob storage in the secondary location. | 
| **secondary_blob_host** | string | No  | The hostname with port if applicable for blob storage in the secondary location. | 
| **primary_queue_endpoint** | string | No  | The endpoint URL for queue storage in the primary location. | 
| **primary_queue_host** | string | No  | The hostname with port if applicable for queue storage in the primary location. | 
| **secondary_queue_endpoint** | string | No  | The endpoint URL for queue storage in the secondary location. | 
| **secondary_queue_host** | string | No  | The hostname with port if applicable for queue storage in the secondary location. | 
| **primary_table_endpoint** | string | No  | The endpoint URL for table storage in the primary location. | 
| **primary_table_host** | string | No  | The hostname with port if applicable for table storage in the primary location. | 
| **secondary_table_endpoint** | string | No  | The endpoint URL for table storage in the secondary location. | 
| **secondary_table_host** | string | No  | The hostname with port if applicable for table storage in the secondary location. | 
| **primary_file_endpoint** | string | No  | The endpoint URL for file storage in the primary location. | 
| **primary_file_host** | string | No  | The hostname with port if applicable for file storage in the primary location. | 
| **secondary_file_endpoint** | string | No  | The endpoint URL for file storage in the secondary location. | 
| **secondary_file_host** | string | No  | The hostname with port if applicable for file storage in the secondary location. | 
| **primary_dfs_endpoint** | string | No  | The endpoint URL for DFS storage in the primary location. | 
| **primary_dfs_host** | string | No  | The hostname with port if applicable for DFS storage in the primary location. | 
| **secondary_dfs_endpoint** | string | No  | The endpoint URL for DFS storage in the secondary location. | 
| **secondary_dfs_host** | string | No  | The hostname with port if applicable for DFS storage in the secondary location. | 
| **primary_web_endpoint** | string | No  | The endpoint URL for web storage in the primary location. | 
| **primary_web_host** | string | No  | The hostname with port if applicable for web storage in the primary location. | 
| **secondary_web_endpoint** | string | No  | The endpoint URL for web storage in the secondary location. | 
| **secondary_web_host** | string | No  | The hostname with port if applicable for web storage in the secondary location. | 
| **primary_access_key** | string | No  | The primary access key for the storage account. | 
| **secondary_access_key** | string | No  | The secondary access key for the storage account. | 
| **primary_connection_string** | string | No  | The connection string associated with the primary location. | 
| **secondary_connection_string** | string | No  | The connection string associated with the secondary location. | 
| **primary_blob_connection_string** | string | No  | The connection string associated with the primary blob location. | 
| **secondary_blob_connection_string** | string | No  | The connection string associated with the secondary blob location. | 
| **identity** | block | No  | An `identity` block. | 
| **principal_id** | string | No  | The Principal ID for the Service Principal associated with the Identity of this Storage Account. | 
| **tenant_id** | string | No  | The Tenant ID for the Service Principal associated with the Identity of this Storage Account. | 

Additionally, all variables are provided as outputs.
