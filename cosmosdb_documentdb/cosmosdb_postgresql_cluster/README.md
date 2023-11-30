# azurerm_cosmosdb_postgresql_cluster

Manages an Azure Cosmos DB for PostgreSQL Cluster.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name which should be used for this Azure Cosmos DB for PostgreSQL Cluster. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the Resource Group where the Azure Cosmos DB for PostgreSQL Cluster should exist. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  The Azure Region where the Azure Cosmos DB for PostgreSQL Cluster should exist. Changing this forces a new resource to be created. | 
| **var.node_count** | int | True | -  |  -  |  The worker node count of the Azure Cosmos DB for PostgreSQL Cluster. Possible value is between `0` and `20` except `1`. | 
| **var.administrator_login_password** | string | False | -  |  -  |  The password of the administrator login. This is required when `source_resource_id` is not set. | 
| **var.citus_version** | string | False | -  |  `8.3`, `9.0`, `9.1`, `9.2`, `9.3`, `9.4`, `9.5`, `10.0`, `10.1`, `10.2`, `11.0`, `11.1`, `11.2`, `11.3`, `12.1`  |  The citus extension version on the Azure Cosmos DB for PostgreSQL Cluster. Possible values are `8.3`, `9.0`, `9.1`, `9.2`, `9.3`, `9.4`, `9.5`, `10.0`, `10.1`, `10.2`, `11.0`, `11.1`, `11.2`, `11.3` and `12.1`. | 
| **var.coordinator_public_ip_access_enabled** | bool | False | `True`  |  -  |  Is public access enabled on coordinator? Defaults to `true`. | 
| **var.coordinator_server_edition** | string | False | `GeneralPurpose`  |  `BurstableGeneralPurpose`, `BurstableMemoryOptimized`, `GeneralPurpose`, `MemoryOptimized`  |  The edition of the coordinator server. Possible values are `BurstableGeneralPurpose`, `BurstableMemoryOptimized`, `GeneralPurpose` and `MemoryOptimized`. Defaults to `GeneralPurpose`. | 
| **var.coordinator_storage_quota_in_mb** | string | False | -  |  `32768`, `65536`, `131072`, `262144`, `524288`, `1048576`, `2097152`, `4194304`, `8388608`, `16777216`, `33554432`  |  The coordinator storage allowed for the Azure Cosmos DB for PostgreSQL Cluster. Possible values are `32768`, `65536`, `131072`, `262144`, `524288`, `1048576`, `2097152`, `4194304`, `8388608`, `16777216`, and `33554432`. | 
| **var.coordinator_vcore_count** | string | False | -  |  `1`, `2`, `4`, `8`, `16`, `32`, `64`, `96`  |  The coordinator vCore count for the Azure Cosmos DB for PostgreSQL Cluster. Possible values are `1`, `2`, `4`, `8`, `16`, `32`, `64` and `96`. | 
| **var.ha_enabled** | bool | False | `False`  |  -  |  Is high availability enabled for the Azure Cosmos DB for PostgreSQL cluster? Defaults to `false`. | 
| **var.maintenance_window** | block | False | -  |  -  |  A `maintenance_window` block. | 
| **var.node_public_ip_access_enabled** | bool | False | `False`  |  -  |  Is public access enabled on worker nodes. Defaults to `false`. | 
| **var.node_server_edition** | string | False | `MemoryOptimized`  |  `BurstableGeneralPurpose`, `BurstableMemoryOptimized`, `GeneralPurpose`, `MemoryOptimized`  |  The edition of the node server. Possible values are `BurstableGeneralPurpose`, `BurstableMemoryOptimized`, `GeneralPurpose` and `MemoryOptimized`. Defaults to `MemoryOptimized`. | 
| **var.node_storage_quota_in_mb** | string | False | -  |  `32768`, `65536`, `131072`, `262144`, `524288`, `1048576`, `2097152`, `4194304`, `8388608`, `16777216`  |  The storage quota in MB on each worker node. Possible values are `32768`, `65536`, `131072`, `262144`, `524288`, `1048576`, `2097152`, `4194304`, `8388608` and `16777216`. | 
| **var.node_vcores** | string | False | -  |  `1`, `2`, `4`, `8`, `16`, `32`, `64`, `96`, `104`  |  The vCores count on each worker node. Possible values are `1`, `2`, `4`, `8`, `16`, `32`, `64`, `96` and `104`. | 
| **var.point_in_time_in_utc** | string | False | -  |  -  |  The date and time in UTC (ISO8601 format) for the Azure Cosmos DB for PostgreSQL cluster restore. Changing this forces a new resource to be created. | 
| **var.preferred_primary_zone** | string | False | -  |  -  |  The preferred primary availability zone for the Azure Cosmos DB for PostgreSQL cluster. | 
| **var.shards_on_coordinator_enabled** | bool | False | -  |  -  |  Is shards on coordinator enabled for the Azure Cosmos DB for PostgreSQL cluster. | 
| **var.source_location** | string | False | -  |  -  |  The Azure region of the source Azure Cosmos DB for PostgreSQL cluster for read replica clusters. Changing this forces a new resource to be created. | 
| **var.source_resource_id** | string | False | -  |  -  |  The resource ID of the source Azure Cosmos DB for PostgreSQL cluster for read replica clusters. Changing this forces a new resource to be created. | 
| **var.sql_version** | string | False | -  |  `11`, `12`, `13`, `14`, `15`, `16`  |  The major PostgreSQL version on the Azure Cosmos DB for PostgreSQL cluster. Possible values are `11`, `12`, `13`, `14`, `15` and `16`. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags which should be assigned to the Azure Cosmos DB for PostgreSQL Cluster. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **node_count** | int  | - | 
| **administrator_login_password** | string  | - | 
| **citus_version** | string  | - | 
| **coordinator_public_ip_access_enabled** | bool  | - | 
| **coordinator_server_edition** | string  | - | 
| **coordinator_storage_quota_in_mb** | string  | - | 
| **coordinator_vcore_count** | string  | - | 
| **ha_enabled** | bool  | - | 
| **maintenance_window** | block  | - | 
| **node_public_ip_access_enabled** | bool  | - | 
| **node_server_edition** | string  | - | 
| **node_storage_quota_in_mb** | string  | - | 
| **node_vcores** | string  | - | 
| **point_in_time_in_utc** | string  | - | 
| **preferred_primary_zone** | string  | - | 
| **shards_on_coordinator_enabled** | bool  | - | 
| **source_location** | string  | - | 
| **source_resource_id** | string  | - | 
| **sql_version** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Azure Cosmos DB for PostgreSQL Cluster. | 
| **earliest_restore_time** | string  | The earliest restore point time (ISO8601 format) for the Azure Cosmos DB for PostgreSQL Cluster. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "cosmosdb_documentdb/cosmosdb_postgresql_cluster" 
}

inputs = {
   name = "name of cosmosdb_postgresql_cluster" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   node_count = "node_count of cosmosdb_postgresql_cluster" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```