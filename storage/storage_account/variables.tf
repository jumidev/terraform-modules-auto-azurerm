# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the storage account. Only lowercase Alphanumeric characters allowed. Changing this forces a new resource to be created. This must be unique across the entire Azure service, not just within the resource group."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the storage account. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "account_tier" {
  description = "(REQUIRED) Defines the Tier to use for this storage account. Valid options are 'Standard' and 'Premium'. For 'BlockBlobStorage' and 'FileStorage' accounts only 'Premium' is valid. Changing this forces a new resource to be created."
  type        = string

}
variable "account_replication_type" {
  description = "(REQUIRED) Defines the type of replication to use for this storage account. Valid options are 'LRS', 'GRS', 'RAGRS', 'ZRS', 'GZRS' and 'RAGZRS'."
  type        = string

}

# OPTIONAL VARIABLES

variable "account_kind" {
  description = "Defines the Kind of account. Valid options are 'BlobStorage', 'BlockBlobStorage', 'FileStorage', 'Storage' and 'StorageV2'. Defaults to 'StorageV2'."
  type        = string
  default     = "StorageV2"
}
variable "cross_tenant_replication_enabled" {
  description = "Should cross Tenant replication be enabled? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "access_tier" {
  description = "Defines the access tier for 'BlobStorage', 'FileStorage' and 'StorageV2' accounts. Valid options are 'Hot' and 'Cool', defaults to 'Hot'."
  type        = string
  default     = "Hot"
}
variable "edge_zone" {
  description = "Specifies the Edge Zone within the Azure Region where this Storage Account should exist. Changing this forces a new Storage Account to be created."
  type        = string
  default     = null
}
variable "enable_https_traffic_only" {
  description = "Boolean flag which forces HTTPS if enabled, see [here](https://docs.microsoft.com/azure/storage/storage-require-secure-transfer/) for more information. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "min_tls_version" {
  description = "The minimum supported TLS version for the storage account. Possible values are 'TLS1_0', 'TLS1_1', and 'TLS1_2'. Defaults to 'TLS1_2' for new storage accounts."
  type        = string
  default     = "TLS1_2"
}
variable "allow_nested_items_to_be_public" {
  description = "Allow or disallow nested items within this Account to opt into being public. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "shared_access_key_enabled" {
  description = "Indicates whether the storage account permits requests to be authorized with the account access key via Shared Key. If false, then all requests, including shared access signatures, must be authorized with Azure Active Directory (Azure AD). Defaults to 'true'."
  type        = bool
  default     = true
}
variable "public_network_access_enabled" {
  description = "Whether the public network access is enabled? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "default_to_oauth_authentication" {
  description = "Default to Azure Active Directory authorization in the Azure portal when accessing the Storage Account. The default value is 'false'"
  type        = bool
  default     = false
}
variable "is_hns_enabled" {
  description = "Is Hierarchical Namespace enabled? This can be used with Azure Data Lake Storage Gen 2 ([see here for more information](https://docs.microsoft.com/azure/storage/blobs/data-lake-storage-quickstart-create-account/)). Changing this forces a new resource to be created."
  type        = bool
  default     = null
}
variable "nfsv3_enabled" {
  description = "Is NFSv3 protocol enabled? Changing this forces a new resource to be created. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "custom_domain" {
  description = "A 'custom_domain' block."
  type        = map(any)
  default     = null
}
#
# custom_domain block structure:
#   use_subdomain (bool)         : Should the Custom Domain Name be validated by using indirect CNAME validation?


variable "customer_managed_key" {
  description = "A 'customer_managed_key' block."
  type        = map(any)
  default     = null
}
#
# customer_managed_key block structure:
#   key_vault_key_id (string)           : (REQUIRED) The ID of the Key Vault Key, supplying a version-less key ID will enable auto-rotation of this key.
#   user_assigned_identity_id (string)  : (REQUIRED) The ID of a user assigned identity.


variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Storage Account. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both).
#   identity_ids (string)   : Specifies a list of User Assigned Managed Identity IDs to be assigned to this Storage Account.


