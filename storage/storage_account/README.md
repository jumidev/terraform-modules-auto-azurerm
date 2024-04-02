# azurerm_storage_account



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "storage/storage_account"   
}

inputs = {
   name = "Specifies the name of the storage account"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   account_tier = "Defines the Tier to use for this storage account"   
   account_replication_type = "Defines the type of replication to use for this storage account..."   
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
| **name** | string |  -  |  Specifies the name of the storage account. Only lowercase Alphanumeric characters allowed. Changing this forces a new resource to be created. This must be unique across the entire Azure service, not just within the resource group. | 
| **resource_group_name** | string |  -  |  The name of the resource group in which to create the storage account. Changing this forces a new resource to be created. | 
| **location** | string |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **account_tier** | string |  `Standard`, `Premium`  |  Defines the Tier to use for this storage account. Valid options are `Standard` and `Premium`. For `BlockBlobStorage` and `FileStorage` accounts only `Premium` is valid. Changing this forces a new resource to be created. -> **NOTE:** Blobs with a tier of `Premium` are of account kind `StorageV2`. | 
| **account_replication_type** | string |  `LRS`, `GRS`, `RAGRS`, `ZRS`, `GZRS`, `RAGZRS`  |  Defines the type of replication to use for this storage account. Valid options are `LRS`, `GRS`, `RAGRS`, `ZRS`, `GZRS` and `RAGZRS`. Changing this forces a new resource to be created when types `LRS`, `GRS` and `RAGRS` are changed to `ZRS`, `GZRS` or `RAGZRS` and vice versa. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **account_kind** | string |  `StorageV2`  |  `BlobStorage`, `BlockBlobStorage`, `FileStorage`, `Storage`, `StorageV2`  |  Defines the Kind of account. Valid options are `BlobStorage`, `BlockBlobStorage`, `FileStorage`, `Storage` and `StorageV2`. Defaults to `StorageV2`. -> **NOTE:** Changing the `account_kind` value from `Storage` to `StorageV2` will not trigger a force new on the storage account, it will only upgrade the existing storage account from `Storage` to `StorageV2` keeping the existing storage account in place. | 
| **cross_tenant_replication_enabled** | bool |  `True`  |  -  |  Should cross Tenant replication be enabled? Defaults to `true`. | 
| **access_tier** | string |  `Hot`  |  `Hot`, `Cool`  |  Defines the access tier for `BlobStorage`, `FileStorage` and `StorageV2` accounts. Valid options are `Hot` and `Cool`, defaults to `Hot`. | 
| **edge_zone** | string |  -  |  -  |  Specifies the Edge Zone within the Azure Region where this Storage Account should exist. Changing this forces a new Storage Account to be created. | 
| **enable_https_traffic_only** | bool |  `True`  |  -  |  Boolean flag which forces HTTPS if enabled, see [here](https://docs.microsoft.com/azure/storage/storage-require-secure-transfer/) for more information. Defaults to `true`. | 
| **min_tls_version** | string |  `TLS1_2`  |  `TLS1_0`, `TLS1_1`, `TLS1_2`  |  The minimum supported TLS version for the storage account. Possible values are `TLS1_0`, `TLS1_1`, and `TLS1_2`. Defaults to `TLS1_2` for new storage accounts. -> **NOTE:** At this time `min_tls_version` is only supported in the Public Cloud, China Cloud, and US Government Cloud. | 
| **allow_nested_items_to_be_public** | bool |  `True`  |  -  |  Allow or disallow nested items within this Account to opt into being public. Defaults to `true`. -> **NOTE:** At this time `allow_nested_items_to_be_public` is only supported in the Public Cloud, China Cloud, and US Government Cloud. | 
| **shared_access_key_enabled** | bool |  `True`  |  -  |  Indicates whether the storage account permits requests to be authorized with the account access key via Shared Key. If false, then all requests, including shared access signatures, must be authorized with Azure Active Directory (Azure AD). Defaults to `true`. ~> **Note:** Terraform uses Shared Key Authorisation to provision Storage Containers, Blobs and other items - when Shared Key Access is disabled, you will need to enable [the `storage_use_azuread` flag in the Provider block](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs#storage_use_azuread) to use Azure AD for authentication, however not all Azure Storage services support Active Directory authentication. | 
| **public_network_access_enabled** | bool |  `True`  |  -  |  Whether the public network access is enabled? Defaults to `true`. | 
| **default_to_oauth_authentication** | bool |  `False`  |  -  |  Default to Azure Active Directory authorization in the Azure portal when accessing the Storage Account. The default value is `false` | 
| **is_hns_enabled** | bool |  -  |  `true`, `account_tier`, `Standard`, `Premium`, `account_kind`, `BlockBlobStorage`  |  Is Hierarchical Namespace enabled? This can be used with Azure Data Lake Storage Gen 2 ([see here for more information](https://docs.microsoft.com/azure/storage/blobs/data-lake-storage-quickstart-create-account/)). Changing this forces a new resource to be created. -> **NOTE:** This can only be `true` when `account_tier` is `Standard` or when `account_tier` is `Premium` *and* `account_kind` is `BlockBlobStorage` | 
| **nfsv3_enabled** | bool |  `False`  |  -  |  Is NFSv3 protocol enabled? Changing this forces a new resource to be created. Defaults to `false`. -> **NOTE:** This can only be `true` when `account_tier` is `Standard` and `account_kind` is `StorageV2`, or `account_tier` is `Premium` and `account_kind` is `BlockBlobStorage`. Additionally, the `is_hns_enabled` is `true` and `account_replication_type` must be `LRS` or `RAGRS`. | 
| **custom_domain** | [block](#custom_domain-block-structure) |  -  |  -  |  A `custom_domain` block. | 
| **customer_managed_key** | [block](#customer_managed_key-block-structure) |  -  |  -  |  A `customer_managed_key` block. | 
| **identity** | [block](#identity-block-structure) |  -  |  -  |  An `identity` block. | 
| **blob_properties** | [block](#blob_properties-block-structure) |  -  |  -  |  A `blob_properties` block. | 
| **queue_properties** | [block](#queue_properties-block-structure) |  -  |  -  |  A `queue_properties` block. ~> **NOTE:** `queue_properties` cannot be set when the `account_kind` is set to `BlobStorage` | 
| **static_website** | [block](#static_website-block-structure) |  -  |  -  |  A `static_website` block. ~> **NOTE:** `static_website` can only be set when the `account_kind` is set to `StorageV2` or `BlockBlobStorage`. | 
| **share_properties** | [block](#share_properties-block-structure) |  -  |  -  |  A `share_properties` block. | 
| **network_rules** | [block](#network_rules-block-structure) |  -  |  -  |  A `network_rules` block. | 
| **large_file_share_enabled** | bool |  -  |  -  |  Is Large File Share Enabled? | 
| **azure_files_authentication** | [block](#azure_files_authentication-block-structure) |  -  |  -  |  A `azure_files_authentication` block. | 
| **routing** | [block](#routing-block-structure) |  -  |  -  |  A `routing` block. | 
| **queue_encryption_key_type** | string |  `Service`  |  `Service`, `Account`  |  The encryption type of the queue service. Possible values are `Service` and `Account`. Changing this forces a new resource to be created. Default value is `Service`. | 
| **table_encryption_key_type** | string |  `Service`  |  `Service`, `Account`  |  The encryption type of the table service. Possible values are `Service` and `Account`. Changing this forces a new resource to be created. Default value is `Service`. ~> **NOTE:** For the `queue_encryption_key_type` and `table_encryption_key_type`, the `Account` key type is only allowed when the `account_kind` is set to `StorageV2` | 
| **infrastructure_encryption_enabled** | bool |  `False`  |  -  |  Is infrastructure encryption enabled? Changing this forces a new resource to be created. Defaults to `false`. -> **NOTE:** This can only be `true` when `account_kind` is `StorageV2` or when `account_tier` is `Premium` *and* `account_kind` is one of `BlockBlobStorage` or `FileStorage`. | 
| **immutability_policy** | [block](#immutability_policy-block-structure) |  -  |  -  |  An `immutability_policy` block. Changing this forces a new resource to be created. | 
| **sas_policy** | [block](#sas_policy-block-structure) |  -  |  -  |  A `sas_policy` block. | 
| **allowed_copy_scope** | string |  -  |  `AAD`, `PrivateLink`  |  Restrict copy to and from Storage Accounts within an AAD tenant or with Private Links to the same VNet. Possible values are `AAD` and `PrivateLink`. | 
| **sftp_enabled** | bool |  `False`  |  -  |  Boolean, enable SFTP for the storage account -> **NOTE:** SFTP support requires `is_hns_enabled` set to `true`. [More information on SFTP support can be found here](https://learn.microsoft.com/azure/storage/blobs/secure-file-transfer-protocol-support). Defaults to `false` | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 

### `immutability_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `allow_protected_append_writes` | bool | Yes | - | When enabled, new blocks can be written to an append blob while maintaining immutability protection and compliance. Only new blocks can be added and any existing blocks cannot be modified or deleted. |
| `state` | string | Yes | - | Defines the mode of the policy. 'Disabled' state disables the policy, 'Unlocked' state allows increase and decrease of immutability retention time and also allows toggling allowProtectedAppendWrites property, 'Locked' state only allows the increase of the immutability retention time. A policy can only be created in a Disabled or Unlocked state and can be toggled between the two states. Only a policy in an Unlocked state can transition to a Locked state which cannot be reverted. |
| `period_since_creation_in_days` | number | Yes | - | The immutability period for the blobs in the container since the policy creation, in days. |

### `restore_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `days` | number | Yes | - | Specifies the number of days that the blob can be restored, between '1' and '365' days. This must be less than the 'days' specified for 'delete_retention_policy'. |

### `sas_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `expiration_period` | string | Yes | - | The SAS expiration period in format of 'DD.HH:MM:SS'. |
| `expiration_action` | string | No | Log | The SAS expiration action. The only possible value is 'Log' at this moment. Defaults to 'Log'. |

### `customer_managed_key` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `key_vault_key_id` | string | Yes | - | The ID of the Key Vault Key, supplying a version-less key ID will enable auto-rotation of this key. |
| `user_assigned_identity_id` | string | Yes | - | The ID of a user assigned identity. ~> **NOTE:** 'customer_managed_key' can only be set when the 'account_kind' is set to 'StorageV2' or 'account_tier' set to 'Premium', and the identity type is 'UserAssigned'. |

### `delete_retention_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `days` | number | No | 7 | Specifies the number of days that the blob should be retained, between '1' and '365' days. Defaults to '7'. |

### `static_website` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `index_document` | string | No | - | The webpage that Azure Storage serves for requests to the root of a website or any subfolder. For example, index.html. The value is case-sensitive. |
| `error_404_document` | string | No | - | The absolute path to a custom webpage that should be used when a request is made which does not correspond to an existing file. |

### `retention_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `days` | number | No | 7 | Specifies the number of days that the 'azurerm_storage_share' should be retained, between '1' and '365' days. Defaults to '7'. |

### `blob_properties` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `cors_rule` | [block](#cors_rule-block-structure) | No | - | A 'cors_rule' block. |
| `delete_retention_policy` | [block](#delete_retention_policy-block-structure) | No | - | A 'delete_retention_policy' block. |
| `restore_policy` | [block](#restore_policy-block-structure) | No | - | A 'restore_policy' block. This must be used together with 'delete_retention_policy' set, 'versioning_enabled' and 'change_feed_enabled' set to 'true'. -> **NOTE:** This field cannot be configured when 'kind' is set to 'Storage' (V1). |
| `versioning_enabled` | bool | No | False | Is versioning enabled? Default to 'false'. -> **NOTE:** This field cannot be configured when 'kind' is set to 'Storage' (V1). |
| `change_feed_enabled` | bool | No | False | Is the blob service properties for change feed events enabled? Default to 'false'. -> **NOTE:** This field cannot be configured when 'kind' is set to 'Storage' (V1). |
| `change_feed_retention_in_days` | number | No | - | The duration of change feed events retention in days. The possible values are between 1 and 146000 days (400 years). Setting this to null (or omit this in the configuration file) indicates an infinite retention of the change feed. -> **NOTE:** This field cannot be configured when 'kind' is set to 'Storage' (V1). |
| `default_service_version` | string | No | - | The API Version which should be used by default for requests to the Data Plane API if an incoming request doesn't specify an API Version. |
| `last_access_time_enabled` | bool | No | False | Is the last access time based tracking enabled? Default to 'false'. -> **NOTE:** This field cannot be configured when 'kind' is set to 'Storage' (V1). |
| `container_delete_retention_policy` | [block](#container_delete_retention_policy-block-structure) | No | - | A 'container_delete_retention_policy' block. |

### `network_rules` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `default_action` | string | Yes | - | Specifies the default action of allow or deny when no other rules match. Valid options are 'Deny' or 'Allow'. |
| `bypass` | string | No | - | Specifies whether traffic is bypassed for Logging/Metrics/AzureServices. Valid options are any combination of 'Logging', 'Metrics', 'AzureServices', or 'None'. |
| `ip_rules` | string | No | - | List of public IP or IP ranges in CIDR Format. Only IPv4 addresses are allowed. /31 CIDRs, /32 CIDRs, and Private IP address ranges (as defined in [RFC 1918](https://tools.ietf.org/html/rfc1918#section-3)), are not allowed. |
| `virtual_network_subnet_ids` | list | No | - | A list of resource ids for subnets. |
| `private_link_access` | [block](#private_link_access-block-structure) | No | - | One or more 'private_link_access' block. ~> **Note:** If specifying 'network_rules', one of either 'ip_rules' or 'virtual_network_subnet_ids' must be specified and 'default_action' must be set to 'Deny'. ~> **NOTE:** Network Rules can be defined either directly on the 'azurerm_storage_account' resource, or using the 'azurerm_storage_account_network_rules' resource - but the two cannot be used together. If both are used against the same Storage Account, spurious changes will occur. When managing Network Rules using this resource, to change from a 'default_action' of 'Deny' to 'Allow' requires defining, rather than removing, the block. |

### `active_directory` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `domain_name` | string | Yes | - | Specifies the primary domain that the AD DNS server is authoritative for. |
| `domain_guid` | string | Yes | - | Specifies the domain GUID. |
| `domain_sid` | string | No | - | Specifies the security identifier (SID). This is required when 'directory_type' is set to 'AD'. |
| `storage_sid` | string | No | - | Specifies the security identifier (SID) for Azure Storage. This is required when 'directory_type' is set to 'AD'. |
| `forest_name` | string | No | - | Specifies the Active Directory forest. This is required when 'directory_type' is set to 'AD'. |
| `netbios_domain_name` | string | No | - | Specifies the NetBIOS domain name. This is required when 'directory_type' is set to 'AD'. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Storage Account. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both). |
| `identity_ids` | list | No | - | Specifies a list of User Assigned Managed Identity IDs to be assigned to this Storage Account. ~> **NOTE:** This is required when 'type' is set to 'UserAssigned' or 'SystemAssigned, UserAssigned'. ~> The assigned 'principal_id' and 'tenant_id' can be retrieved after the identity 'type' has been set to 'SystemAssigned'  and Storage Account has been created. More details are available below. |

### `private_link_access` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `endpoint_resource_id` | string | Yes | - | The resource id of the resource access rule to be granted access. |
| `endpoint_tenant_id` | string | No | - | The tenant id of the resource of the resource access rule to be granted access. Defaults to the current tenant id. |

### `queue_properties` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `cors_rule` | [block](#cors_rule-block-structure) | No | - | A 'cors_rule' block. |
| `logging` | [block](#logging-block-structure) | No | - | A 'logging' block. |
| `minute_metrics` | [block](#minute_metrics-block-structure) | No | - | A 'minute_metrics' block. |
| `hour_metrics` | [block](#hour_metrics-block-structure) | No | - | A 'hour_metrics' block. |

### `hour_metrics` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enabled` | bool | Yes | - | Indicates whether hour metrics are enabled for the Queue service. |
| `version` | string | Yes | - | The version of storage analytics to configure. |
| `include_apis` | string | No | - | Indicates whether metrics should generate summary statistics for called API operations. |
| `retention_policy_days` | number | No | - | Specifies the number of days that logs will be retained. |

### `custom_domain` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The Custom Domain Name to use for the Storage Account, which will be validated by Azure. |
| `use_subdomain` | bool | No | - | Should the Custom Domain Name be validated by using indirect CNAME validation? |

### `smb` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `versions` | string | No | - | A set of SMB protocol versions. Possible values are 'SMB2.1', 'SMB3.0', and 'SMB3.1.1'. |
| `authentication_types` | string | No | - | A set of SMB authentication methods. Possible values are 'NTLMv2', and 'Kerberos'. |
| `kerberos_ticket_encryption_type` | string | No | - | A set of Kerberos ticket encryption. Possible values are 'RC4-HMAC', and 'AES-256'. |
| `channel_encryption_type` | string | No | - | A set of SMB channel encryption. Possible values are 'AES-128-CCM', 'AES-128-GCM', and 'AES-256-GCM'. |
| `multichannel_enabled` | bool | No | False | Indicates whether multichannel is enabled. Defaults to 'false'. This is only supported on Premium storage accounts. |

### `azure_files_authentication` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `directory_type` | string | Yes | - | Specifies the directory service used. Possible values are 'AADDS', 'AD' and 'AADKERB'. |
| `active_directory` | [block](#active_directory-block-structure) | No | - | A 'active_directory' block. Required when 'directory_type' is 'AD'. |

### `logging` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `delete` | string | Yes | - | Indicates whether all delete requests should be logged. |
| `read` | string | Yes | - | Indicates whether all read requests should be logged. |
| `version` | string | Yes | - | The version of storage analytics to configure. |
| `write` | string | Yes | - | Indicates whether all write requests should be logged. |
| `retention_policy_days` | number | No | - | Specifies the number of days that logs will be retained. |

### `container_delete_retention_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `days` | number | No | 7 | Specifies the number of days that the container should be retained, between '1' and '365' days. Defaults to '7'. |

### `share_properties` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `cors_rule` | [block](#cors_rule-block-structure) | No | - | A 'cors_rule' block. |
| `retention_policy` | [block](#retention_policy-block-structure) | No | - | A 'retention_policy' block. |
| `smb` | [block](#smb-block-structure) | No | - | A 'smb' block. |

### `routing` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `publish_internet_endpoints` | bool | No | False | Should internet routing storage endpoints be published? Defaults to 'false'. |
| `publish_microsoft_endpoints` | bool | No | False | Should Microsoft routing storage endpoints be published? Defaults to 'false'. |
| `choice` | string | No | MicrosoftRouting | Specifies the kind of network routing opted by the user. Possible values are 'InternetRouting' and 'MicrosoftRouting'. Defaults to 'MicrosoftRouting'. |

### `cors_rule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `allowed_headers` | list | Yes | - | A list of headers that are allowed to be a part of the cross-origin request. |
| `allowed_methods` | list | Yes | - | A list of HTTP methods that are allowed to be executed by the origin. Valid options are 'DELETE', 'GET', 'HEAD', 'MERGE', 'POST', 'OPTIONS', 'PUT' or 'PATCH'. |
| `allowed_origins` | list | Yes | - | A list of origin domains that will be allowed by CORS. |
| `exposed_headers` | list | Yes | - | A list of response headers that are exposed to CORS clients. |
| `max_age_in_seconds` | number | Yes | - | The number of seconds the client should cache a preflight response. |

### `minute_metrics` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enabled` | bool | Yes | - | Indicates whether minute metrics are enabled for the Queue service. |
| `version` | string | Yes | - | The version of storage analytics to configure. |
| `include_apis` | string | No | - | Indicates whether metrics should generate summary statistics for called API operations. |
| `retention_policy_days` | number | No | - | Specifies the number of days that logs will be retained. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Storage Account. | 
| **primary_location** | string | No  | The primary location of the storage account. | 
| **secondary_location** | string | No  | The secondary location of the storage account. | 
| **primary_blob_endpoint** | string | No  | The endpoint URL for blob storage in the primary location. | 
| **primary_blob_host** | string | No  | The hostname with port if applicable for blob storage in the primary location. | 
| **primary_blob_internet_endpoint** | string | No  | The internet routing endpoint URL for blob storage in the primary location. | 
| **primary_blob_internet_host** | string | No  | The internet routing hostname with port if applicable for blob storage in the primary location. | 
| **primary_blob_microsoft_endpoint** | string | No  | The microsoft routing endpoint URL for blob storage in the primary location. | 
| **primary_blob_microsoft_host** | string | No  | The microsoft routing hostname with port if applicable for blob storage in the primary location. | 
| **secondary_blob_endpoint** | string | No  | The endpoint URL for blob storage in the secondary location. | 
| **secondary_blob_host** | string | No  | The hostname with port if applicable for blob storage in the secondary location. | 
| **secondary_blob_internet_endpoint** | string | No  | The internet routing endpoint URL for blob storage in the secondary location. | 
| **secondary_blob_internet_host** | string | No  | The internet routing hostname with port if applicable for blob storage in the secondary location. | 
| **secondary_blob_microsoft_endpoint** | string | No  | The microsoft routing endpoint URL for blob storage in the secondary location. | 
| **secondary_blob_microsoft_host** | string | No  | The microsoft routing hostname with port if applicable for blob storage in the secondary location. | 
| **primary_queue_endpoint** | string | No  | The endpoint URL for queue storage in the primary location. | 
| **primary_queue_host** | string | No  | The hostname with port if applicable for queue storage in the primary location. | 
| **primary_queue_microsoft_endpoint** | string | No  | The microsoft routing endpoint URL for queue storage in the primary location. | 
| **primary_queue_microsoft_host** | string | No  | The microsoft routing hostname with port if applicable for queue storage in the primary location. | 
| **secondary_queue_endpoint** | string | No  | The endpoint URL for queue storage in the secondary location. | 
| **secondary_queue_host** | string | No  | The hostname with port if applicable for queue storage in the secondary location. | 
| **secondary_queue_microsoft_endpoint** | string | No  | The microsoft routing endpoint URL for queue storage in the secondary location. | 
| **secondary_queue_microsoft_host** | string | No  | The microsoft routing hostname with port if applicable for queue storage in the secondary location. | 
| **primary_table_endpoint** | string | No  | The endpoint URL for table storage in the primary location. | 
| **primary_table_host** | string | No  | The hostname with port if applicable for table storage in the primary location. | 
| **primary_table_microsoft_endpoint** | string | No  | The microsoft routing endpoint URL for table storage in the primary location. | 
| **primary_table_microsoft_host** | string | No  | The microsoft routing hostname with port if applicable for table storage in the primary location. | 
| **secondary_table_endpoint** | string | No  | The endpoint URL for table storage in the secondary location. | 
| **secondary_table_host** | string | No  | The hostname with port if applicable for table storage in the secondary location. | 
| **secondary_table_microsoft_endpoint** | string | No  | The microsoft routing endpoint URL for table storage in the secondary location. | 
| **secondary_table_microsoft_host** | string | No  | The microsoft routing hostname with port if applicable for table storage in the secondary location. | 
| **primary_file_endpoint** | string | No  | The endpoint URL for file storage in the primary location. | 
| **primary_file_host** | string | No  | The hostname with port if applicable for file storage in the primary location. | 
| **primary_file_internet_endpoint** | string | No  | The internet routing endpoint URL for file storage in the primary location. | 
| **primary_file_internet_host** | string | No  | The internet routing hostname with port if applicable for file storage in the primary location. | 
| **primary_file_microsoft_endpoint** | string | No  | The microsoft routing endpoint URL for file storage in the primary location. | 
| **primary_file_microsoft_host** | string | No  | The microsoft routing hostname with port if applicable for file storage in the primary location. | 
| **secondary_file_endpoint** | string | No  | The endpoint URL for file storage in the secondary location. | 
| **secondary_file_host** | string | No  | The hostname with port if applicable for file storage in the secondary location. | 
| **secondary_file_internet_endpoint** | string | No  | The internet routing endpoint URL for file storage in the secondary location. | 
| **secondary_file_internet_host** | string | No  | The internet routing hostname with port if applicable for file storage in the secondary location. | 
| **secondary_file_microsoft_endpoint** | string | No  | The microsoft routing endpoint URL for file storage in the secondary location. | 
| **secondary_file_microsoft_host** | string | No  | The microsoft routing hostname with port if applicable for file storage in the secondary location. | 
| **primary_dfs_endpoint** | string | No  | The endpoint URL for DFS storage in the primary location. | 
| **primary_dfs_host** | string | No  | The hostname with port if applicable for DFS storage in the primary location. | 
| **primary_dfs_internet_endpoint** | string | No  | The internet routing endpoint URL for DFS storage in the primary location. | 
| **primary_dfs_internet_host** | string | No  | The internet routing hostname with port if applicable for DFS storage in the primary location. | 
| **primary_dfs_microsoft_endpoint** | string | No  | The microsoft routing endpoint URL for DFS storage in the primary location. | 
| **primary_dfs_microsoft_host** | string | No  | The microsoft routing hostname with port if applicable for DFS storage in the primary location. | 
| **secondary_dfs_endpoint** | string | No  | The endpoint URL for DFS storage in the secondary location. | 
| **secondary_dfs_host** | string | No  | The hostname with port if applicable for DFS storage in the secondary location. | 
| **secondary_dfs_internet_endpoint** | string | No  | The internet routing endpoint URL for DFS storage in the secondary location. | 
| **secondary_dfs_internet_host** | string | No  | The internet routing hostname with port if applicable for DFS storage in the secondary location. | 
| **secondary_dfs_microsoft_endpoint** | string | No  | The microsoft routing endpoint URL for DFS storage in the secondary location. | 
| **secondary_dfs_microsoft_host** | string | No  | The microsoft routing hostname with port if applicable for DFS storage in the secondary location. | 
| **primary_web_endpoint** | string | No  | The endpoint URL for web storage in the primary location. | 
| **primary_web_host** | string | No  | The hostname with port if applicable for web storage in the primary location. | 
| **primary_web_internet_endpoint** | string | No  | The internet routing endpoint URL for web storage in the primary location. | 
| **primary_web_internet_host** | string | No  | The internet routing hostname with port if applicable for web storage in the primary location. | 
| **primary_web_microsoft_endpoint** | string | No  | The microsoft routing endpoint URL for web storage in the primary location. | 
| **primary_web_microsoft_host** | string | No  | The microsoft routing hostname with port if applicable for web storage in the primary location. | 
| **secondary_web_endpoint** | string | No  | The endpoint URL for web storage in the secondary location. | 
| **secondary_web_host** | string | No  | The hostname with port if applicable for web storage in the secondary location. | 
| **secondary_web_internet_endpoint** | string | No  | The internet routing endpoint URL for web storage in the secondary location. | 
| **secondary_web_internet_host** | string | No  | The internet routing hostname with port if applicable for web storage in the secondary location. | 
| **secondary_web_microsoft_endpoint** | string | No  | The microsoft routing endpoint URL for web storage in the secondary location. | 
| **secondary_web_microsoft_host** | string | No  | The microsoft routing hostname with port if applicable for web storage in the secondary location. | 
| **primary_access_key** | string | Yes  | The primary access key for the storage account. | 
| **secondary_access_key** | string | Yes  | The secondary access key for the storage account. | 
| **primary_connection_string** | string | Yes  | The connection string associated with the primary location. | 
| **secondary_connection_string** | string | Yes  | The connection string associated with the secondary location. | 
| **primary_blob_connection_string** | string | Yes  | The connection string associated with the primary blob location. | 
| **secondary_blob_connection_string** | string | Yes  | The connection string associated with the secondary blob location. ~> **NOTE:** If there's a write-lock on the Storage Account, or the account doesn't have permission then these fields will have an empty value [due to a bug in the Azure API](https://github.com/Azure/azure-rest-api-specs/issues/6363) | 
| **identity** | block | No  | An `identity` block. | 
| **principal_id** | string | No  | The Principal ID for the Service Principal associated with the Identity of this Storage Account. | 
| **tenant_id** | string | No  | The Tenant ID for the Service Principal associated with the Identity of this Storage Account. -> You can access the Principal ID via `${azurerm_storage_account.example.identity.0.principal_id}` and the Tenant ID via `${azurerm_storage_account.example.identity.0.tenant_id}` | 

Additionally, all variables are provided as outputs.
