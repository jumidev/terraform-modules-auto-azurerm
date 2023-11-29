# azurerm_mysql_flexible_server

Manages a MySQL Flexible Server.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for this MySQL Flexible Server. Changing this forces a new MySQL Flexible Server to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the MySQL Flexible Server should exist. Changing this forces a new MySQL Flexible Server to be created. | 
| **var.location** | string | True | -  |  -  | The Azure Region where the MySQL Flexible Server should exist. Changing this forces a new MySQL Flexible Server to be created. | 
| **var.administrator_login** | string | False | -  |  -  | The Administrator login for the MySQL Flexible Server. Required when `create_mode` is `Default`. Changing this forces a new MySQL Flexible Server to be created. | 
| **var.administrator_password** | string | False | -  |  -  | The Password associated with the `administrator_login` for the MySQL Flexible Server. Required when `create_mode` is `Default`. | 
| **var.backup_retention_days** | string | False | `7`  |  `1`, `35`  | The backup retention days for the MySQL Flexible Server. Possible values are between `1` and `35` days. Defaults to `7`. | 
| **var.create_mode** | string | False | -  |  `Default`, `PointInTimeRestore`, `GeoRestore`, `Replica`  | The creation mode which can be used to restore or replicate existing servers. Possible values are `Default`, `PointInTimeRestore`, `GeoRestore`, and `Replica`. Changing this forces a new MySQL Flexible Server to be created. | 
| **var.customer_managed_key** | block | False | -  |  -  | A `customer_managed_key` block. | 
| **var.delegated_subnet_id** | string | False | -  |  -  | The ID of the virtual network subnet to create the MySQL Flexible Server. Changing this forces a new MySQL Flexible Server to be created. | 
| **var.geo_redundant_backup_enabled** | bool | False | `False`  |  -  | Should geo redundant backup enabled? Defaults to `false`. Changing this forces a new MySQL Flexible Server to be created. | 
| **var.high_availability** | block | False | -  |  -  | A `high_availability` block. | 
| **var.identity** | block | False | -  |  -  | An `identity` block. | 
| **var.maintenance_window** | block | False | -  |  -  | A `maintenance_window` block. | 
| **var.point_in_time_restore_time_in_utc** | string | False | -  |  -  | The point in time to restore from `creation_source_server_id` when `create_mode` is `PointInTimeRestore`. Changing this forces a new MySQL Flexible Server to be created. | 
| **var.private_dns_zone_id** | string | False | -  |  -  | The ID of the private DNS zone to create the MySQL Flexible Server. Changing this forces a new MySQL Flexible Server to be created. | 
| **var.replication_role** | string | False | -  |  -  | The replication role. Possible value is `None`. | 
| **var.sku_name** | string | False | -  |  -  | The SKU Name for the MySQL Flexible Server. | 
| **var.source_server_id** | string | False | -  |  -  | The resource ID of the source MySQL Flexible Server to be restored. Required when `create_mode` is `PointInTimeRestore`, `GeoRestore`, and `Replica`. Changing this forces a new MySQL Flexible Server to be created. | 
| **var.storage** | block | False | -  |  -  | A `storage` block. | 
| **var.version** | string | False | -  |  `5.7`, `8.0.21`  | The version of the MySQL Flexible Server to use. Possible values are `5.7`, and `8.0.21`. Changing this forces a new MySQL Flexible Server to be created. | 
| **var.zone** | string | False | -  |  `1`, `2`, `3`  | Specifies the Availability Zone in which this MySQL Flexible Server should be located. Possible values are `1`, `2` and `3`. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the MySQL Flexible Server. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **administrator_login** | string  | - | 
| **administrator_password** | string  | - | 
| **backup_retention_days** | string  | - | 
| **create_mode** | string  | - | 
| **customer_managed_key** | block  | - | 
| **delegated_subnet_id** | string  | - | 
| **geo_redundant_backup_enabled** | bool  | - | 
| **high_availability** | block  | - | 
| **identity** | block  | - | 
| **maintenance_window** | block  | - | 
| **point_in_time_restore_time_in_utc** | string  | - | 
| **private_dns_zone_id** | string  | - | 
| **replication_role** | string  | - | 
| **sku_name** | string  | - | 
| **source_server_id** | string  | - | 
| **storage** | block  | - | 
| **version** | string  | - | 
| **zone** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the MySQL Flexible Server. | 
| **fqdn** | string  | The fully qualified domain name of the MySQL Flexible Server. | 
| **public_network_access_enabled** | bool  | Is the public network access enabled? | 
| **replica_capacity** | int  | The maximum number of replicas that a primary MySQL Flexible Server can have. | 