variable "blob_properties" {
  description = "A 'blob_properties' block."
  type        = map(any)
  default     = null
}
#
# blob_properties block structure          :
#   cors_rule (block)                        : A 'cors_rule' block.
#   delete_retention_policy (block)          : A 'delete_retention_policy' block.
#   restore_policy (block)                   : A 'restore_policy' block. This must be used together with 'delete_retention_policy' set, 'versioning_enabled' and 'change_feed_enabled' set to 'true'.
#   versioning_enabled (bool)                : Is versioning enabled? Default to 'false'.
#   change_feed_enabled (bool)               : Is the blob service properties for change feed events enabled? Default to 'false'.
#   change_feed_retention_in_days (string)   : The duration of change feed events retention in days. The possible values are between 1 and 146000 days (400 years). Setting this to null (or omit this in the configuration file) indicates an infinite retention of the change feed.
#   default_service_version (string)         : The API Version which should be used by default for requests to the Data Plane API if an incoming request doesn't specify an API Version.
#   last_access_time_enabled (bool)          : Is the last access time based tracking enabled? Default to 'false'.
#   container_delete_retention_policy (block): A 'container_delete_retention_policy' block.
#
# restore_policy block structure:
#   days (int)                    : (REQUIRED) Specifies the number of days that the blob can be restored, between '1' and '365' days. This must be less than the 'days' specified for 'delete_retention_policy'.
#
# cors_rule block structure:
#   allowed_headers (list)   : (REQUIRED) A list of headers that are allowed to be a part of the cross-origin request.
#   allowed_methods (string) : (REQUIRED) A list of HTTP methods that are allowed to be executed by the origin. Valid options are 'DELETE', 'GET', 'HEAD', 'MERGE', 'POST', 'OPTIONS', 'PUT' or 'PATCH'.
#   allowed_origins (list)   : (REQUIRED) A list of origin domains that will be allowed by CORS.
#   exposed_headers (list)   : (REQUIRED) A list of response headers that are exposed to CORS clients.
#   max_age_in_seconds (int) : (REQUIRED) The number of seconds the client should cache a preflight response.
#
# container_delete_retention_policy block structure:
#   days (int)                                       : Specifies the number of days that the container should be retained, between '1' and '365' days. Defaults to '7'.
#
# delete_retention_policy block structure:
#   days (int)                             : Specifies the number of days that the blob should be retained, between '1' and '365' days. Defaults to '7'.


variable "queue_properties" {
  description = "A 'queue_properties' block."
  type        = map(any)
  default     = null
}
#
# queue_properties block structure:
#   cors_rule (block)               : A 'cors_rule' block.
#   logging (block)                 : A 'logging' block.
#   minute_metrics (block)          : A 'minute_metrics' block.
#   hour_metrics (block)            : A 'hour_metrics' block.
#
# hour_metrics block structure:
#   enabled (bool)              : (REQUIRED) Indicates whether hour metrics are enabled for the Queue service.
#   version (string)            : (REQUIRED) The version of storage analytics to configure.
#   include_apis (string)       : Indicates whether metrics should generate summary statistics for called API operations.
#   retention_policy_days (int) : Specifies the number of days that logs will be retained.
#
# minute_metrics block structure:
#   enabled (bool)                : (REQUIRED) Indicates whether minute metrics are enabled for the Queue service.
#   version (string)              : (REQUIRED) The version of storage analytics to configure.
#   include_apis (string)         : Indicates whether metrics should generate summary statistics for called API operations.
#   retention_policy_days (int)   : Specifies the number of days that logs will be retained.
#
# cors_rule block structure:
#   allowed_headers (list)   : (REQUIRED) A list of headers that are allowed to be a part of the cross-origin request.
#   allowed_methods (string) : (REQUIRED) A list of HTTP methods that are allowed to be executed by the origin. Valid options are 'DELETE', 'GET', 'HEAD', 'MERGE', 'POST', 'OPTIONS', 'PUT' or 'PATCH'.
#   allowed_origins (list)   : (REQUIRED) A list of origin domains that will be allowed by CORS.
#   exposed_headers (list)   : (REQUIRED) A list of response headers that are exposed to CORS clients.
#   max_age_in_seconds (int) : (REQUIRED) The number of seconds the client should cache a preflight response.
#
# logging block structure    :
#   delete (string)            : (REQUIRED) Indicates whether all delete requests should be logged.
#   read (string)              : (REQUIRED) Indicates whether all read requests should be logged.
#   version (string)           : (REQUIRED) The version of storage analytics to configure.
#   write (string)             : (REQUIRED) Indicates whether all write requests should be logged.
#   retention_policy_days (int): Specifies the number of days that logs will be retained.


