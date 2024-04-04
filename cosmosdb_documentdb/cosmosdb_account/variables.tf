# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the CosmosDB Account. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which the CosmosDB Account is created. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "offer_type" {
  description = "(REQUIRED) Specifies the Offer Type to use for this CosmosDB Account; currently, this can only be set to 'Standard'."
  type        = string

}
variable "consistency_policy" {
  description = "(REQUIRED) Specifies one 'consistency_policy' block, used to define the consistency policy for this CosmosDB account."
  type        = map(any)
}
#
# consistency_policy block structure:
#   consistency_level (string)        : (REQUIRED) The Consistency Level to use for this CosmosDB Account - can be either 'BoundedStaleness', 'Eventual', 'Session', 'Strong' or 'ConsistentPrefix'.
#   max_interval_in_seconds (number)  : When used with the Bounded Staleness consistency level, this value represents the time amount of staleness (in seconds) tolerated. The accepted range for this value is '5' - '86400' (1 day). Defaults to '5'. Required when 'consistency_level' is set to 'BoundedStaleness'.
#   max_staleness_prefix (number)     : When used with the Bounded Staleness consistency level, this value represents the number of stale requests tolerated. The accepted range for this value is '10' - '2147483647'. Defaults to '100'. Required when 'consistency_level' is set to 'BoundedStaleness'. ~> **Note:** 'max_interval_in_seconds' and 'max_staleness_prefix' can only be set to custom values when 'consistency_level' is set to 'BoundedStaleness' - otherwise they will return the default values shown above.


variable "geo_location" {
  description = "(REQUIRED) Specifies a 'geo_location' resource, used to define where data should be replicated with the 'failover_priority' 0 specifying the primary location. Value is a 'geo_location' block."
  type        = map(any)
}
#
# geo_location block structure:
#   location (string)           : (REQUIRED) The name of the Azure region to host replicated data.
#   failover_priority (number)  : (REQUIRED) The failover priority of the region. A failover priority of '0' indicates a write region. The maximum value for a failover priority = (total number of regions - 1). Failover priority values must be unique for each of the regions in which the database account exists. Changing this causes the location to be re-provisioned and cannot be changed for the location with failover priority '0'.
#   zone_redundant (bool)       : Should zone redundancy be enabled for this region? Defaults to 'false'.



# OPTIONAL VARIABLES

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
variable "analytical_storage" {
  description = "An 'analytical_storage' block."
  type        = map(any)
  default     = null
}
#
# analytical_storage block structure:
#   schema_type (string)              : (REQUIRED) The schema type of the Analytical Storage for this Cosmos DB account. Possible values are 'FullFidelity' and 'WellDefined'.


variable "capacity" {
  description = "A 'capacity' block."
  type        = map(any)
  default     = null
}
#
# capacity block structure       :
#   total_throughput_limit (string): (REQUIRED) The total throughput limit imposed on this Cosmos DB account (RU/s). Possible values are at least '-1'. '-1' means no limit.


