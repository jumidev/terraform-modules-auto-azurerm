# azurerm_postgresql_flexible_server

Manages a PostgreSQL Flexible Server.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this PostgreSQL Flexible Server. Changing this forces a new PostgreSQL Flexible Server to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the PostgreSQL Flexible Server should exist. Changing this forces a new PostgreSQL Flexible Server to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the PostgreSQL Flexible Server should exist. Changing this forces a new PostgreSQL Flexible Server to be created. | 
| **administrator_login** | string | False | -  |  -  | The Administrator login for the PostgreSQL Flexible Server. Required when `create_mode` is `Default` and `authentication.password_auth_enabled` is `true`. | 
| **administrator_password** | string | False | -  |  -  | The Password associated with the `administrator_login` for the PostgreSQL Flexible Server. Required when `create_mode` is `Default` and `authentication.password_auth_enabled` is `true`. | 
| **authentication** | block | False | -  |  -  | An `authentication` block. | 
| **backup_retention_days** | string | False | -  |  `7`, `35`  | The backup retention days for the PostgreSQL Flexible Server. Possible values are between `7` and `35` days. | 
| **customer_managed_key** | block | False | -  |  -  | A `customer_managed_key` block. Changing this forces a new resource to be created. | 
| **geo_redundant_backup_enabled** | bool | False | `False`  |  -  | Is Geo-Redundant backup enabled on the PostgreSQL Flexible Server. Defaults to `false`. Changing this forces a new PostgreSQL Flexible Server to be created. | 
| **create_mode** | string | False | -  |  `Default`, `PointInTimeRestore`, `Replica`, `Update`  | The creation mode which can be used to restore or replicate existing servers. Possible values are `Default`, `PointInTimeRestore`, `Replica` and `Update`. | 
| **delegated_subnet_id** | string | False | -  |  -  | The ID of the virtual network subnet to create the PostgreSQL Flexible Server. The provided subnet should not have any other resource deployed in it and this subnet will be delegated to the PostgreSQL Flexible Server, if not already delegated. Changing this forces a new PostgreSQL Flexible Server to be created. | 
| **private_dns_zone_id** | string | False | -  |  -  | The ID of the private DNS zone to create the PostgreSQL Flexible Server. | 
| **high_availability** | block | False | -  |  -  | A `high_availability` block. | 
| **identity** | block | False | -  |  -  | An `identity` block. | 
| **maintenance_window** | block | False | -  |  -  | A `maintenance_window` block. | 
| **point_in_time_restore_time_in_utc** | string | False | -  |  -  | The point in time to restore from `source_server_id` when `create_mode` is `PointInTimeRestore`. Changing this forces a new PostgreSQL Flexible Server to be created. | 
| **replication_role** | string | False | -  |  -  | The replication role for the PostgreSQL Flexible Server. Possible value is `None`. | 
| **sku_name** | string | False | -  |  -  | The SKU Name for the PostgreSQL Flexible Server. The name of the SKU, follows the `tier` + `name` pattern (e.g. `B_Standard_B1ms`, `GP_Standard_D2s_v3`, `MO_Standard_E4s_v3`). | 
| **source_server_id** | string | False | -  |  -  | The resource ID of the source PostgreSQL Flexible Server to be restored. Required when `create_mode` is `PointInTimeRestore` or `Replica`. Changing this forces a new PostgreSQL Flexible Server to be created. | 
| **auto_grow_enabled** | bool | False | `False`  |  -  | Is the storage auto grow for PostgreSQL Flexible Server enabled? Defaults to `false`. | 
| **storage_mb** | string | False | -  |  `32768`, `65536`, `131072`, `262144`, `524288`, `1048576`, `2097152`, `4193280`, `4194304`, `8388608`, `16777216`, `33553408`  | The max storage allowed for the PostgreSQL Flexible Server. Possible values are `32768`, `65536`, `131072`, `262144`, `524288`, `1048576`, `2097152`, `4193280`, `4194304`, `8388608`, `16777216` and `33553408`. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the PostgreSQL Flexible Server. | 
| **version** | string | False | -  |  `11`, `12`, `13`, `14`, `15`, `16`  | The version of PostgreSQL Flexible Server to use. Possible values are `11`,`12`, `13`, `14`, `15` and `16`. Required when `create_mode` is `Default`. | 
| **zone** | string | False | -  |  -  | Specifies the Availability Zone in which the PostgreSQL Flexible Server should be located. | 