variable "static_website" {
  description = "A 'static_website' block."
  type        = map(any)
  default     = null
}
#
# static_website block structure:
#   index_document (string)       : The webpage that Azure Storage serves for requests to the root of a website or any subfolder. For example, index.html. The value is case-sensitive.
#   error_404_document (string)   : The absolute path to a custom webpage that should be used when a request is made which does not correspond to an existing file.


variable "share_properties" {
  description = "A 'share_properties' block."
  type        = map(any)
  default     = null
}
#
# share_properties block structure:
#   cors_rule (block)               : A 'cors_rule' block.
#   retention_policy (block)        : A 'retention_policy' block.
#   smb (block)                     : A 'smb' block.
#
# retention_policy block structure:
#   days (int)                      : Specifies the number of days that the 'azurerm_storage_share' should be retained, between '1' and '365' days. Defaults to '7'.
#
# cors_rule block structure:
#   allowed_headers (list)   : (REQUIRED) A list of headers that are allowed to be a part of the cross-origin request.
#   allowed_methods (string) : (REQUIRED) A list of HTTP methods that are allowed to be executed by the origin. Valid options are 'DELETE', 'GET', 'HEAD', 'MERGE', 'POST', 'OPTIONS', 'PUT' or 'PATCH'.
#   allowed_origins (list)   : (REQUIRED) A list of origin domains that will be allowed by CORS.
#   exposed_headers (list)   : (REQUIRED) A list of response headers that are exposed to CORS clients.
#   max_age_in_seconds (int) : (REQUIRED) The number of seconds the client should cache a preflight response.
#
# smb block structure                     :
#   versions (string)                       : A set of SMB protocol versions. Possible values are 'SMB2.1', 'SMB3.0', and 'SMB3.1.1'.
#   authentication_types (string)           : A set of SMB authentication methods. Possible values are 'NTLMv2', and 'Kerberos'.
#   kerberos_ticket_encryption_type (string): A set of Kerberos ticket encryption. Possible values are 'RC4-HMAC', and 'AES-256'.
#   channel_encryption_type (string)        : A set of SMB channel encryption. Possible values are 'AES-128-CCM', 'AES-128-GCM', and 'AES-256-GCM'.
#   multichannel_enabled (bool)             : Indicates whether multichannel is enabled. Defaults to 'false'. This is only supported on Premium storage accounts.


variable "network_rules" {
  description = "A 'network_rules' block."
  type        = map(any)
  default     = null
}
#
# network_rules block structure    :
#   default_action (string)          : (REQUIRED) Specifies the default action of allow or deny when no other rules match. Valid options are 'Deny' or 'Allow'.
#   bypass (string)                  : Specifies whether traffic is bypassed for Logging/Metrics/AzureServices. Valid options are any combination of 'Logging', 'Metrics', 'AzureServices', or 'None'.
#   ip_rules (string)                : List of public IP or IP ranges in CIDR Format. Only IPv4 addresses are allowed. /31 CIDRs, /32 CIDRs, and Private IP address ranges (as defined in [RFC 1918](https://tools.ietf.org/html/rfc1918#section-3)), are not allowed.
#   virtual_network_subnet_ids (list): A list of resource ids for subnets.
#   private_link_access (block)      : One or more 'private_link_access' block.
#
# private_link_access block structure:
#   endpoint_resource_id (string)      : (REQUIRED) The resource id of the resource access rule to be granted access.
#   endpoint_tenant_id (string)        : The tenant id of the resource of the resource access rule to be granted access. Defaults to the current tenant id.