variable "create_mode" {
  description = "The creation mode for the CosmosDB Account. Possible values are 'Default' and 'Restore'. Changing this forces a new resource to be created. ~> **NOTE:** 'create_mode' only works when 'backup.type' is 'Continuous'."
  type        = string
  default     = null
}
variable "default_identity_type" {
  description = "The default identity for accessing Key Vault. Possible values are 'FirstPartyIdentity', 'SystemAssignedIdentity' or 'UserAssignedIdentity'. Defaults to 'FirstPartyIdentity'. ~> **NOTE:** When 'default_identity_type' is a 'UserAssignedIdentity' it must include the User Assigned Identity ID in the following format: 'UserAssignedIdentity=/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{userAssignedIdentityName}'."
  type        = string
  default     = "FirstPartyIdentity"
}
variable "kind" {
  description = "Specifies the Kind of CosmosDB to create - possible values are 'GlobalDocumentDB', 'MongoDB' and 'Parse'. Defaults to 'GlobalDocumentDB'. Changing this forces a new resource to be created."
  type        = string
  default     = "GlobalDocumentDB"
}
variable "ip_range_filter" {
  description = "CosmosDB Firewall Support: This value specifies the set of IP addresses or IP address ranges in CIDR form to be included as the allowed list of client IPs for a given database account. IP addresses/ranges must be comma separated and must not contain any spaces. ~> **NOTE:** To enable the 'Allow access from the Azure portal' behavior, you should add the IP addresses provided by the [documentation](https://docs.microsoft.com/azure/cosmos-db/how-to-configure-firewall#allow-requests-from-the-azure-portal) to this list. ~> **NOTE:** To enable the 'Accept connections from within public Azure datacenters' behavior, you should add '0.0.0.0' to the list, see the [documentation](https://docs.microsoft.com/azure/cosmos-db/how-to-configure-firewall#allow-requests-from-global-azure-datacenters-or-other-sources-within-azure) for more details."
  type        = string
  default     = null
}
variable "enable_free_tier" {
  description = "Enable the Free Tier pricing option for this Cosmos DB account. Defaults to 'false'. Changing this forces a new resource to be created."
  type        = bool
  default     = false
}
variable "analytical_storage_enabled" {
  description = "Enable Analytical Storage option for this Cosmos DB account. Defaults to 'false'. Enabling and then disabling analytical storage forces a new resource to be created."
  type        = bool
  default     = false
}
variable "enable_automatic_failover" {
  description = "Enable automatic failover for this Cosmos DB account."
  type        = bool
  default     = null
}
variable "public_network_access_enabled" {
  description = "Whether or not public network access is allowed for this CosmosDB account. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "capabilities" {
  description = "The capabilities which should be enabled for this Cosmos DB account. Value is a 'capabilities' block."
  type        = map(any)
  default     = null
}
#
# capabilities block structure:
#   name (bool)                 : (REQUIRED) The capability to enable - Possible values are 'AllowSelfServeUpgradeToMongo36', 'DisableRateLimitingResponses', 'EnableAggregationPipeline', 'EnableCassandra', 'EnableGremlin', 'EnableMongo', 'EnableMongo16MBDocumentSupport', 'EnableMongoRetryableWrites', 'EnableMongoRoleBasedAccessControl', 'EnablePartialUniqueIndex', 'EnableServerless', 'EnableTable', 'EnableTtlOnCustomPath', 'EnableUniqueCompoundNestedDocs', 'MongoDBv3.4' and 'mongoEnableDocLevelTTL'. ~> **NOTE:** Setting 'MongoDBv3.4' also requires setting 'EnableMongo'. ~> **NOTE:** Only 'AllowSelfServeUpgradeToMongo36', 'DisableRateLimitingResponses', 'EnableAggregationPipeline', 'MongoDBv3.4', 'EnableMongoRetryableWrites', 'EnableMongoRoleBasedAccessControl', 'EnableUniqueCompoundNestedDocs', 'EnableMongo16MBDocumentSupport', 'mongoEnableDocLevelTTL', 'EnableTtlOnCustomPath' and 'EnablePartialUniqueIndex' can be added to an existing Cosmos DB account. ~> **NOTE:** Only 'DisableRateLimitingResponses' and 'EnableMongoRetryableWrites' can be removed from an existing Cosmos DB account.


variable "is_virtual_network_filter_enabled" {
  description = "Enables virtual network filtering for this Cosmos DB account."
  type        = bool
  default     = null
}
variable "key_vault_key_id" {
  description = "A versionless Key Vault Key ID for CMK encryption. Changing this forces a new resource to be created. ~> **NOTE:** When referencing an 'azurerm_key_vault_key' resource, use 'versionless_id' instead of 'id' ~> **NOTE:** In order to use a 'Custom Key' from Key Vault for encryption you must grant Azure Cosmos DB Service access to your key vault. For instructions on how to configure your Key Vault correctly please refer to the [product documentation](https://docs.microsoft.com/azure/cosmos-db/how-to-setup-cmk#add-an-access-policy-to-your-azure-key-vault-instance)"
  type        = string
  default     = null
}
variable "virtual_network_rule" {
  description = "Specifies a 'virtual_network_rule' block, used to define which subnets are allowed to access this CosmosDB account."
  type        = map(any)
  default     = null
}
#
# virtual_network_rule block structure       :
#   ignore_missing_vnet_service_endpoint (bool): If set to true, the specified subnet will be added as a virtual network rule even if its CosmosDB service endpoint is not active. Defaults to 'false'.


