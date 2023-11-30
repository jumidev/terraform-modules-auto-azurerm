# azurerm_mysql_flexible_server

Manages a MySQL Flexible Server.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "database/mysql_flexible_server" 
}

inputs = {
   name = "name of mysql_flexible_server" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name which should be used for this MySQL Flexible Server. Changing this forces a new MySQL Flexible Server to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the Resource Group where the MySQL Flexible Server should exist. Changing this forces a new MySQL Flexible Server to be created. | 
| **var.location** | string | True | -  |  -  |  The Azure Region where the MySQL Flexible Server should exist. Changing this forces a new MySQL Flexible Server to be created. | 
| **var.administrator_login** | string | False | -  |  -  |  The Administrator login for the MySQL Flexible Server. Required when `create_mode` is `Default`. Changing this forces a new MySQL Flexible Server to be created. | 
| **var.administrator_password** | string | False | -  |  -  |  The Password associated with the `administrator_login` for the MySQL Flexible Server. Required when `create_mode` is `Default`. | 
| **var.backup_retention_days** | string | False | `7`  |  `1`, `35`  |  The backup retention days for the MySQL Flexible Server. Possible values are between `1` and `35` days. Defaults to `7`. | 
| **var.create_mode** | string | False | -  |  `Default`, `PointInTimeRestore`, `GeoRestore`, `Replica`  |  The creation mode which can be used to restore or replicate existing servers. Possible values are `Default`, `PointInTimeRestore`, `GeoRestore`, and `Replica`. Changing this forces a new MySQL Flexible Server to be created. | 
| **var.customer_managed_key** | block | False | -  |  -  |  A `customer_managed_key` block. | 
| **var.delegated_subnet_id** | string | False | -  |  -  |  The ID of the virtual network subnet to create the MySQL Flexible Server. Changing this forces a new MySQL Flexible Server to be created. | 
| **var.geo_redundant_backup_enabled** | bool | False | `False`  |  -  |  Should geo redundant backup enabled? Defaults to `false`. Changing this forces a new MySQL Flexible Server to be created. | 
| **var.high_availability** | block | False | -  |  -  |  A `high_availability` block. | 
| **var.identity** | block | False | -  |  -  |  An `identity` block. | 
| **var.maintenance_window** | block | False | -  |  -  |  A `maintenance_window` block. | 
| **var.point_in_time_restore_time_in_utc** | string | False | -  |  -  |  The point in time to restore from `creation_source_server_id` when `create_mode` is `PointInTimeRestore`. Changing this forces a new MySQL Flexible Server to be created. | 
| **var.private_dns_zone_id** | string | False | -  |  -  |  The ID of the private DNS zone to create the MySQL Flexible Server. Changing this forces a new MySQL Flexible Server to be created. | 
| **var.replication_role** | string | False | -  |  -  |  The replication role. Possible value is `None`. | 
| **var.sku_name** | string | False | -  |  -  |  The SKU Name for the MySQL Flexible Server. | 
| **var.source_server_id** | string | False | -  |  -  |  The resource ID of the source MySQL Flexible Server to be restored. Required when `create_mode` is `PointInTimeRestore`, `GeoRestore`, and `Replica`. Changing this forces a new MySQL Flexible Server to be created. | 
| **var.storage** | block | False | -  |  -  |  A `storage` block. | 
| **var.version** | string | False | -  |  `5.7`, `8.0.21`  |  The version of the MySQL Flexible Server to use. Possible values are `5.7`, and `8.0.21`. Changing this forces a new MySQL Flexible Server to be created. | 
| **var.zone** | string | False | -  |  `1`, `2`, `3`  |  Specifies the Availability Zone in which this MySQL Flexible Server should be located. Possible values are `1`, `2` and `3`. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags which should be assigned to the MySQL Flexible Server. | 

### `customer_managed_key` block structure

> `key_vault_key_id` (string): The ID of the Key Vault Key.\
> `primary_user_assigned_identity_id` (string): Specifies the primary user managed identity id for a Customer Managed Key. Should be added with 'identity_ids'.\
> `geo_backup_key_vault_key_id` (string): The ID of the geo backup Key Vault Key. It can't cross region and need Customer Managed Key in same region as geo backup.\
> `geo_backup_user_assigned_identity_id` (string): The geo backup user managed identity id for a Customer Managed Key. Should be added with 'identity_ids'. It can't cross region and need identity in same region as geo backup.\

### `high_availability` block structure

> `mode` (string): (REQUIRED) The high availability mode for the MySQL Flexible Server. Possibles values are 'SameZone' and 'ZoneRedundant'.\
> `standby_availability_zone` (string): Specifies the Availability Zone in which the standby Flexible Server should be located. Possible values are '1', '2' and '3'.\

### `identity` block structure

> `type` (string): (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this MySQL Flexible Server. The only possible value is 'UserAssigned'.\
> `identity_ids` (list): (REQUIRED) A list of User Assigned Managed Identity IDs to be assigned to this MySQL Flexible Server.\

### `maintenance_window` block structure

> `day_of_week` (string): The day of week for maintenance window. Defaults to '0'.\
> `start_hour` (string): The start hour for maintenance window. Defaults to '0'.\
> `start_minute` (string): The start minute for maintenance window. Defaults to '0'.\

### `storage` block structure

> `auto_grow_enabled` (bool): Should Storage Auto Grow be enabled? Defaults to 'true'.\
> `io_scaling_enabled` (bool): Should IOPS be scaled automatically? If 'true', 'iops' can not be set. Defaults to 'false'.\
> `iops` (string): The storage IOPS for the MySQL Flexible Server. Possible values are between '360' and '20000'.\
> `size_gb` (string): The max storage allowed for the MySQL Flexible Server. Possible values are between '20' and '16384'.\



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the MySQL Flexible Server. | 
| **fqdn** | string | No  | The fully qualified domain name of the MySQL Flexible Server. | 
| **public_network_access_enabled** | bool | No  | Is the public network access enabled? | 
| **replica_capacity** | int | No  | The maximum number of replicas that a primary MySQL Flexible Server can have. | 

Additionally, all variables are provided as outputs.
