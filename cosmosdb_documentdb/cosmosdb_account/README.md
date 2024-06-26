# azurerm_cosmosdb_account



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
## Associated component


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


Example component snippet

**See also** [spring_cloud/spring_cloud_app](https://github.com/jumidev/terraform-modules-auto-azurerm/tree/master/spring_cloud/spring_cloud_app)
**See also** [cosmosdb_documentdb/cosmosdb_cassandra_keyspace](https://github.com/jumidev/terraform-modules-auto-azurerm/tree/master/cosmosdb_documentdb/cosmosdb_cassandra_keyspace)
**See also** [cosmosdb_documentdb/cosmosdb_gremlin_database](https://github.com/jumidev/terraform-modules-auto-azurerm/tree/master/cosmosdb_documentdb/cosmosdb_gremlin_database)
**See also** [cosmosdb_documentdb/cosmosdb_gremlin_graph](https://github.com/jumidev/terraform-modules-auto-azurerm/tree/master/cosmosdb_documentdb/cosmosdb_gremlin_graph)
**See also** [cosmosdb_documentdb/cosmosdb_mongo_database](https://github.com/jumidev/terraform-modules-auto-azurerm/tree/master/cosmosdb_documentdb/cosmosdb_mongo_database)
**See also** [cosmosdb_documentdb/cosmosdb_sql_database](https://github.com/jumidev/terraform-modules-auto-azurerm/tree/master/cosmosdb_documentdb/cosmosdb_sql_database)

```hcl
inputs = {
   spring_cloud_app_cosmosdb_association = {
      name = "..."      
      api_type = "..."      
      cosmosdb_access_key = "..."      
   }   
}
component_inputs = {
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
| **minimal_tls_version** | string |  `Tls12`  |  `Tls`, `Tls11`, `Tls12`  |  Specifies the minimal TLS version for the CosmosDB account. Possible values are: `Tls`, `Tls11`, and `Tls12`. Defaults to `Tls12`. | 
| **analytical_storage** | [block](#analytical_storage-block-structure) |  -  |  -  |  An `analytical_storage` block. | 
| **capacity** | [block](#capacity-block-structure) |  -  |  -  |  A `capacity` block. | 
| **create_mode** | string |  -  |  `Default`, `Restore`  |  The creation mode for the CosmosDB Account. Possible values are `Default` and `Restore`. Changing this forces a new resource to be created. ~> **Note:** `create_mode` can only be defined when the `backup.type` is set to `Continuous`. | 
| **default_identity_type** | string |  `FirstPartyIdentity`  |  `FirstPartyIdentity`, `SystemAssignedIdentity`, `UserAssignedIdentity`  |  The default identity for accessing Key Vault. Possible values are `FirstPartyIdentity`, `SystemAssignedIdentity` or `UserAssignedIdentity`. Defaults to `FirstPartyIdentity`. ~> **Note:** When `default_identity_type` is a `UserAssignedIdentity` it must include the User Assigned Identity ID in the following format: `UserAssignedIdentity=/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{userAssignedIdentityName}`. | 
| **kind** | string |  `GlobalDocumentDB`  |  `GlobalDocumentDB`, `MongoDB`, `Parse`  |  Specifies the Kind of CosmosDB to create - possible values are `GlobalDocumentDB`, `MongoDB` and `Parse`. Defaults to `GlobalDocumentDB`. Changing this forces a new resource to be created. | 
| **ip_range_filter** | string |  -  |  `0.0.0.0`  |  CosmosDB Firewall Support: This value specifies the set of IP addresses or IP address ranges in CIDR form to be included as the allowed list of client IPs for a given database account. IP addresses/ranges must be comma separated and must not contain any spaces. ~> **Note:** To enable the "Allow access from the Azure portal" behavior, you should add the IP addresses provided by the [documentation](https://docs.microsoft.com/azure/cosmos-db/how-to-configure-firewall#allow-requests-from-the-azure-portal) to this list. ~> **Note:** To enable the "Accept connections from within public Azure datacenters" behavior, you should add `0.0.0.0` to the list, see the [documentation](https://docs.microsoft.com/azure/cosmos-db/how-to-configure-firewall#allow-requests-from-global-azure-datacenters-or-other-sources-within-azure) for more details. | 
| **free_tier_enabled** | bool |  `False`  |  -  |  Enable the Free Tier pricing option for this Cosmos DB account. Defaults to `false`. Changing this forces a new resource to be created. | 
| **analytical_storage_enabled** | bool |  `False`  |  -  |  Enable Analytical Storage option for this Cosmos DB account. Defaults to `false`. Enabling and then disabling analytical storage forces a new resource to be created. | 
| **automatic_failover_enabled** | bool |  -  |  -  |  Enable automatic failover for this Cosmos DB account. | 
| **partition_merge_enabled** | bool |  `False`  |  -  |  Is partition merge on the Cosmos DB account enabled? Defaults to `false`. | 
| **public_network_access_enabled** | bool |  `True`  |  -  |  Whether or not public network access is allowed for this CosmosDB account. Defaults to `true`. | 
| **capabilities** | [block](#capabilities-block-structure) |  -  |  -  |  The capabilities which should be enabled for this Cosmos DB account. Value is a `capabilities` block. | 
| **is_virtual_network_filter_enabled** | bool |  -  |  -  |  Enables virtual network filtering for this Cosmos DB account. | 
| **key_vault_key_id** | string |  -  |  -  |  A versionless Key Vault Key ID for CMK encryption. Changing this forces a new resource to be created. ~> **Note:** When referencing an `azurerm_key_vault_key` resource, use `versionless_id` instead of `id` ~> **Note:** In order to use a `Custom Key` from Key Vault for encryption you must grant Azure Cosmos DB Service access to your key vault. For instructions on how to configure your Key Vault correctly please refer to the [product documentation](https://docs.microsoft.com/azure/cosmos-db/how-to-setup-cmk#add-an-access-policy-to-your-azure-key-vault-instance) | 
| **virtual_network_rule** | [block](#virtual_network_rule-block-structure) |  -  |  -  |  Specifies a `virtual_network_rule` block, used to define which subnets are allowed to access this CosmosDB account. | 
| **multiple_write_locations_enabled** | bool |  -  |  -  |  Enable multiple write locations for this Cosmos DB account. | 
| **access_key_metadata_writes_enabled** | bool |  `True`  |  -  |  Is write operations on metadata resources (databases, containers, throughput) via account keys enabled? Defaults to `true`. | 
| **mongo_server_version** | string |  -  |  `4.2`, `4.0`, `3.6`, `3.2`  |  The Server Version of a MongoDB account. Possible values are `4.2`, `4.0`, `3.6`, and `3.2`. | 
| **network_acl_bypass_for_azure_services** | bool |  `False`  |  -  |  If Azure services can bypass ACLs. Defaults to `false`. | 
| **network_acl_bypass_ids** | string |  -  |  -  |  The list of resource Ids for Network Acl Bypass for this Cosmos DB account. | 
| **local_authentication_disabled** | bool |  `False`  |  -  |  Disable local authentication and ensure only MSI and AAD can be used exclusively for authentication. Defaults to `false`. Can be set only when using the SQL API. | 
| **backup** | [block](#backup-block-structure) |  -  |  -  |  A `backup` block. | 
| **cors_rule** | [block](#cors_rule-block-structure) |  -  |  -  |  A `cors_rule` block. | 
| **identity** | [block](#identity-block-structure) |  -  |  -  |  An `identity` block. | 
| **restore** | [block](#restore-block-structure) |  -  |  -  |  A `restore` block. ~> **Note:** `restore` should be set when `create_mode` is `Restore`. | 

### `geo_location` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `location` | string | Yes | - | The name of the Azure region to host replicated data. |
| `failover_priority` | number | Yes | - | The failover priority of the region. A failover priority of '0' indicates a write region. The maximum value for a failover priority = (total number of regions - 1). Failover priority values must be unique for each of the regions in which the database account exists. Changing this causes the location to be re-provisioned and cannot be changed for the location with failover priority '0'. |
| `zone_redundant` | bool | No | False | Should zone redundancy be enabled for this region? Defaults to 'false'. |

### `consistency_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `consistency_level` | string | Yes | - | The Consistency Level to use for this CosmosDB Account - can be either 'BoundedStaleness', 'Eventual', 'Session', 'Strong' or 'ConsistentPrefix'. |
| `max_interval_in_seconds` | number | No | 5 | When used with the Bounded Staleness consistency level, this value represents the time amount of staleness (in seconds) tolerated. The accepted range for this value is '5' - '86400' (1 day). Defaults to '5'. Required when 'consistency_level' is set to 'BoundedStaleness'. |
| `max_staleness_prefix` | number | No | 100 | When used with the Bounded Staleness consistency level, this value represents the number of stale requests tolerated. The accepted range for this value is '10' - '2147483647'. Defaults to '100'. Required when 'consistency_level' is set to 'BoundedStaleness'. ~> **Note:** 'max_interval_in_seconds' and 'max_staleness_prefix' can only be set to values other than default when the 'consistency_level' is set to 'BoundedStaleness'. |

### `capabilities` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | bool | Yes | - | The capability to enable - Possible values are 'AllowSelfServeUpgradeToMongo36', 'DisableRateLimitingResponses', 'EnableAggregationPipeline', 'EnableCassandra', 'EnableGremlin', 'EnableMongo', 'EnableMongo16MBDocumentSupport', 'EnableMongoRetryableWrites', 'EnableMongoRoleBasedAccessControl', 'EnablePartialUniqueIndex', 'EnableServerless', 'EnableTable', 'EnableTtlOnCustomPath', 'EnableUniqueCompoundNestedDocs', 'MongoDBv3.4' and 'mongoEnableDocLevelTTL'. ~> **Note:** Setting 'MongoDBv3.4' also requires setting 'EnableMongo'. ~> **Note:** Only 'AllowSelfServeUpgradeToMongo36', 'DisableRateLimitingResponses', 'EnableAggregationPipeline', 'MongoDBv3.4', 'EnableMongoRetryableWrites', 'EnableMongoRoleBasedAccessControl', 'EnableUniqueCompoundNestedDocs', 'EnableMongo16MBDocumentSupport', 'mongoEnableDocLevelTTL', 'EnableTtlOnCustomPath' and 'EnablePartialUniqueIndex' can be added to an existing Cosmos DB account. ~> **Note:** Only 'DisableRateLimitingResponses' and 'EnableMongoRetryableWrites' can be removed from an existing Cosmos DB account. |

### `capacity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `total_throughput_limit` | string | Yes | - | The total throughput limit imposed on this Cosmos DB account (RU/s). Possible values are at least '-1'. '-1' means no limit. |

### `gremlin_database` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The Gremlin Database name for the restore request. Changing this forces a new resource to be created. |
| `graph_names` | list | No | - | A list of the Graph names for the restore request. Changing this forces a new resource to be created. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | The Type of Managed Identity assigned to this Cosmos account. Possible values are 'SystemAssigned', 'UserAssigned' and 'SystemAssigned, UserAssigned'. |
| `identity_ids` | list | No | - | Specifies a list of User Assigned Managed Identity IDs to be assigned to this Cosmos Account. |

### `restore` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `source_cosmosdb_account_id` | string | Yes | - | The resource ID of the restorable database account from which the restore has to be initiated. The example is '/subscriptions/{subscriptionId}/providers/Microsoft.DocumentDB/locations/{location}/restorableDatabaseAccounts/{restorableDatabaseAccountName}'. Changing this forces a new resource to be created. ~> **Note:** Any database account with 'Continuous' type (live account or accounts deleted in last 30 days) is a restorable database account and there cannot be Create/Update/Delete operations on the restorable database accounts. They can only be read and retrieved by 'azurerm_cosmosdb_restorable_database_accounts'. |
| `restore_timestamp_in_utc` | string | Yes | - | The creation time of the database or the collection (Datetime Format 'RFC 3339'). Changing this forces a new resource to be created. |
| `database` | [block](#database-block-structure) | No | - | A 'database' block. Changing this forces a new resource to be created. |
| `gremlin_database` | [block](#gremlin_database-block-structure) | No | - | One or more 'gremlin_database' blocks. Changing this forces a new resource to be created. |
| `tables_to_restore` | list | No | - | A list of specific tables available for restore. Changing this forces a new resource to be created. |

### `cors_rule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `allowed_headers` | list | Yes | - | A list of headers that are allowed to be a part of the cross-origin request. |
| `allowed_methods` | list | Yes | - | A list of HTTP headers that are allowed to be executed by the origin. Valid options are 'DELETE', 'GET', 'HEAD', 'MERGE', 'POST', 'OPTIONS', 'PUT' or 'PATCH'. |
| `allowed_origins` | list | Yes | - | A list of origin domains that will be allowed by CORS. |
| `exposed_headers` | list | Yes | - | A list of response headers that are exposed to CORS clients. |
| `max_age_in_seconds` | number | No | - | The number of seconds the client should cache a preflight response. Possible values are between '1' and '2147483647'. |

### `virtual_network_rule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `ignore_missing_vnet_service_endpoint` | bool | No | False | If set to true, the specified subnet will be added as a virtual network rule even if its CosmosDB service endpoint is not active. Defaults to 'false'. |

### `database` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The database name for the restore request. Changing this forces a new resource to be created. |
| `collection_names` | list | No | - | A list of the collection names for the restore request. Changing this forces a new resource to be created. |

### `analytical_storage` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `schema_type` | string | Yes | - | The schema type of the Analytical Storage for this Cosmos DB account. Possible values are 'FullFidelity' and 'WellDefined'. |

### `backup` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | The type of the 'backup'. Possible values are 'Continuous' and 'Periodic'. ~> **Note:** Migration of 'Periodic' to 'Continuous' is one-way, changing 'Continuous' to 'Periodic' forces a new resource to be created. |
| `tier` | string | No | - | The continuous backup tier. Possible values are 'Continuous7Days' and 'Continuous30Days'. |
| `interval_in_minutes` | number | No | 240 | The interval in minutes between two backups. Possible values are between 60 and 1440. Defaults to '240'. |
| `retention_in_hours` | number | No | 8 | The time in hours that each backup is retained. Possible values are between 8 and 720. Defaults to '8'. |
| `storage_redundancy` | string | No | Geo | The storage redundancy is used to indicate the type of backup residency. Possible values are 'Geo', 'Local' and 'Zone'. Defaults to 'Geo'. ~> **Note:** You can only configure 'interval_in_minutes', 'retention_in_hours' and 'storage_redundancy' when the 'type' field is set to 'Periodic'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **graph_names** | list | No  | A list of the Graph names for the restore request. Changing this forces a new resource to be created. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The CosmosDB Account ID. | 
| **endpoint** | string | No  | The endpoint used to connect to the CosmosDB account. | 
| **read_endpoints** | list | No  | A list of read endpoints available for this CosmosDB account. | 
| **write_endpoints** | list | No  | A list of write endpoints available for this CosmosDB account. | 
| **primary_key** | string | No  | The Primary key for the CosmosDB Account. | 
| **secondary_key** | string | No  | The Secondary key for the CosmosDB Account. | 
| **primary_readonly_key** | string | No  | The Primary read-only Key for the CosmosDB Account. | 
| **secondary_readonly_key** | string | No  | The Secondary read-only key for the CosmosDB Account. | 
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