variable "enable_multiple_write_locations" {
  description = "Enable multiple write locations for this Cosmos DB account."
  type        = bool
  default     = null
}
variable "access_key_metadata_writes_enabled" {
  description = "Is write operations on metadata resources (databases, containers, throughput) via account keys enabled? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "mongo_server_version" {
  description = "The Server Version of a MongoDB account. Possible values are '4.2', '4.0', '3.6', and '3.2'."
  type        = string
  default     = null
}
variable "network_acl_bypass_for_azure_services" {
  description = "If Azure services can bypass ACLs. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "network_acl_bypass_ids" {
  description = "The list of resource Ids for Network Acl Bypass for this Cosmos DB account."
  type        = string
  default     = null
}
variable "local_authentication_disabled" {
  description = "Disable local authentication and ensure only MSI and AAD can be used exclusively for authentication. Defaults to 'false'. Can be set only when using the SQL API."
  type        = bool
  default     = false
}
variable "backup" {
  description = "A 'backup' block."
  type        = map(any)
  default     = null
}
#
# backup block structure      :
#   type (string)               : (REQUIRED) The type of the 'backup'. Possible values are 'Continuous' and 'Periodic'. Migration of 'Periodic' to 'Continuous' is one-way, changing 'Continuous' to 'Periodic' forces a new resource to be created.
#   interval_in_minutes (number): The interval in minutes between two backups. This is configurable only when 'type' is 'Periodic'. Possible values are between 60 and 1440.
#   retention_in_hours (number) : The time in hours that each backup is retained. This is configurable only when 'type' is 'Periodic'. Possible values are between 8 and 720.
#   storage_redundancy (string) : The storage redundancy is used to indicate the type of backup residency. This is configurable only when 'type' is 'Periodic'. Possible values are 'Geo', 'Local' and 'Zone'.


variable "cors_rule" {
  description = "A 'cors_rule' block."
  type        = map(any)
  default     = null
}
#
# cors_rule block structure  :
#   allowed_headers (list)     : (REQUIRED) A list of headers that are allowed to be a part of the cross-origin request.
#   allowed_methods (list)     : (REQUIRED) A list of HTTP headers that are allowed to be executed by the origin. Valid options are 'DELETE', 'GET', 'HEAD', 'MERGE', 'POST', 'OPTIONS', 'PUT' or 'PATCH'.
#   allowed_origins (list)     : (REQUIRED) A list of origin domains that will be allowed by CORS.
#   exposed_headers (list)     : (REQUIRED) A list of response headers that are exposed to CORS clients.
#   max_age_in_seconds (number): The number of seconds the client should cache a preflight response. Possible values are between '1' and '2147483647'.


variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) The Type of Managed Identity assigned to this Cosmos account. Possible values are 'SystemAssigned', 'UserAssigned' and 'SystemAssigned, UserAssigned'.
#   identity_ids (list)     : Specifies a list of User Assigned Managed Identity IDs to be assigned to this Cosmos Account.


variable "restore" {
  description = "A 'restore' block. ~> **NOTE:** 'restore' should be set when 'create_mode' is 'Restore'."
  type        = map(any)
  default     = null
}
#
# restore block structure            :
#   source_cosmosdb_account_id (string): (REQUIRED) The resource ID of the restorable database account from which the restore has to be initiated. The example is '/subscriptions/{subscriptionId}/providers/Microsoft.DocumentDB/locations/{location}/restorableDatabaseAccounts/{restorableDatabaseAccountName}'. Changing this forces a new resource to be created. ~> **NOTE:** Any database account with 'Continuous' type (live account or accounts deleted in last 30 days) is a restorable database account and there cannot be Create/Update/Delete operations on the restorable database accounts. They can only be read and retrieved by 'azurerm_cosmosdb_restorable_database_accounts'.
#   restore_timestamp_in_utc (string)  : (REQUIRED) The creation time of the database or the collection (Datetime Format 'RFC 3339'). Changing this forces a new resource to be created.
#   database (block)                   : A 'database' block. Changing this forces a new resource to be created.
#
# database block structure:
#   name (string)           : (REQUIRED) The database name for the restore request. Changing this forces a new resource to be created.
#   collection_names (list) : A list of the collection names for the restore request. Changing this forces a new resource to be created.



# OPTIONAL VARIABLES

variable "spring_cloud_app_cosmosdb_association" {
  type    = map(any)
  default = null
}
