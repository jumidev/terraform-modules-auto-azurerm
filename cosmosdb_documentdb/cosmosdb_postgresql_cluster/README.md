# azurerm_cosmosdb_postgresql_cluster

Manages an Azure Cosmos DB for PostgreSQL Cluster.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Azure Cosmos DB for PostgreSQL Cluster. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Azure Cosmos DB for PostgreSQL Cluster should exist. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the Azure Cosmos DB for PostgreSQL Cluster should exist. Changing this forces a new resource to be created. | 
| **node_count** | int | True | -  |  -  | The worker node count of the Azure Cosmos DB for PostgreSQL Cluster. Possible value is between `0` and `20` except `1`. | 
| **administrator_login_password** | string | False | -  |  -  | The password of the administrator login. This is required when `source_resource_id` is not set. | 
| **citus_version** | string | False | -  |  `8.3`, `9.0`, `9.1`, `9.2`, `9.3`, `9.4`, `9.5`, `10.0`, `10.1`, `10.2`, `11.0`, `11.1`, `11.2`, `11.3`, `12.1`  | The citus extension version on the Azure Cosmos DB for PostgreSQL Cluster. Possible values are `8.3`, `9.0`, `9.1`, `9.2`, `9.3`, `9.4`, `9.5`, `10.0`, `10.1`, `10.2`, `11.0`, `11.1`, `11.2`, `11.3` and `12.1`. | 
| **coordinator_public_ip_access_enabled** | bool | False | `True`  |  -  | Is public access enabled on coordinator? Defaults to `true`. | 
| **coordinator_server_edition** | string | False | `GeneralPurpose`  |  `BurstableGeneralPurpose`, `BurstableMemoryOptimized`, `GeneralPurpose`, `MemoryOptimized`  | The edition of the coordinator server. Possible values are `BurstableGeneralPurpose`, `BurstableMemoryOptimized`, `GeneralPurpose` and `MemoryOptimized`. Defaults to `GeneralPurpose`. | 
| **coordinator_storage_quota_in_mb** | string | False | -  |  `32768`, `65536`, `131072`, `262144`, `524288`, `1048576`, `2097152`, `4194304`, `8388608`, `16777216`, `33554432`  | The coordinator storage allowed for the Azure Cosmos DB for PostgreSQL Cluster. Possible values are `32768`, `65536`, `131072`, `262144`, `524288`, `1048576`, `2097152`, `4194304`, `8388608`, `16777216`, and `33554432`. | 
| **coordinator_vcore_count** | string | False | -  |  `1`, `2`, `4`, `8`, `16`, `32`, `64`, `96`  | The coordinator vCore count for the Azure Cosmos DB for PostgreSQL Cluster. Possible values are `1`, `2`, `4`, `8`, `16`, `32`, `64` and `96`. | 
| **ha_enabled** | bool | False | `False`  |  -  | Is high availability enabled for the Azure Cosmos DB for PostgreSQL cluster? Defaults to `false`. | 
| **maintenance_window** | block | False | -  |  -  | A `maintenance_window` block. | 
| **node_public_ip_access_enabled** | bool | False | `False`  |  -  | Is public access enabled on worker nodes. Defaults to `false`. | 
| **node_server_edition** | string | False | `MemoryOptimized`  |  `BurstableGeneralPurpose`, `BurstableMemoryOptimized`, `GeneralPurpose`, `MemoryOptimized`  | The edition of the node server. Possible values are `BurstableGeneralPurpose`, `BurstableMemoryOptimized`, `GeneralPurpose` and `MemoryOptimized`. Defaults to `MemoryOptimized`. | 
| **node_storage_quota_in_mb** | string | False | -  |  `32768`, `65536`, `131072`, `262144`, `524288`, `1048576`, `2097152`, `4194304`, `8388608`, `16777216`  | The storage quota in MB on each worker node. Possible values are `32768`, `65536`, `131072`, `262144`, `524288`, `1048576`, `2097152`, `4194304`, `8388608` and `16777216`. | 
| **node_vcores** | string | False | -  |  `1`, `2`, `4`, `8`, `16`, `32`, `64`, `96`, `104`  | The vCores count on each worker node. Possible values are `1`, `2`, `4`, `8`, `16`, `32`, `64`, `96` and `104`. | 
| **point_in_time_in_utc** | string | False | -  |  -  | The date and time in UTC (ISO8601 format) for the Azure Cosmos DB for PostgreSQL cluster restore. Changing this forces a new resource to be created. | 
| **preferred_primary_zone** | string | False | -  |  -  | The preferred primary availability zone for the Azure Cosmos DB for PostgreSQL cluster. | 
| **shards_on_coordinator_enabled** | bool | False | -  |  -  | Is shards on coordinator enabled for the Azure Cosmos DB for PostgreSQL cluster. | 
| **source_location** | string | False | -  |  -  | The Azure region of the source Azure Cosmos DB for PostgreSQL cluster for read replica clusters. Changing this forces a new resource to be created. | 
| **source_resource_id** | string | False | -  |  -  | The resource ID of the source Azure Cosmos DB for PostgreSQL cluster for read replica clusters. Changing this forces a new resource to be created. | 
| **sql_version** | string | False | -  |  `11`, `12`, `13`, `14`, `15`, `16`  | The major PostgreSQL version on the Azure Cosmos DB for PostgreSQL cluster. Possible values are `11`, `12`, `13`, `14`, `15` and `16`. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Azure Cosmos DB for PostgreSQL Cluster. | 