variable "large_file_share_enabled" {
  description = "Is Large File Share Enabled?"
  type        = bool
  default     = null
}
variable "azure_files_authentication" {
  description = "A 'azure_files_authentication' block."
  type        = map(any)
  default     = null
}
#
# azure_files_authentication block structure:
#   directory_type (string)                   : (REQUIRED) Specifies the directory service used. Possible values are 'AADDS', 'AD' and 'AADKERB'.
#   active_directory (block)                  : A 'active_directory' block. Required when 'directory_type' is 'AD'.
#
# active_directory block structure:
#   domain_name (string)            : (REQUIRED) Specifies the primary domain that the AD DNS server is authoritative for.
#   domain_guid (string)            : (REQUIRED) Specifies the domain GUID.
#   domain_sid (string)             : Specifies the security identifier (SID). This is required when 'directory_type' is set to 'AD'.
#   storage_sid (string)            : Specifies the security identifier (SID) for Azure Storage. This is required when 'directory_type' is set to 'AD'.
#   forest_name (string)            : Specifies the Active Directory forest. This is required when 'directory_type' is set to 'AD'.
#   netbios_domain_name (string)    : Specifies the NetBIOS domain name. This is required when 'directory_type' is set to 'AD'.


variable "routing" {
  description = "A 'routing' block."
  type        = map(any)
  default     = null
}
#
# routing block structure           :
#   publish_internet_endpoints (bool) : Should internet routing storage endpoints be published? Defaults to 'false'.
#   publish_microsoft_endpoints (bool): Should Microsoft routing storage endpoints be published? Defaults to 'false'.
#   choice (string)                   : Specifies the kind of network routing opted by the user. Possible values are 'InternetRouting' and 'MicrosoftRouting'. Defaults to 'MicrosoftRouting'.


variable "queue_encryption_key_type" {
  description = "The encryption type of the queue service. Possible values are 'Service' and 'Account'. Changing this forces a new resource to be created. Default value is 'Service'."
  type        = string
  default     = null
}
variable "table_encryption_key_type" {
  description = "The encryption type of the table service. Possible values are 'Service' and 'Account'. Changing this forces a new resource to be created. Default value is 'Service'."
  type        = string
  default     = null
}
variable "infrastructure_encryption_enabled" {
  description = "Is infrastructure encryption enabled? Changing this forces a new resource to be created. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "immutability_policy" {
  description = "An 'immutability_policy' block. Changing this forces a new resource to be created."
  type        = map(any)
  default     = null
}
#
# immutability_policy block structure :
#   allow_protected_append_writes (bool): (REQUIRED) When enabled, new blocks can be written to an append blob while maintaining immutability protection and compliance. Only new blocks can be added and any existing blocks cannot be modified or deleted.
#   state (string)                      : (REQUIRED) Defines the mode of the policy. 'Disabled' state disables the policy, 'Unlocked' state allows increase and decrease of immutability retention time and also allows toggling allowProtectedAppendWrites property, 'Locked' state only allows the increase of the immutability retention time. A policy can only be created in a Disabled or Unlocked state and can be toggled between the two states. Only a policy in an Unlocked state can transition to a Locked state which cannot be reverted.
#   period_since_creation_in_days (int) : (REQUIRED) The immutability period for the blobs in the container since the policy creation, in days.


variable "sas_policy" {
  description = "A 'sas_policy' block."
  type        = map(any)
  default     = null
}
#
# sas_policy block structure:
#   expiration_period (string): (REQUIRED) The SAS expiration period in format of 'DD.HH:MM:SS'.
#   expiration_action (string): The SAS expiration action. The only possible value is 'Log' at this moment. Defaults to 'Log'.


variable "allowed_copy_scope" {
  description = "Restrict copy to and from Storage Accounts within an AAD tenant or with Private Links to the same VNet. Possible values are 'AAD' and 'PrivateLink'."
  type        = string
  default     = null
}
variable "sftp_enabled" {
  description = "Boolean, enable SFTP for the storage account"
  type        = bool
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
