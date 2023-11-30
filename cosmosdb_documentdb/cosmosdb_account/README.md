# azurerm_cosmosdb_account

Manages a CosmosDB (formally DocumentDB) Account.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "cosmosdb_documentdb/cosmosdb_account" 
}

inputs = {
   name = "name of cosmosdb_account" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   offer_type = "offer_type of cosmosdb_account" 
   consistency_policy = "consistency_policy of cosmosdb_account" 
   geo_location = "geo_location of cosmosdb_account" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  Specifies the name of the CosmosDB Account. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the resource group in which the CosmosDB Account is created. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the resource. | 
| **var.offer_type** | string | True | -  |  -  |  Specifies the Offer Type to use for this CosmosDB Account; currently, this can only be set to `Standard`. | 
| **var.analytical_storage** | block | False | -  |  -  |  An `analytical_storage` block. | | `analytical_storage` block structure: || 
|   schema_type (string): (REQUIRED) The schema type of the Analytical Storage for this Cosmos DB account. Possible values are 'FullFidelity' and 'WellDefined'. ||

| **var.capacity** | block | False | -  |  -  |  A `capacity` block. | | `capacity` block structure: || 
|   total_throughput_limit (string): (REQUIRED) The total throughput limit imposed on this Cosmos DB account (RU/s). Possible values are at least '-1'. '-1' means no limit. ||

| **var.create_mode** | string | False | -  |  `Default`, `Restore`  |  The creation mode for the CosmosDB Account. Possible values are `Default` and `Restore`. Changing this forces a new resource to be created. | 
| **var.default_identity_type** | string | False | `FirstPartyIdentity`  |  `FirstPartyIdentity`, `SystemAssignedIdentity`, `UserAssignedIdentity`  |  The default identity for accessing Key Vault. Possible values are `FirstPartyIdentity`, `SystemAssignedIdentity` or `UserAssignedIdentity`. Defaults to `FirstPartyIdentity`. | 
| **var.kind** | string | False | `GlobalDocumentDB`  |  `GlobalDocumentDB`, `MongoDB`, `Parse`  |  Specifies the Kind of CosmosDB to create - possible values are `GlobalDocumentDB`, `MongoDB` and `Parse`. Defaults to `GlobalDocumentDB`. Changing this forces a new resource to be created. | 
| **var.consistency_policy** | block | True | -  |  -  |  Specifies one `consistency_policy` block, used to define the consistency policy for this CosmosDB account. | | `consistency_policy` block structure: || 
|   consistency_level (string): (REQUIRED) The Consistency Level to use for this CosmosDB Account - can be either 'BoundedStaleness', 'Eventual', 'Session', 'Strong' or 'ConsistentPrefix'. ||
|   max_interval_in_seconds (int): When used with the Bounded Staleness consistency level, this value represents the time amount of staleness (in seconds) tolerated. The accepted range for this value is '5' - '86400' (1 day). Defaults to '5'. Required when 'consistency_level' is set to 'BoundedStaleness'. ||
|   max_staleness_prefix (int): When used with the Bounded Staleness consistency level, this value represents the number of stale requests tolerated. The accepted range for this value is '10' – '2147483647'. Defaults to '100'. Required when 'consistency_level' is set to 'BoundedStaleness'. ||

| **var.geo_location** | block | True | -  |  -  |  Specifies a `geo_location` resource, used to define where data should be replicated with the `failover_priority` 0 specifying the primary location. Value is a `geo_location` block. | | `geo_location` block structure: || 
|   location (string): (REQUIRED) The name of the Azure region to host replicated data. ||
|   failover_priority (int): (REQUIRED) The failover priority of the region. A failover priority of '0' indicates a write region. The maximum value for a failover priority = (total number of regions - 1). Failover priority values must be unique for each of the regions in which the database account exists. Changing this causes the location to be re-provisioned and cannot be changed for the location with failover priority '0'. ||
|   zone_redundant (bool): Should zone redundancy be enabled for this region? Defaults to 'false'. ||

| **var.ip_range_filter** | string | False | -  |  -  |  CosmosDB Firewall Support: This value specifies the set of IP addresses or IP address ranges in CIDR form to be included as the allowed list of client IPs for a given database account. IP addresses/ranges must be comma separated and must not contain any spaces. | 
| **var.enable_free_tier** | bool | False | `False`  |  -  |  Enable the Free Tier pricing option for this Cosmos DB account. Defaults to `false`. Changing this forces a new resource to be created. | 
| **var.analytical_storage_enabled** | bool | False | `False`  |  -  |  Enable Analytical Storage option for this Cosmos DB account. Defaults to `false`. Enabling and then disabling analytical storage forces a new resource to be created. | 
| **var.enable_automatic_failover** | bool | False | -  |  -  |  Enable automatic failover for this Cosmos DB account. | 
| **var.public_network_access_enabled** | bool | False | `True`  |  -  |  Whether or not public network access is allowed for this CosmosDB account. Defaults to `true`. | 
| **var.capabilities** | block | False | -  |  -  |  The capabilities which should be enabled for this Cosmos DB account. Value is a `capabilities` block. | | `capabilities` block structure: || 
|   name (string): (REQUIRED) The capability to enable - Possible values are 'AllowSelfServeUpgradeToMongo36', 'DisableRateLimitingResponses', 'EnableAggregationPipeline', 'EnableCassandra', 'EnableGremlin', 'EnableMongo', 'EnableMongo16MBDocumentSupport', 'EnableMongoRetryableWrites', 'EnableMongoRoleBasedAccessControl', 'EnablePartialUniqueIndex', 'EnableServerless', 'EnableTable', 'EnableTtlOnCustomPath', 'EnableUniqueCompoundNestedDocs', 'MongoDBv3.4' and 'mongoEnableDocLevelTTL'. ||

| **var.is_virtual_network_filter_enabled** | bool | False | -  |  -  |  Enables virtual network filtering for this Cosmos DB account. | 
| **var.key_vault_key_id** | string | False | -  |  -  |  A versionless Key Vault Key ID for CMK encryption. Changing this forces a new resource to be created. | 
| **var.virtual_network_rule** | block | False | -  |  -  |  Specifies a `virtual_network_rule` block, used to define which subnets are allowed to access this CosmosDB account. | | `virtual_network_rule` block structure: || 
|   ignore_missing_vnet_service_endpoint (bool): If set to true, the specified subnet will be added as a virtual network rule even if its CosmosDB service endpoint is not active. Defaults to 'false'. ||

| **var.enable_multiple_write_locations** | bool | False | -  |  -  |  Enable multiple write locations for this Cosmos DB account. | 
| **var.access_key_metadata_writes_enabled** | bool | False | `True`  |  -  |  Is write operations on metadata resources (databases, containers, throughput) via account keys enabled? Defaults to `true`. | 
| **var.mongo_server_version** | string | False | -  |  `4.2`, `4.0`, `3.6`, `3.2`  |  The Server Version of a MongoDB account. Possible values are `4.2`, `4.0`, `3.6`, and `3.2`. | 
| **var.network_acl_bypass_for_azure_services** | bool | False | `False`  |  -  |  If Azure services can bypass ACLs. Defaults to `false`. | 
| **var.network_acl_bypass_ids** | string | False | -  |  -  |  The list of resource Ids for Network Acl Bypass for this Cosmos DB account. | 
| **var.local_authentication_disabled** | bool | False | `False`  |  -  |  Disable local authentication and ensure only MSI and AAD can be used exclusively for authentication. Defaults to `false`. Can be set only when using the SQL API. | 
| **var.backup** | block | False | -  |  -  |  A `backup` block. | | `backup` block structure: || 
|   type (string): (REQUIRED) The type of the 'backup'. Possible values are 'Continuous' and 'Periodic'. Migration of 'Periodic' to 'Continuous' is one-way, changing 'Continuous' to 'Periodic' forces a new resource to be created. ||
|   interval_in_minutes (string): The interval in minutes between two backups. This is configurable only when 'type' is 'Periodic'. Possible values are between 60 and 1440. ||
|   retention_in_hours (string): The time in hours that each backup is retained. This is configurable only when 'type' is 'Periodic'. Possible values are between 8 and 720. ||
|   storage_redundancy (string): The storage redundancy is used to indicate the type of backup residency. This is configurable only when 'type' is 'Periodic'. Possible values are 'Geo', 'Local' and 'Zone'. ||

| **var.cors_rule** | block | False | -  |  -  |  A `cors_rule` block. | | `cors_rule` block structure: || 
|   allowed_headers (list): (REQUIRED) A list of headers that are allowed to be a part of the cross-origin request. ||
|   allowed_methods (string): (REQUIRED) A list of HTTP headers that are allowed to be executed by the origin. Valid options are 'DELETE', 'GET', 'HEAD', 'MERGE', 'POST', 'OPTIONS', 'PUT' or 'PATCH'. ||
|   allowed_origins (list): (REQUIRED) A list of origin domains that will be allowed by CORS. ||
|   exposed_headers (list): (REQUIRED) A list of response headers that are exposed to CORS clients. ||
|   max_age_in_seconds (string): The number of seconds the client should cache a preflight response. Possible values are between '1' and '2147483647'. ||

| **var.identity** | block | False | -  |  -  |  An `identity` block. | | `identity` block structure: || 
|   type (string): (REQUIRED) The Type of Managed Identity assigned to this Cosmos account. Possible values are 'SystemAssigned', 'UserAssigned' and 'SystemAssigned, UserAssigned'. ||
|   identity_ids (string): Specifies a list of User Assigned Managed Identity IDs to be assigned to this Cosmos Account. ||

| **var.restore** | block | False | -  |  -  |  A `restore` block. | | `restore` block structure: || 
|   source_cosmosdb_account_id (string): (REQUIRED) The resource ID of the restorable database account from which the restore has to be initiated. The example is '/subscriptions/{subscriptionId}/providers/Microsoft.DocumentDB/locations/{location}/restorableDatabaseAccounts/{restorableDatabaseAccountName}'. Changing this forces a new resource to be created. ||
|   restore_timestamp_in_utc (string): (REQUIRED) The creation time of the database or the collection (Datetime Format 'RFC 3339'). Changing this forces a new resource to be created. ||
|   database (block): A 'database' block. Changing this forces a new resource to be created. ||




## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The CosmosDB Account ID. | 
| **endpoint** | string | No  | The endpoint used to connect to the CosmosDB account. | 
| **read_endpoints** | list | No  | A list of read endpoints available for this CosmosDB account. | 
| **write_endpoints** | list | No  | A list of write endpoints available for this CosmosDB account. | 
| **primary_key** | string | No  | The Primary key for the CosmosDB Account. | 
| **secondary_key** | string | No  | The Secondary key for the CosmosDB Account. | 
| **primary_readonly_key** | string | No  | The Primary read-only Key for the CosmosDB Account. | 
| **secondary_readonly_key** | string | No  | The Secondary read-only key for the CosmosDB Account. | 
| **connection_strings** | list | No  | A list of connection strings available for this CosmosDB account. | 
| **primary_sql_connection_string** | string | No  | Primary SQL connection string for the CosmosDB Account. | 
| **secondary_sql_connection_string** | string | No  | Secondary SQL connection string for the CosmosDB Account. | 
| **primary_readonly_sql_connection_string** | string | No  | Primary readonly SQL connection string for the CosmosDB Account. | 
| **secondary_readonly_sql_connection_string** | string | No  | Secondary readonly SQL connection string for the CosmosDB Account. | 
| **primary_mongodb_connection_string** | string | No  | Primary Mongodb connection string for the CosmosDB Account. | 
| **secondary_mongodb_connection_string** | string | No  | Secondary Mongodb connection string for the CosmosDB Account. | 
| **primary_readonly_mongodb_connection_string** | string | No  | Primary readonly Mongodb connection string for the CosmosDB Account. | 
| **secondary_readonly_mongodb_connection_string** | string | No  | Secondary readonly Mongodb connection string for the CosmosDB Account. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. | 

Additionally, all variables are provided as outputs.
