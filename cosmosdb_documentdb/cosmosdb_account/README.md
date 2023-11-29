# azurerm_cosmosdb_account

Manages a CosmosDB (formally DocumentDB) Account.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the CosmosDB Account. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the resource group in which the CosmosDB Account is created. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 
| **var.offer_type** | string | True | -  |  -  | Specifies the Offer Type to use for this CosmosDB Account; currently, this can only be set to `Standard`. | 
| **var.analytical_storage** | block | False | -  |  -  | An `analytical_storage` block. | 
| **var.capacity** | block | False | -  |  -  | A `capacity` block. | 
| **var.create_mode** | string | False | -  |  `Default`, `Restore`  | The creation mode for the CosmosDB Account. Possible values are `Default` and `Restore`. Changing this forces a new resource to be created. | 
| **var.default_identity_type** | string | False | `FirstPartyIdentity`  |  `FirstPartyIdentity`, `SystemAssignedIdentity`, `UserAssignedIdentity`  | The default identity for accessing Key Vault. Possible values are `FirstPartyIdentity`, `SystemAssignedIdentity` or `UserAssignedIdentity`. Defaults to `FirstPartyIdentity`. | 
| **var.kind** | string | False | `GlobalDocumentDB`  |  `GlobalDocumentDB`, `MongoDB`, `Parse`  | Specifies the Kind of CosmosDB to create - possible values are `GlobalDocumentDB`, `MongoDB` and `Parse`. Defaults to `GlobalDocumentDB`. Changing this forces a new resource to be created. | 
| **var.consistency_policy** | block | True | -  |  -  | Specifies one `consistency_policy` block, used to define the consistency policy for this CosmosDB account. | 
| **var.geo_location** | block | True | -  |  -  | Specifies a `geo_location` resource, used to define where data should be replicated with the `failover_priority` 0 specifying the primary location. Value is a `geo_location` block. | 
| **var.ip_range_filter** | string | False | -  |  -  | CosmosDB Firewall Support: This value specifies the set of IP addresses or IP address ranges in CIDR form to be included as the allowed list of client IPs for a given database account. IP addresses/ranges must be comma separated and must not contain any spaces. | 
| **var.enable_free_tier** | bool | False | `False`  |  -  | Enable the Free Tier pricing option for this Cosmos DB account. Defaults to `false`. Changing this forces a new resource to be created. | 
| **var.analytical_storage_enabled** | bool | False | `False`  |  -  | Enable Analytical Storage option for this Cosmos DB account. Defaults to `false`. Enabling and then disabling analytical storage forces a new resource to be created. | 
| **var.enable_automatic_failover** | bool | False | -  |  -  | Enable automatic failover for this Cosmos DB account. | 
| **var.public_network_access_enabled** | bool | False | `True`  |  -  | Whether or not public network access is allowed for this CosmosDB account. Defaults to `true`. | 
| **var.capabilities** | block | False | -  |  -  | The capabilities which should be enabled for this Cosmos DB account. Value is a `capabilities` block. | 
| **var.is_virtual_network_filter_enabled** | bool | False | -  |  -  | Enables virtual network filtering for this Cosmos DB account. | 
| **var.key_vault_key_id** | string | False | -  |  -  | A versionless Key Vault Key ID for CMK encryption. Changing this forces a new resource to be created. | 
| **var.virtual_network_rule** | block | False | -  |  -  | Specifies a `virtual_network_rule` block, used to define which subnets are allowed to access this CosmosDB account. | 
| **var.enable_multiple_write_locations** | bool | False | -  |  -  | Enable multiple write locations for this Cosmos DB account. | 
| **var.access_key_metadata_writes_enabled** | bool | False | `True`  |  -  | Is write operations on metadata resources (databases, containers, throughput) via account keys enabled? Defaults to `true`. | 
| **var.mongo_server_version** | string | False | -  |  `4.2`, `4.0`, `3.6`, `3.2`  | The Server Version of a MongoDB account. Possible values are `4.2`, `4.0`, `3.6`, and `3.2`. | 
| **var.network_acl_bypass_for_azure_services** | bool | False | `False`  |  -  | If Azure services can bypass ACLs. Defaults to `false`. | 
| **var.network_acl_bypass_ids** | string | False | -  |  -  | The list of resource Ids for Network Acl Bypass for this Cosmos DB account. | 
| **var.local_authentication_disabled** | bool | False | `False`  |  -  | Disable local authentication and ensure only MSI and AAD can be used exclusively for authentication. Defaults to `false`. Can be set only when using the SQL API. | 
| **var.backup** | block | False | -  |  -  | A `backup` block. | 
| **var.cors_rule** | block | False | -  |  -  | A `cors_rule` block. | 
| **var.identity** | block | False | -  |  -  | An `identity` block. | 
| **var.restore** | block | False | -  |  -  | A `restore` block. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **tags** | map  | - | 
| **offer_type** | string  | - | 
| **analytical_storage** | block  | - | 
| **capacity** | block  | - | 
| **create_mode** | string  | - | 
| **default_identity_type** | string  | - | 
| **kind** | string  | - | 
| **consistency_policy** | block  | - | 
| **geo_location** | block  | - | 
| **ip_range_filter** | string  | - | 
| **enable_free_tier** | bool  | - | 
| **analytical_storage_enabled** | bool  | - | 
| **enable_automatic_failover** | bool  | - | 
| **public_network_access_enabled** | bool  | - | 
| **capabilities** | block  | - | 
| **is_virtual_network_filter_enabled** | bool  | - | 
| **key_vault_key_id** | string  | - | 
| **virtual_network_rule** | block  | - | 
| **enable_multiple_write_locations** | bool  | - | 
| **access_key_metadata_writes_enabled** | bool  | - | 
| **mongo_server_version** | string  | - | 
| **network_acl_bypass_for_azure_services** | bool  | - | 
| **network_acl_bypass_ids** | string  | - | 
| **local_authentication_disabled** | bool  | - | 
| **backup** | block  | - | 
| **cors_rule** | block  | - | 
| **identity** | block  | - | 
| **restore** | block  | - | 
| **id** | string  | The CosmosDB Account ID. | 
| **endpoint** | string  | The endpoint used to connect to the CosmosDB account. | 
| **read_endpoints** | list  | A list of read endpoints available for this CosmosDB account. | 
| **write_endpoints** | list  | A list of write endpoints available for this CosmosDB account. | 
| **primary_key** | string  | The Primary key for the CosmosDB Account. | 
| **secondary_key** | string  | The Secondary key for the CosmosDB Account. | 
| **primary_readonly_key** | string  | The Primary read-only Key for the CosmosDB Account. | 
| **secondary_readonly_key** | string  | The Secondary read-only key for the CosmosDB Account. | 
| **connection_strings** | list  | A list of connection strings available for this CosmosDB account. | 
| **primary_sql_connection_string** | string  | Primary SQL connection string for the CosmosDB Account. | 
| **secondary_sql_connection_string** | string  | Secondary SQL connection string for the CosmosDB Account. | 
| **primary_readonly_sql_connection_string** | string  | Primary readonly SQL connection string for the CosmosDB Account. | 
| **secondary_readonly_sql_connection_string** | string  | Secondary readonly SQL connection string for the CosmosDB Account. | 
| **primary_mongodb_connection_string** | string  | Primary Mongodb connection string for the CosmosDB Account. | 
| **secondary_mongodb_connection_string** | string  | Secondary Mongodb connection string for the CosmosDB Account. | 
| **primary_readonly_mongodb_connection_string** | string  | Primary readonly Mongodb connection string for the CosmosDB Account. | 
| **secondary_readonly_mongodb_connection_string** | string  | Secondary readonly Mongodb connection string for the CosmosDB Account. | 
| **principal_id** | string  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string  | The Tenant ID associated with this Managed Service Identity. | 