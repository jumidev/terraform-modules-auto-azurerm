# azurerm_cosmosdb_account

Manages a CosmosDB (formally DocumentDB) Account.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the CosmosDB Account. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which the CosmosDB Account is created. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 
| **offer_type** | string | True | -  |  -  | Specifies the Offer Type to use for this CosmosDB Account; currently, this can only be set to `Standard`. | 
| **analytical_storage** | block | False | -  |  -  | An `analytical_storage` block. | 
| **capacity** | block | False | -  |  -  | A `capacity` block. | 
| **create_mode** | string | False | -  |  `Default`, `Restore`  | The creation mode for the CosmosDB Account. Possible values are `Default` and `Restore`. Changing this forces a new resource to be created. | 
| **default_identity_type** | string | False | `FirstPartyIdentity`  |  `FirstPartyIdentity`, `SystemAssignedIdentity`, `UserAssignedIdentity`  | The default identity for accessing Key Vault. Possible values are `FirstPartyIdentity`, `SystemAssignedIdentity` or `UserAssignedIdentity`. Defaults to `FirstPartyIdentity`. | 
| **kind** | string | False | `GlobalDocumentDB`  |  `GlobalDocumentDB`, `MongoDB`, `Parse`  | Specifies the Kind of CosmosDB to create - possible values are `GlobalDocumentDB`, `MongoDB` and `Parse`. Defaults to `GlobalDocumentDB`. Changing this forces a new resource to be created. | 
| **consistency_policy** | block | True | -  |  -  | Specifies one `consistency_policy` block, used to define the consistency policy for this CosmosDB account. | 
| **geo_location** | block | True | -  |  -  | Specifies a `geo_location` resource, used to define where data should be replicated with the `failover_priority` 0 specifying the primary location. Value is a `geo_location` block. | 
| **ip_range_filter** | string | False | -  |  -  | CosmosDB Firewall Support: This value specifies the set of IP addresses or IP address ranges in CIDR form to be included as the allowed list of client IPs for a given database account. IP addresses/ranges must be comma separated and must not contain any spaces. | 
| **enable_free_tier** | bool | False | `False`  |  -  | Enable the Free Tier pricing option for this Cosmos DB account. Defaults to `false`. Changing this forces a new resource to be created. | 
| **analytical_storage_enabled** | bool | False | `False`  |  -  | Enable Analytical Storage option for this Cosmos DB account. Defaults to `false`. Enabling and then disabling analytical storage forces a new resource to be created. | 
| **enable_automatic_failover** | bool | False | -  |  -  | Enable automatic failover for this Cosmos DB account. | 
| **public_network_access_enabled** | bool | False | `True`  |  -  | Whether or not public network access is allowed for this CosmosDB account. Defaults to `true`. | 
| **capabilities** | block | False | -  |  -  | The capabilities which should be enabled for this Cosmos DB account. Value is a `capabilities` block. | 
| **is_virtual_network_filter_enabled** | bool | False | -  |  -  | Enables virtual network filtering for this Cosmos DB account. | 
| **key_vault_key_id** | string | False | -  |  -  | A versionless Key Vault Key ID for CMK encryption. Changing this forces a new resource to be created. | 
| **virtual_network_rule** | block | False | -  |  -  | Specifies a `virtual_network_rule` block, used to define which subnets are allowed to access this CosmosDB account. | 
| **enable_multiple_write_locations** | bool | False | -  |  -  | Enable multiple write locations for this Cosmos DB account. | 
| **access_key_metadata_writes_enabled** | bool | False | `True`  |  -  | Is write operations on metadata resources (databases, containers, throughput) via account keys enabled? Defaults to `true`. | 
| **mongo_server_version** | string | False | -  |  `4.2`, `4.0`, `3.6`, `3.2`  | The Server Version of a MongoDB account. Possible values are `4.2`, `4.0`, `3.6`, and `3.2`. | 
| **network_acl_bypass_for_azure_services** | bool | False | `False`  |  -  | If Azure services can bypass ACLs. Defaults to `false`. | 
| **network_acl_bypass_ids** | string | False | -  |  -  | The list of resource Ids for Network Acl Bypass for this Cosmos DB account. | 
| **local_authentication_disabled** | bool | False | `False`  |  -  | Disable local authentication and ensure only MSI and AAD can be used exclusively for authentication. Defaults to `false`. Can be set only when using the SQL API. | 
| **backup** | block | False | -  |  -  | A `backup` block. | 
| **cors_rule** | block | False | -  |  -  | A `cors_rule` block. | 
| **identity** | block | False | -  |  -  | An `identity` block. | 
| **restore** | block | False | -  |  -  | A `restore` block. | 

