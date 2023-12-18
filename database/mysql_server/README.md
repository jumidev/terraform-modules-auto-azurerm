# azurerm_mysql_server

Manages a MySQL Server.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "database/mysql_server"   
}

inputs = {
   name = "Specifies the name of the MySQL Server"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   sku_name = "Specifies the SKU Name for this MySQL Server"   
   version = "Specifies the version of MySQL to use"   
   ssl_enforcement_enabled = "Specifies if SSL should be enforced on connections"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```
## Optional associated resource


### `spring_cloud_app_mysql_association` 

If set, makes a **azurerm_spring_cloud_app_mysql_association** - With the following options:

| attribute | type | required? | default |
| --------- | ---- | --------- | ------- |
| `name` | string | True | null |
| `spring_cloud_app_id` | string | True | null |
| `database_name` | string | True | null |
| `username` | string | True | null |
| `password` | string | True | null |


Example component snippet:

```hcl
inputs = {
   spring_cloud_app_mysql_association = {
      name = "..."      
      database_name = "..."      
      username = "..."      
      password = "..."      
   }
   
}

tfstate_inputs = {
   spring_cloud_app_mysql_association.spring_cloud_app.id = "path/to/spring_cloud_app_component:id"   
}

```


## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  Specifies the name of the MySQL Server. Changing this forces a new resource to be created. This needs to be globally unique within Azure. | 
| **resource_group_name** | string |  -  |  The name of the resource group in which to create the MySQL Server. Changing this forces a new resource to be created. | 
| **location** | string |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **sku_name** | string |  `tier`, `family`, `cores`, `B_Gen4_1`, `GP_Gen5_8`, `B_Gen4_2`, `B_Gen5_1`, `B_Gen5_2`, `GP_Gen4_2`, `GP_Gen4_4`, `GP_Gen4_8`, `GP_Gen4_16`, `GP_Gen4_32`, `GP_Gen5_2`, `GP_Gen5_4`, `GP_Gen5_16`, `GP_Gen5_32`, `GP_Gen5_64`, `MO_Gen5_2`, `MO_Gen5_4`, `MO_Gen5_8`, `MO_Gen5_16`, `MO_Gen5_32`  |  Specifies the SKU Name for this MySQL Server. The name of the SKU, follows the `tier` + `family` + `cores` pattern (e.g. `B_Gen4_1`, `GP_Gen5_8`). For more information see the [product documentation](https://docs.microsoft.com/azure/mysql/concepts-pricing-tiers). Possible values are `B_Gen4_1`, `B_Gen4_2`, `B_Gen5_1`, `B_Gen5_2`, `GP_Gen4_2`, `GP_Gen4_4`, `GP_Gen4_8`, `GP_Gen4_16`, `GP_Gen4_32`, `GP_Gen5_2`, `GP_Gen5_4`, `GP_Gen5_8`, `GP_Gen5_16`, `GP_Gen5_32`, `GP_Gen5_64`, `MO_Gen5_2`, `MO_Gen5_4`, `MO_Gen5_8`, `MO_Gen5_16` and `MO_Gen5_32`. | 
| **version** | string |  `5.7`, `8.0`  |  Specifies the version of MySQL to use. Valid values are `5.7`, or `8.0`. Changing this forces a new resource to be created. | 
| **ssl_enforcement_enabled** | string |  `true`, `false`  |  Specifies if SSL should be enforced on connections. Possible values are `true` and `false`. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **administrator_login** | string |  -  |  -  |  The Administrator login for the MySQL Server. Required when `create_mode` is `Default`. Changing this forces a new resource to be created. | 
| **administrator_login_password** | string |  `Random string of 32 characters`  |  -  |  The Password associated with the `administrator_login` for the MySQL Server. Required when `create_mode` is `Default`. | 
| **auto_grow_enabled** | bool |  `True`  |  -  |  Enable/Disable auto-growing of the storage. Storage auto-grow prevents your server from running out of storage and becoming read-only. If storage auto grow is enabled, the storage automatically grows without impacting the workload. Defaults to `true`. | 
| **backup_retention_days** | number |  -  |  -  |  Backup retention days for the server, supported values are between `7` and `35` days. | 
| **create_mode** | string |  `Default`  |  `Default`, `Replica`, `GeoRestore`, `PointInTimeRestore`  |  The creation mode. Can be used to restore or replicate existing servers. Possible values are `Default`, `Replica`, `GeoRestore`, and `PointInTimeRestore`. Defaults to `Default`. | 
| **creation_source_server_id** | string |  -  |  -  |  For creation modes other than `Default`, the source server ID to use. | 
| **geo_redundant_backup_enabled** | bool |  -  |  -  |  Turn Geo-redundant server backups on/off. This allows you to choose between locally redundant or geo-redundant backup storage in the General Purpose and Memory Optimized tiers. When the backups are stored in geo-redundant backup storage, they are not only stored within the region in which your server is hosted, but are also replicated to a paired data center. This provides better protection and ability to restore your server in a different region in the event of a disaster. This is not supported for the Basic tier. | 
| **identity** | [block](#identity-block-structure) |  -  |  -  |  An `identity` block. | 
| **infrastructure_encryption_enabled** | bool |  -  |  -  |  Whether or not infrastructure is encrypted for this server. Changing this forces a new resource to be created. | 
| **public_network_access_enabled** | bool |  `True`  |  -  |  Whether or not public network access is allowed for this server. Defaults to `true`. | 
| **restore_point_in_time** | string |  -  |  `creation_source_server_id`  |  When `create_mode` is `PointInTimeRestore`, specifies the point in time to restore from `creation_source_server_id`. It should be provided in [RFC3339](https://www.rfc-editor.org/rfc/rfc3339) format, e.g. `2013-11-08T22:00:40Z`. | 
| **ssl_minimal_tls_version_enforced** | string |  `TLS1_2`  |  `TLSEnforcementDisabled`, `TLS1_0`, `TLS1_1`, `TLS1_2`  |  The minimum TLS version to support on the sever. Possible values are `TLSEnforcementDisabled`, `TLS1_0`, `TLS1_1`, and `TLS1_2`. Defaults to `TLS1_2`. | 
| **storage_mb** | string |  -  |  `5120`, `1048576`, `16777216`  |  Max storage allowed for a server. Possible values are between `5120` MB(5GB) and `1048576` MB(1TB) for the Basic SKU and between `5120` MB(5GB) and `16777216` MB(16TB) for General Purpose/Memory Optimized SKUs. For more information see the [product documentation](https://docs.microsoft.com/azure/mysql/concepts-pricing-tiers). | 

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this MySQL Server. The only possible value is 'SystemAssigned'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the MySQL Server. | 
| **fqdn** | string | No  | The FQDN of the MySQL Server. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. | 

Additionally, all variables are provided as outputs.
