# azurerm_mysql_flexible_server

Manages a MySQL Flexible Server.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this MySQL Flexible Server. Changing this forces a new MySQL Flexible Server to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the MySQL Flexible Server should exist. Changing this forces a new MySQL Flexible Server to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the MySQL Flexible Server should exist. Changing this forces a new MySQL Flexible Server to be created. | 
| **administrator_login** | string | False | -  |  -  | The Administrator login for the MySQL Flexible Server. Required when `create_mode` is `Default`. Changing this forces a new MySQL Flexible Server to be created. | 
| **administrator_password** | string | False | -  |  -  | The Password associated with the `administrator_login` for the MySQL Flexible Server. Required when `create_mode` is `Default`. | 
| **backup_retention_days** | string | False | `7`  |  `1`, `35`  | The backup retention days for the MySQL Flexible Server. Possible values are between `1` and `35` days. Defaults to `7`. | 
| **create_mode** | string | False | -  |  `Default`, `PointInTimeRestore`, `GeoRestore`, `Replica`  | The creation mode which can be used to restore or replicate existing servers. Possible values are `Default`, `PointInTimeRestore`, `GeoRestore`, and `Replica`. Changing this forces a new MySQL Flexible Server to be created. | 
| **customer_managed_key** | block | False | -  |  -  | A `customer_managed_key` block. | 
| **delegated_subnet_id** | string | False | -  |  -  | The ID of the virtual network subnet to create the MySQL Flexible Server. Changing this forces a new MySQL Flexible Server to be created. | 
| **geo_redundant_backup_enabled** | bool | False | `False`  |  -  | Should geo redundant backup enabled? Defaults to `false`. Changing this forces a new MySQL Flexible Server to be created. | 
| **high_availability** | block | False | -  |  -  | A `high_availability` block. | 
| **identity** | block | False | -  |  -  | An `identity` block. | 
| **maintenance_window** | block | False | -  |  -  | A `maintenance_window` block. | 
| **point_in_time_restore_time_in_utc** | string | False | -  |  -  | The point in time to restore from `creation_source_server_id` when `create_mode` is `PointInTimeRestore`. Changing this forces a new MySQL Flexible Server to be created. | 
| **private_dns_zone_id** | string | False | -  |  -  | The ID of the private DNS zone to create the MySQL Flexible Server. Changing this forces a new MySQL Flexible Server to be created. | 
| **replication_role** | string | False | -  |  -  | The replication role. Possible value is `None`. | 
| **sku_name** | string | False | -  |  -  | The SKU Name for the MySQL Flexible Server. | 
| **source_server_id** | string | False | -  |  -  | The resource ID of the source MySQL Flexible Server to be restored. Required when `create_mode` is `PointInTimeRestore`, `GeoRestore`, and `Replica`. Changing this forces a new MySQL Flexible Server to be created. | 
| **storage** | block | False | -  |  -  | A `storage` block. | 
| **version** | string | False | -  |  `5.7`, `8.0.21`  | The version of the MySQL Flexible Server to use. Possible values are `5.7`, and `8.0.21`. Changing this forces a new MySQL Flexible Server to be created. | 
| **zone** | string | False | -  |  `1`, `2`, `3`  | Specifies the Availability Zone in which this MySQL Flexible Server should be located. Possible values are `1`, `2` and `3`. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the MySQL Flexible Server. | 

