# azurerm_mysql_flexible_server



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "database/mysql_flexible_server"   
}
inputs = {
   name = "The name which should be used for this MySQL Flexible Server..."   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
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
| **name** | string |  The name which should be used for this MySQL Flexible Server. Changing this forces a new MySQL Flexible Server to be created. | 
| **resource_group_name** | string |  The name of the Resource Group where the MySQL Flexible Server should exist. Changing this forces a new MySQL Flexible Server to be created. | 
| **location** | string |  The Azure Region where the MySQL Flexible Server should exist. Changing this forces a new MySQL Flexible Server to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **administrator_login** | string |  -  |  -  |  The Administrator login for the MySQL Flexible Server. Required when `create_mode` is `Default`. Changing this forces a new MySQL Flexible Server to be created. | 
| **administrator_password** | string |  `Random string of 32 characters`  |  -  |  The Password associated with the `administrator_login` for the MySQL Flexible Server. Required when `create_mode` is `Default`. | 
| **backup_retention_days** | number |  `7`  |  `1`, `35`  |  The backup retention days for the MySQL Flexible Server. Possible values are between `1` and `35` days. Defaults to `7`. | 
| **create_mode** | string |  -  |  `Default`, `PointInTimeRestore`, `GeoRestore`, `Replica`  |  The creation mode which can be used to restore or replicate existing servers. Possible values are `Default`, `PointInTimeRestore`, `GeoRestore`, and `Replica`. Changing this forces a new MySQL Flexible Server to be created. ~> **NOTE:** Creating a `GeoRestore` server requires the source server with `geo_redundant_backup_enabled` enabled. ~> **NOTE:** When a server is first created it may not be immediately available for `geo restore` or `replica`. It may take a few minutes to several hours for the necessary metadata to be populated. Please see the [Geo Restore](https://learn.microsoft.com/azure/mysql/single-server/how-to-restore-server-portal#geo-restore) and the [Replica](https://learn.microsoft.com/azure/mysql/flexible-server/concepts-read-replicas#create-a-replica) for more information. | 
| **customer_managed_key** | [block](#customer_managed_key-block-structure) |  -  |  -  |  A `customer_managed_key` block. ~> **NOTE:** `identity` is required when `customer_managed_key` is specified. | 
| **delegated_subnet_id** | string |  -  |  -  |  The ID of the virtual network subnet to create the MySQL Flexible Server. Changing this forces a new MySQL Flexible Server to be created. | 
| **geo_redundant_backup_enabled** | bool |  `False`  |  -  |  Should geo redundant backup enabled? Defaults to `false`. Changing this forces a new MySQL Flexible Server to be created. | 
| **high_availability** | [block](#high_availability-block-structure) |  -  |  -  |  A `high_availability` block. | 
| **identity** | [block](#identity-block-structure) |  -  |  -  |  An `identity` block. | 
| **maintenance_window** | [block](#maintenance_window-block-structure) |  -  |  -  |  A `maintenance_window` block. | 
| **point_in_time_restore_time_in_utc** | string |  -  |  -  |  The point in time to restore from `creation_source_server_id` when `create_mode` is `PointInTimeRestore`. Changing this forces a new MySQL Flexible Server to be created. | 
| **private_dns_zone_id** | string |  -  |  -  |  The ID of the private DNS zone to create the MySQL Flexible Server. Changing this forces a new MySQL Flexible Server to be created. ~> **NOTE:** The `private_dns_zone_id` is required when setting a `delegated_subnet_id`. The `azurerm_private_dns_zone` should end with suffix `.mysql.database.azure.com`. | 
| **replication_role** | string |  -  |  `Replica`, `None`  |  The replication role. Possible value is `None`. ~> **NOTE:** The `replication_role` cannot be set while creating and only can be updated from `Replica` to `None`. | 
| **sku_name** | string |  -  |  -  |  The SKU Name for the MySQL Flexible Server. -> **NOTE:** `sku_name` should start with SKU tier `B (Burstable)`, `GP (General Purpose)`, `MO (Memory Optimized)` like `B_Standard_B1s`. | 
| **source_server_id** | string |  -  |  -  |  The resource ID of the source MySQL Flexible Server to be restored. Required when `create_mode` is `PointInTimeRestore`, `GeoRestore`, and `Replica`. Changing this forces a new MySQL Flexible Server to be created. | 
| **storage** | [block](#storage-block-structure) |  -  |  -  |  A `storage` block. | 
| **version** | string |  -  |  `5.7`, `8.0.21`  |  The version of the MySQL Flexible Server to use. Possible values are `5.7`, and `8.0.21`. Changing this forces a new MySQL Flexible Server to be created. | 
| **zone** | string |  -  |  `1`, `2`, `3`  |  Specifies the Availability Zone in which this MySQL Flexible Server should be located. Possible values are `1`, `2` and `3`. -> **Note:** Azure will automatically assign an Availability Zone if one is not specified. If the MySQL Flexible Server fails-over to the Standby Availability Zone, the `zone` will be updated to reflect the current Primary Availability Zone. You can use [Terraform's `ignore_changes` functionality](https://www.terraform.io/docs/language/meta-arguments/lifecycle.html#ignore_changes) to ignore changes to the `zone` and `high_availability[0].standby_availability_zone` fields should you wish for Terraform to not migrate the MySQL Flexible Server back to it's primary Availability Zone after a fail-over. -> **Note:** The Availability Zones available depend on the Azure Region that the MySQL Flexible Server is being deployed into - see [the Azure Availability Zones documentation](https://azure.microsoft.com/global-infrastructure/geographies/#geographies) for more information on which Availability Zones are available in each Azure Region. | 
| **tags** | map |  -  |  -  |  A mapping of tags which should be assigned to the MySQL Flexible Server. | 

### `customer_managed_key` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `key_vault_key_id` | string | No | - | The ID of the Key Vault Key. |
| `primary_user_assigned_identity_id` | string | No | - | Specifies the primary user managed identity id for a Customer Managed Key. Should be added with 'identity_ids'. |
| `geo_backup_key_vault_key_id` | string | No | - | The ID of the geo backup Key Vault Key. It can't cross region and need Customer Managed Key in same region as geo backup. |
| `geo_backup_user_assigned_identity_id` | string | No | - | The geo backup user managed identity id for a Customer Managed Key. Should be added with 'identity_ids'. It can't cross region and need identity in same region as geo backup. ~> **NOTE:** 'primary_user_assigned_identity_id' or 'geo_backup_user_assigned_identity_id' is required when 'type' is set to 'UserAssigned' or 'SystemAssigned, UserAssigned'. |

### `storage` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `auto_grow_enabled` | bool | No | True | Should Storage Auto Grow be enabled? Defaults to 'true'. |
| `io_scaling_enabled` | bool | No | False | Should IOPS be scaled automatically? If 'true', 'iops' can not be set. Defaults to 'false'. |
| `iops` | number | No | - | The storage IOPS for the MySQL Flexible Server. Possible values are between '360' and '20000'. |
| `size_gb` | number | No | - | The max storage allowed for the MySQL Flexible Server. Possible values are between '20' and '16384'. -> **Note:** Decreasing 'size_gb' forces a new resource to be created. |

### `high_availability` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `mode` | bool | Yes | - | The high availability mode for the MySQL Flexible Server. Possibles values are 'SameZone' and 'ZoneRedundant'. ~> **NOTE:** 'storage[0].auto_grow_enabled' must be enabled when 'high_availability' is enabled. To change the 'high_availability' for a MySQL Flexible Server created with 'high_availability' disabled during creation, the resource has to be recreated. |
| `standby_availability_zone` | string | No | - | Specifies the Availability Zone in which the standby Flexible Server should be located. Possible values are '1', '2' and '3'. -> **Note:** Azure will automatically assign an Availability Zone if one is not specified. If the MySQL Flexible Server fails-over to the Standby Availability Zone, the 'zone' will be updated to reflect the current Primary Availability Zone. You can use [Terraform's 'ignore_changes' functionality](https://www.terraform.io/docs/language/meta-arguments/lifecycle.html#ignore_changes) to ignore changes to the 'zone' and 'high_availability[0].standby_availability_zone' fields should you wish for Terraform to not migrate the MySQL Flexible Server back to it's primary Availability Zone after a fail-over. -> **Note:** The Availability Zones available depend on the Azure Region that the MySQL Flexible Server is being deployed into - see [the Azure Availability Zones documentation](https://azure.microsoft.com/global-infrastructure/geographies/#geographies) for more information on which Availability Zones are available in each Azure Region. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this MySQL Flexible Server. The only possible value is 'UserAssigned'. |
| `identity_ids` | list | Yes | - | A list of User Assigned Managed Identity IDs to be assigned to this MySQL Flexible Server. |

### `maintenance_window` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `day_of_week` | string | No | 0 | The day of week for maintenance window. Defaults to '0'. |
| `start_hour` | string | No | 0 | The start hour for maintenance window. Defaults to '0'. |
| `start_minute` | string | No | 0 | The start minute for maintenance window. Defaults to '0'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **size_gb** | number | No  | The max storage allowed for the MySQL Flexible Server. Possible values are between `20` and `16384`. -> **Note:** Decreasing `size_gb` forces a new resource to be created. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the MySQL Flexible Server. | 
| **fqdn** | string | No  | The fully qualified domain name of the MySQL Flexible Server. | 
| **public_network_access_enabled** | bool | No  | Is the public network access enabled? | 
| **replica_capacity** | number | No  | The maximum number of replicas that a primary MySQL Flexible Server can have. | 

Additionally, all variables are provided as outputs.
