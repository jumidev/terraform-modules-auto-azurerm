# azurerm_cosmosdb_postgresql_cluster

Manages an Azure Cosmos DB for PostgreSQL Cluster.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "cosmosdb_documentdb/cosmosdb_postgresql_cluster"   
}

inputs = {
   name = "The name which should be used for this Azure Cosmos DB for PostgreSQL Cluster..."   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   node_count = "The worker node count of the Azure Cosmos DB for PostgreSQL Cluster..."   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  The name which should be used for this Azure Cosmos DB for PostgreSQL Cluster. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the Resource Group where the Azure Cosmos DB for PostgreSQL Cluster should exist. Changing this forces a new resource to be created. | 
| **location** | string |  The Azure Region where the Azure Cosmos DB for PostgreSQL Cluster should exist. Changing this forces a new resource to be created. | 
| **node_count** | number |  The worker node count of the Azure Cosmos DB for PostgreSQL Cluster. Possible value is between `0` and `20` except `1`. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **administrator_login_password** | string |  `Random string of 32 characters`  |  -  |  The password of the administrator login. This is required when `source_resource_id` is not set. | 
| **citus_version** | string |  -  |  `8.3`, `9.0`, `9.1`, `9.2`, `9.3`, `9.4`, `9.5`, `10.0`, `10.1`, `10.2`, `11.0`, `11.1`, `11.2`, `11.3`, `12.1`  |  The citus extension version on the Azure Cosmos DB for PostgreSQL Cluster. Possible values are `8.3`, `9.0`, `9.1`, `9.2`, `9.3`, `9.4`, `9.5`, `10.0`, `10.1`, `10.2`, `11.0`, `11.1`, `11.2`, `11.3` and `12.1`. | 
| **coordinator_public_ip_access_enabled** | bool |  `True`  |  -  |  Is public access enabled on coordinator? Defaults to `true`. | 
| **coordinator_server_edition** | string |  `GeneralPurpose`  |  `BurstableGeneralPurpose`, `BurstableMemoryOptimized`, `GeneralPurpose`, `MemoryOptimized`  |  The edition of the coordinator server. Possible values are `BurstableGeneralPurpose`, `BurstableMemoryOptimized`, `GeneralPurpose` and `MemoryOptimized`. Defaults to `GeneralPurpose`. | 
| **coordinator_storage_quota_in_mb** | number |  -  |  `32768`, `65536`, `131072`, `262144`, `524288`, `1048576`, `2097152`, `4194304`, `8388608`, `16777216`, `33554432`  |  The coordinator storage allowed for the Azure Cosmos DB for PostgreSQL Cluster. Possible values are `32768`, `65536`, `131072`, `262144`, `524288`, `1048576`, `2097152`, `4194304`, `8388608`, `16777216`, and `33554432`. -> **NOTE:** More information on [the types of compute resources available for CosmosDB can be found in the product documentation](https://learn.microsoft.com/azure/cosmos-db/postgresql/resources-compute) | 
| **coordinator_vcore_count** | number |  -  |  `1`, `2`, `4`, `8`, `16`, `32`, `64`, `96`  |  The coordinator vCore count for the Azure Cosmos DB for PostgreSQL Cluster. Possible values are `1`, `2`, `4`, `8`, `16`, `32`, `64` and `96`. | 
| **ha_enabled** | bool |  `False`  |  -  |  Is high availability enabled for the Azure Cosmos DB for PostgreSQL cluster? Defaults to `false`. | 
| **maintenance_window** | [block](#maintenance_window-block-structure) |  -  |  -  |  A `maintenance_window` block. | 
| **node_public_ip_access_enabled** | bool |  `False`  |  -  |  Is public access enabled on worker nodes. Defaults to `false`. | 
| **node_server_edition** | string |  `MemoryOptimized`  |  `BurstableGeneralPurpose`, `BurstableMemoryOptimized`, `GeneralPurpose`, `MemoryOptimized`  |  The edition of the node server. Possible values are `BurstableGeneralPurpose`, `BurstableMemoryOptimized`, `GeneralPurpose` and `MemoryOptimized`. Defaults to `MemoryOptimized`. | 
| **node_storage_quota_in_mb** | number |  -  |  `32768`, `65536`, `131072`, `262144`, `524288`, `1048576`, `2097152`, `4194304`, `8388608`, `16777216`  |  The storage quota in MB on each worker node. Possible values are `32768`, `65536`, `131072`, `262144`, `524288`, `1048576`, `2097152`, `4194304`, `8388608` and `16777216`. | 
| **node_vcores** | string |  -  |  `1`, `2`, `4`, `8`, `16`, `32`, `64`, `96`, `104`  |  The vCores count on each worker node. Possible values are `1`, `2`, `4`, `8`, `16`, `32`, `64`, `96` and `104`. | 
| **point_in_time_in_utc** | string |  -  |  -  |  The date and time in UTC (ISO8601 format) for the Azure Cosmos DB for PostgreSQL cluster restore. Changing this forces a new resource to be created. | 
| **preferred_primary_zone** | string |  -  |  -  |  The preferred primary availability zone for the Azure Cosmos DB for PostgreSQL cluster. | 
| **shards_on_coordinator_enabled** | bool |  -  |  -  |  Is shards on coordinator enabled for the Azure Cosmos DB for PostgreSQL cluster. | 
| **source_location** | string |  -  |  -  |  The Azure region of the source Azure Cosmos DB for PostgreSQL cluster for read replica clusters. Changing this forces a new resource to be created. | 
| **source_resource_id** | string |  -  |  -  |  The resource ID of the source Azure Cosmos DB for PostgreSQL cluster for read replica clusters. Changing this forces a new resource to be created. | 
| **sql_version** | string |  -  |  `11`, `12`, `13`, `14`, `15`, `16`  |  The major PostgreSQL version on the Azure Cosmos DB for PostgreSQL cluster. Possible values are `11`, `12`, `13`, `14`, `15` and `16`. | 
| **tags** | map |  -  |  -  |  A mapping of tags which should be assigned to the Azure Cosmos DB for PostgreSQL Cluster. | 

### `maintenance_window` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `day_of_week` | string | No | 0 | The day of week for maintenance window, where the week starts on a Sunday, i.e. Sunday = '0', Monday = '1'. Defaults to '0'. |
| `start_hour` | string | No | 0 | The start hour for maintenance window. Defaults to '0'. |
| `start_minute` | string | No | 0 | The start minute for maintenance window. Defaults to '0'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **start_minute** | string | No  | The start minute for maintenance window. Defaults to `0`. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Azure Cosmos DB for PostgreSQL Cluster. | 
| **earliest_restore_time** | string | No  | The earliest restore point time (ISO8601 format) for the Azure Cosmos DB for PostgreSQL Cluster. | 

Additionally, all variables are provided as outputs.
