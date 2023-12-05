# azurerm_mariadb_server

Manages a MariaDB Server.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "database/mariadb_server"   
}

inputs = {
   name = "Specifies the name of the MariaDB Server"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   sku_name = "Specifies the SKU Name for this MariaDB Server"   
   version = "Specifies the version of MariaDB to use"   
   ssl_enforcement_enabled = "Specifies if SSL should be enforced on connections"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  Specifies the name of the MariaDB Server. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  The name of the resource group in which to create the MariaDB Server. Changing this forces a new resource to be created. | 
| **location** | string |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **sku_name** | string |  `B_Gen5_1`, `B_Gen5_2`, `GP_Gen5_2`, `GP_Gen5_4`, `GP_Gen5_8`, `GP_Gen5_16`, `GP_Gen5_32`, `MO_Gen5_2`, `MO_Gen5_4`, `MO_Gen5_8`, `MO_Gen5_16`  |  Specifies the SKU Name for this MariaDB Server. The name of the SKU, follows the `tier` + `family` + `cores` pattern (e.g. `B_Gen4_1`, `GP_Gen5_8`). For more information see the [product documentation](https://docs.microsoft.com/rest/api/mariadb/servers/create#sku). Possible values are `B_Gen5_1`, `B_Gen5_2`, `GP_Gen5_2`, `GP_Gen5_4`, `GP_Gen5_8`, `GP_Gen5_16`, `GP_Gen5_32`, `MO_Gen5_2`, `MO_Gen5_4`, `MO_Gen5_8` and `MO_Gen5_16`. | 
| **version** | string |  `10.2`, `10.3`  |  Specifies the version of MariaDB to use. Possible values are `10.2` and `10.3`. Changing this forces a new resource to be created. | 
| **ssl_enforcement_enabled** | string |  `true`, `false`  |  Specifies if SSL should be enforced on connections. Possible values are `true` and `false`. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **administrator_login** | string |  -  |  -  |  The Administrator login for the MariaDB Server. Changing this forces a new resource to be created. | 
| **administrator_login_password** | string |  `Random string of 32 characters`  |  -  |  The Password associated with the `administrator_login` for the MariaDB Server. | 
| **auto_grow_enabled** | bool |  `True`  |  -  |  Enable/Disable auto-growing of the storage. Storage auto-grow prevents your server from running out of storage and becoming read-only. If storage auto grow is enabled, the storage automatically grows without impacting the workload. The default value if not explicitly specified is `true`. Defaults to `true`. | 
| **backup_retention_days** | int |  -  |  -  |  Backup retention days for the server, supported values are between `7` and `35` days. | 
| **create_mode** | string |  `Default`  |  `Default`, `Replica`, `GeoRestore`, `PointInTimeRestore`  |  The creation mode. Can be used to restore or replicate existing servers. Possible values are `Default`, `Replica`, `GeoRestore`, and `PointInTimeRestore`. Defaults to `Default`. | 
| **creation_source_server_id** | string |  -  |  -  |  For creation modes other than `Default`, the source server ID to use. | 
| **geo_redundant_backup_enabled** | bool |  -  |  -  |  Turn Geo-redundant server backups on/off. This allows you to choose between locally redundant or geo-redundant backup storage in the General Purpose and Memory Optimized tiers. When the backups are stored in geo-redundant backup storage, they are not only stored within the region in which your server is hosted, but are also replicated to a paired data center. This provides better protection and ability to restore your server in a different region in the event of a disaster. This is not supported for the Basic tier. | 
| **public_network_access_enabled** | bool |  `True`  |  -  |  Whether or not public network access is allowed for this server. Defaults to `true`. | 
| **restore_point_in_time** | string |  -  |  -  |  When `create_mode` is `PointInTimeRestore`, specifies the point in time to restore from `creation_source_server_id`. It should be provided in [RFC3339](https://www.rfc-editor.org/rfc/rfc3339) format, e.g. `2013-11-08T22:00:40Z`. | 
| **ssl_minimal_tls_version_enforced** | string |  `TLS1_2`  |  `TLSEnforcementDisabled`, `TLS1_0`, `TLS1_1`, `TLS1_2`  |  The minimum TLS version to support on the sever. Possible values are `TLSEnforcementDisabled`, `TLS1_0`, `TLS1_1`, and `TLS1_2`. Defaults to `TLS1_2`. | 
| **storage_mb** | string |  -  |  `5120`, `1024000`, `4096000`  |  Max storage allowed for a server. Possible values are between `5120` MB (5GB) and `1024000`MB (1TB) for the Basic SKU and between `5120` MB (5GB) and `4096000` MB (4TB) for General Purpose/Memory Optimized SKUs. For more information see the [product documentation](https://docs.microsoft.com/rest/api/mariadb/servers/create#storageprofile). | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the MariaDB Server. | 
| **fqdn** | string | No  | The FQDN of the MariaDB Server. | 

Additionally, all variables are provided as outputs.
