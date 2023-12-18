# azurerm_cosmosdb_account

Manages a CosmosDB (formally DocumentDB) Account.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "cosmosdb_documentdb/cosmosdb_account"   
}

inputs = {
   name = "Specifies the name of the CosmosDB Account"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   offer_type = "Specifies the Offer Type to use for this CosmosDB Account; currently, this can o..."   
   consistency_policy = {
      consistency_level = "..."      
   }
   
   geo_location = {
      location = "..."      
      failover_priority = "..."      
   }
   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```
## Optional associated resource


### `spring_cloud_app_cosmosdb_association` 

If set, makes a **azurerm_spring_cloud_app_cosmosdb_association** - With the following options:

| attribute | type | required? | default |
| --------- | ---- | --------- | ------- |
| `name` | string | True | null |
| `spring_cloud_app_id` | string | True | null |
| `api_type` | string | True | null |
| `cosmosdb_access_key` | string | True | null |
| `cosmosdb_cassandra_keyspace_name` | string | False | null |
| `cosmosdb_gremlin_database_name` | string | False | null |
| `cosmosdb_gremlin_graph_name` | string | False | null |
| `cosmosdb_mongo_database_name` | string | False | null |
| `cosmosdb_sql_database_name` | string | False | null |


Example component snippet:

```hcl
inputs = {
   spring_cloud_app_cosmosdb_association = {
      name = "..."      
      api_type = "..."      
      cosmosdb_access_key = "..."      
   }
   
}

tfstate_inputs = {
   spring_cloud_app_cosmosdb_association.spring_cloud_app_id = "path/to/spring_cloud_app_component:id"   
}

```


## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  Specifies the name of the CosmosDB Account. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  The name of the resource group in which the CosmosDB Account is created. Changing this forces a new resource to be created. | 
| **location** | string |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **offer_type** | string |  `Standard`  |  Specifies the Offer Type to use for this CosmosDB Account; currently, this can only be set to `Standard`. | 
| **consistency_policy** | [block](#consistency_policy-block-structure) |  -  |  Specifies one `consistency_policy` block, used to define the consistency policy for this CosmosDB account. | 
| **geo_location** | [block](#geo_location-block-structure) |  -  |  Specifies a `geo_location` resource, used to define where data should be replicated with the `failover_priority` 0 specifying the primary location. Value is a `geo_location` block. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 
| **analytical_storage** | [block](#analytical_storage-block-structure) |  -  |  -  |  An `analytical_storage` block. | 
| **capacity** | [block](#capacity-block-structure) |  -  |  -  |  A `capacity` block. | 
| **create_mode** | string |  -  |  `Default`, `Restore`  |  The creation mode for the CosmosDB Account. Possible values are `Default` and `Restore`. Changing this forces a new resource to be created. | 
| **default_identity_type** | string |  `FirstPartyIdentity`  |  `FirstPartyIdentity`, `SystemAssignedIdentity`, `UserAssignedIdentity`  |  The default identity for accessing Key Vault. Possible values are `FirstPartyIdentity`, `SystemAssignedIdentity` or `UserAssignedIdentity`. Defaults to `FirstPartyIdentity`. | 
| **kind** | string |  `GlobalDocumentDB`  |  `GlobalDocumentDB`, `MongoDB`, `Parse`  |  Specifies the Kind of CosmosDB to create - possible values are `GlobalDocumentDB`, `MongoDB` and `Parse`. Defaults to `GlobalDocumentDB`. Changing this forces a new resource to be created. | 
| **ip_range_filter** | string |  -  |  -  |  CosmosDB Firewall Support: This value specifies the set of IP addresses or IP address ranges in CIDR form to be included as the allowed list of client IPs for a given database account. IP addresses/ranges must be comma separated and must not contain any spaces. | 
| **enable_free_tier** | bool |  `False`  |  -  |  Enable the Free Tier pricing option for this Cosmos DB account. Defaults to `false`. Changing this forces a new resource to be created. | 
| **analytical_storage_enabled** | bool |  `False`  |  -  |  Enable Analytical Storage option for this Cosmos DB account. Defaults to `false`. Enabling and then disabling analytical storage forces a new resource to be created. | 
| **enable_automatic_failover** | bool |  -  |  -  |  Enable automatic failover for this Cosmos DB account. | 
| **public_network_access_enabled** | bool |  `True`  |  -  |  Whether or not public network access is allowed for this CosmosDB account. Defaults to `true`. | 
| **capabilities** | [block](#capabilities-block-structure) |  -  |  -  |  The capabilities which should be enabled for this Cosmos DB account. Value is a `capabilities` block. | 
| **is_virtual_network_filter_enabled** | bool |  -  |  -  |  Enables virtual network filtering for this Cosmos DB account. | 
| **key_vault_key_id** | string |  -  |  -  |  A versionless Key Vault Key ID for CMK encryption. Changing this forces a new resource to be created. | 
| **virtual_network_rule** | [block](#virtual_network_rule-block-structure) |  -  |  -  |  Specifies a `virtual_network_rule` block, used to define which subnets are allowed to access this CosmosDB account. | 
| **enable_multiple_write_locations** | bool |  -  |  -  |  Enable multiple write locations for this Cosmos DB account. | 
| **access_key_metadata_writes_enabled** | bool |  `True`  |  -  |  Is write operations on metadata resources (databases, containers, throughput) via account keys enabled? Defaults to `true`. | 
| **mongo_server_version** | string |  -  |  `4.2`, `4.0`, `3.6`, `3.2`  |  The Server Version of a MongoDB account. Possible values are `4.2`, `4.0`, `3.6`, and `3.2`. | 
| **network_acl_bypass_for_azure_services** | bool |  `False`  |  -  |  If Azure services can bypass ACLs. Defaults to `false`. | 
| **network_acl_bypass_ids** | string |  -  |  -  |  The list of resource Ids for Network Acl Bypass for this Cosmos DB account. | 
| **local_authentication_disabled** | bool |  `False`  |  -  |  Disable local authentication and ensure only MSI and AAD can be used exclusively for authentication. Defaults to `false`. Can be set only when using the SQL API. | 
| **backup** | [block](#backup-block-structure) |  -  |  -  |  A `backup` block. | 
| **cors_rule** | [block](#cors_rule-block-structure) |  -  |  -  |  A `cors_rule` block. | 
| **identity** | [block](#identity-block-structure) |  -  |  -  |  An `identity` block. | 
| **restore** | [block](#restore-block-structure) |  -  |  -  |  A `restore` block. | 

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | The Type of Managed Identity assigned to this Cosmos account. Possible values are 'SystemAssigned', 'UserAssigned' and 'SystemAssigned, UserAssigned'. |
| `identity_ids` | string | No | - | Specifies a list of User Assigned Managed Identity IDs to be assigned to this Cosmos Account. |

### `restore` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `source_cosmosdb_account_id` | string | Yes | - | The resource ID of the restorable database account from which the restore has to be initiated. The example is '/subscriptions/{subscriptionId}/providers/Microsoft.DocumentDB/locations/{location}/restorableDatabaseAccounts/{restorableDatabaseAccountName}'. Changing this forces a new resource to be created. |
| `restore_timestamp_in_utc` | string | Yes | - | The creation time of the database or the collection (Datetime Format 'RFC 3339'). Changing this forces a new resource to be created. |
| `database` | [block](#database-block-structure) | No | - | A 'database' block. Changing this forces a new resource to be created. |

### `consistency_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `consistency_level` | string | Yes | - | The Consistency Level to use for this CosmosDB Account - can be either 'BoundedStaleness', 'Eventual', 'Session', 'Strong' or 'ConsistentPrefix'. |
| `max_interval_in_seconds` | number | No | 5 | When used with the Bounded Staleness consistency level, this value represents the time amount of staleness (in seconds) tolerated. The accepted range for this value is '5' - '86400' (1 day). Defaults to '5'. Required when 'consistency_level' is set to 'BoundedStaleness'. |
| `max_staleness_prefix` | number | No | 100 | When used with the Bounded Staleness consistency level, this value represents the number of stale requests tolerated. The accepted range for this value is '10' – '2147483647'. Defaults to '100'. Required when 'consistency_level' is set to 'BoundedStaleness'. |

### `geo_location` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `location` | string | Yes | - | The name of the Azure region to host replicated data. |
| `failover_priority` | number | Yes | - | The failover priority of the region. A failover priority of '0' indicates a write region. The maximum value for a failover priority = (total number of regions - 1). Failover priority values must be unique for each of the regions in which the database account exists. Changing this causes the location to be re-provisioned and cannot be changed for the location with failover priority '0'. |
| `zone_redundant` | bool | No | False | Should zone redundancy be enabled for this region? Defaults to 'false'. |

### `cors_rule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `allowed_headers` | list | Yes | - | A list of headers that are allowed to be a part of the cross-origin request. |
| `allowed_methods` | string | Yes | - | A list of HTTP headers that are allowed to be executed by the origin. Valid options are 'DELETE', 'GET', 'HEAD', 'MERGE', 'POST', 'OPTIONS', 'PUT' or 'PATCH'. |
| `allowed_origins` | list | Yes | - | A list of origin domains that will be allowed by CORS. |
| `exposed_headers` | list | Yes | - | A list of response headers that are exposed to CORS clients. |
| `max_age_in_seconds` | string | No | - | The number of seconds the client should cache a preflight response. Possible values are between '1' and '2147483647'. |

### `database` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The database name for the restore request. Changing this forces a new resource to be created. |
| `collection_names` | list | No | - | A list of the collection names for the restore request. Changing this forces a new resource to be created. |

### `analytical_storage` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `schema_type` | string | Yes | - | The schema type of the Analytical Storage for this Cosmos DB account. Possible values are 'FullFidelity' and 'WellDefined'. |

### `capabilities` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The capability to enable - Possible values are 'AllowSelfServeUpgradeToMongo36', 'DisableRateLimitingResponses', 'EnableAggregationPipeline', 'EnableCassandra', 'EnableGremlin', 'EnableMongo', 'EnableMongo16MBDocumentSupport', 'EnableMongoRetryableWrites', 'EnableMongoRoleBasedAccessControl', 'EnablePartialUniqueIndex', 'EnableServerless', 'EnableTable', 'EnableTtlOnCustomPath', 'EnableUniqueCompoundNestedDocs', 'MongoDBv3.4' and 'mongoEnableDocLevelTTL'. |

### `capacity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `total_throughput_limit` | string | Yes | - | The total throughput limit imposed on this Cosmos DB account (RU/s). Possible values are at least '-1'. '-1' means no limit. |

### `virtual_network_rule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `ignore_missing_vnet_service_endpoint` | bool | No | False | If set to true, the specified subnet will be added as a virtual network rule even if its CosmosDB service endpoint is not active. Defaults to 'false'. |

### `backup` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | The type of the 'backup'. Possible values are 'Continuous' and 'Periodic'. Migration of 'Periodic' to 'Continuous' is one-way, changing 'Continuous' to 'Periodic' forces a new resource to be created. |
| `interval_in_minutes` | string | No | - | The interval in minutes between two backups. This is configurable only when 'type' is 'Periodic'. Possible values are between 60 and 1440. |
| `retention_in_hours` | string | No | - | The time in hours that each backup is retained. This is configurable only when 'type' is 'Periodic'. Possible values are between 8 and 720. |
| `storage_redundancy` | string | No | - | The storage redundancy is used to indicate the type of backup residency. This is configurable only when 'type' is 'Periodic'. Possible values are 'Geo', 'Local' and 'Zone'. |



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
