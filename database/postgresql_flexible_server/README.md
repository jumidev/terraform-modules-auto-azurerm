# azurerm_postgresql_flexible_server



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "database/postgresql_flexible_server"   
}
inputs = {
   name = "The name which should be used for this PostgreSQL Flexible Server..."   
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
| **name** | string |  The name which should be used for this PostgreSQL Flexible Server. Changing this forces a new PostgreSQL Flexible Server to be created. ~> **Note** This must be unique across the entire Azure service, not just within the resource group. | 
| **resource_group_name** | string |  The name of the Resource Group where the PostgreSQL Flexible Server should exist. Changing this forces a new PostgreSQL Flexible Server to be created. | 
| **location** | string |  The Azure Region where the PostgreSQL Flexible Server should exist. Changing this forces a new PostgreSQL Flexible Server to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **administrator_login** | string |  -  |  -  |  The Administrator login for the PostgreSQL Flexible Server. Required when `create_mode` is `Default` and `authentication.password_auth_enabled` is `true`. -> **Note:** Once `administrator_login` is specified, changing this forces a new PostgreSQL Flexible Server to be created. -> **Note:** To create with `administrator_login` specified or update with it first specified , `authentication.password_auth_enabled` must be set to `true`. | 
| **administrator_password** | string |  `Random string of 32 characters`  |  -  |  The Password associated with the `administrator_login` for the PostgreSQL Flexible Server. Required when `create_mode` is `Default` and `authentication.password_auth_enabled` is `true`. | 
| **authentication** | [block](#authentication-block-structure) |  -  |  -  |  An `authentication` block. | 
| **backup_retention_days** | number |  -  |  `7`, `35`  |  The backup retention days for the PostgreSQL Flexible Server. Possible values are between `7` and `35` days. | 
| **customer_managed_key** | [block](#customer_managed_key-block-structure) |  -  |  -  |  A `customer_managed_key` block. Changing this forces a new resource to be created. | 
| **geo_redundant_backup_enabled** | bool |  `False`  |  -  |  Is Geo-Redundant backup enabled on the PostgreSQL Flexible Server. Defaults to `false`. Changing this forces a new PostgreSQL Flexible Server to be created. | 
| **create_mode** | string |  -  |  `Default`, `GeoRestore`, `PointInTimeRestore`, `Replica`, `Update`  |  The creation mode which can be used to restore or replicate existing servers. Possible values are `Default`, `GeoRestore`, `PointInTimeRestore`, `Replica` and `Update`. Changing this forces a new PostgreSQL Flexible Server to be created. -> **Note:** `create_mode` cannot be changed once it's set since it's a parameter at creation. -> **Note:** While creating the resource, `create_mode` cannot be set to `Update`. | 
| **delegated_subnet_id** | string |  -  |  -  |  The ID of the virtual network subnet to create the PostgreSQL Flexible Server. The provided subnet should not have any other resource deployed in it and this subnet will be delegated to the PostgreSQL Flexible Server, if not already delegated. Changing this forces a new PostgreSQL Flexible Server to be created. | 
| **private_dns_zone_id** | string |  -  |  -  |  The ID of the private DNS zone to create the PostgreSQL Flexible Server. ~> **Note:** There will be a breaking change from upstream service at 15th July 2021, the `private_dns_zone_id` will be required when setting a `delegated_subnet_id`. For existing flexible servers who don't want to be recreated, you need to provide the `private_dns_zone_id` to the service team to manually migrate to the specified private DNS zone. The `azurerm_private_dns_zone` should end with suffix `.postgres.database.azure.com`. | 
| **public_network_access_enabled** | bool |  `True`  |  -  |  Specifies whether this PostgreSQL Flexible Server is publicly accessible. Defaults to `true`. -> **Note:** `public_network_access_enabled` must be set to `false` when `delegated_subnet_id` and `private_dns_zone_id` have a value. | 
| **high_availability** | [block](#high_availability-block-structure) |  -  |  -  |  A `high_availability` block. | 
| **identity** | [block](#identity-block-structure) |  -  |  -  |  An `identity` block. | 
| **maintenance_window** | [block](#maintenance_window-block-structure) |  -  |  -  |  A `maintenance_window` block. | 
| **point_in_time_restore_time_in_utc** | string |  -  |  -  |  The point in time to restore from `source_server_id` when `create_mode` is `GeoRestore`, `PointInTimeRestore`. Changing this forces a new PostgreSQL Flexible Server to be created. | 
| **replication_role** | string |  -  |  `None`  |  The replication role for the PostgreSQL Flexible Server. Possible value is `None`. ~> **Note:** The `replication_role` cannot be set while creating and only can be updated to `None` for replica server. | 
| **sku_name** | string |  -  |  -  |  The SKU Name for the PostgreSQL Flexible Server. The name of the SKU, follows the `tier` + `name` pattern (e.g. `B_Standard_B1ms`, `GP_Standard_D2s_v3`, `MO_Standard_E4s_v3`). | 
| **source_server_id** | string |  -  |  -  |  The resource ID of the source PostgreSQL Flexible Server to be restored. Required when `create_mode` is `GeoRestore`, `PointInTimeRestore` or `Replica`. Changing this forces a new PostgreSQL Flexible Server to be created. | 
| **auto_grow_enabled** | bool |  `False`  |  -  |  Is the storage auto grow for PostgreSQL Flexible Server enabled? Defaults to `false`. | 
| **storage_mb** | number |  `32768`  |  `32768`, `65536`, `131072`, `262144`, `524288`, `1048576`, `2097152`, `4193280`, `4194304`, `8388608`, `16777216`, `33553408`  |  The max storage allowed for the PostgreSQL Flexible Server. Possible values are `32768`, `65536`, `131072`, `262144`, `524288`, `1048576`, `2097152`, `4193280`, `4194304`, `8388608`, `16777216` and `33553408`. ~> **Note:** If the `storage_mb` field is undefined on the initial deployment of the PostgreSQL Flexible Server resource it will default to `32768`. If the `storage_mb` field has been defined and then removed, the `storage_mb` field will retain the previously defined value. ~> **Note:** The `storage_mb` can only be scaled up, for example, you can scale the `storage_mb` from `32768` to `65536`, but not from `65536` to `32768`. | 
| **storage_tier** | string |  `storage_mb`  |  `P4`, `P6`, `P10`, `P15`, `P20`, `P30`, `P40`, `P50`, `P60`, `P70`, `P80`  |  The name of storage performance tier for IOPS of the PostgreSQL Flexible Server. Possible values are `P4`, `P6`, `P10`, `P15`,`P20`, `P30`,`P40`, `P50`,`P60`, `P70` or `P80`. Default value is dependant on the `storage_mb` value. Please see the `storage_tier` defaults based on `storage_mb` table below. ~> **Note:** The `storage_tier` can be scaled once every 12 hours, this restriction is in place to ensure stability and performance after any changes to your PostgreSQL Flexible Server's configuration. | 
| **tags** | map |  -  |  -  |  A mapping of tags which should be assigned to the PostgreSQL Flexible Server. | 
| **version** | string |  -  |  `11`, `12`, `13`, `14`, `15`, `16`  |  The version of PostgreSQL Flexible Server to use. Possible values are `11`,`12`, `13`, `14`, `15` and `16`. Required when `create_mode` is `Default`. -> **Note:** When `create_mode` is `Update`, upgrading version wouldn't force a new resource to be created. | 
| **zone** | string |  -  |  `zone`, `ignore_changes`, `high_availability[0].standby_availability_zone`  |  Specifies the Availability Zone in which the PostgreSQL Flexible Server should be located. -> **Note:** Azure will automatically assign an Availability Zone if one is not specified. If the PostgreSQL Flexible Server fails-over to the Standby Availability Zone, the `zone` will be updated to reflect the current Primary Availability Zone. You can use [Terraform's `ignore_changes` functionality](https://www.terraform.io/docs/language/meta-arguments/lifecycle.html#ignore_changes) to ignore changes to the `zone` and `high_availability[0].standby_availability_zone` fields should you wish for Terraform to not migrate the PostgreSQL Flexible Server back to it's primary Availability Zone after a fail-over. -> **Note:** The Availability Zones available depend on the Azure Region that the PostgreSQL Flexible Server is being deployed into - see [the Azure Availability Zones documentation](https://azure.microsoft.com/global-infrastructure/geographies/#geographies) for more information on which Availability Zones are available in each Azure Region. | 

### `maintenance_window` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `day_of_week` | string | No | 0 | The day of week for maintenance window, where the week starts on a Sunday, i.e. Sunday = '0', Monday = '1'. Defaults to '0'. |
| `start_hour` | string | No | 0 | The start hour for maintenance window. Defaults to '0'. |
| `start_minute` | string | No | 0 | The start minute for maintenance window. Defaults to '0'. |

### `high_availability` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `mode` | string | Yes | - | The high availability mode for the PostgreSQL Flexible Server. Possible value are 'SameZone' or 'ZoneRedundant'. |
| `standby_availability_zone` | string | No | - | Specifies the Availability Zone in which the standby Flexible Server should be located. -> **Note:** Azure will automatically assign an Availability Zone if one is not specified. If the PostgreSQL Flexible Server fails-over to the Standby Availability Zone, the 'zone' will be updated to reflect the current Primary Availability Zone. You can use [Terraform's 'ignore_changes' functionality](https://www.terraform.io/docs/language/meta-arguments/lifecycle.html#ignore_changes) to ignore changes to the 'zone' and 'high_availability[0].standby_availability_zone' fields should you wish for Terraform to not migrate the PostgreSQL Flexible Server back to it's primary Availability Zone after a fail-over. -> **Note:** The Availability Zones available depend on the Azure Region that the PostgreSQL Flexible Server is being deployed into - see [the Azure Availability Zones documentation](https://azure.microsoft.com/global-infrastructure/geographies/#geographies) for more information on which Availability Zones are available in each Azure Region. |

### `customer_managed_key` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `key_vault_key_id` | string | Yes | - | The ID of the Key Vault Key. |
| `primary_user_assigned_identity_id` | string | No | - | Specifies the primary user managed identity id for a Customer Managed Key. Should be added with 'identity_ids'. |
| `geo_backup_key_vault_key_id` | string | No | - | The ID of the geo backup Key Vault Key. It can't cross region and need Customer Managed Key in same region as geo backup. |
| `geo_backup_user_assigned_identity_id` | string | No | - | The geo backup user managed identity id for a Customer Managed Key. Should be added with 'identity_ids'. It can't cross region and need identity in same region as geo backup. ~> **Note:** 'primary_user_assigned_identity_id' or 'geo_backup_user_assigned_identity_id' is required when 'type' is set to 'UserAssigned'. |

### `authentication` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `active_directory_auth_enabled` | bool | No | False | Whether or not Active Directory authentication is allowed to access the PostgreSQL Flexible Server. Defaults to 'false'. |
| `password_auth_enabled` | bool | No | True | Whether or not password authentication is allowed to access the PostgreSQL Flexible Server. Defaults to 'true'. |
| `tenant_id` | string | No | - | The Tenant ID of the Azure Active Directory which is used by the Active Directory authentication. 'active_directory_auth_enabled' must be set to 'true'. -> **Note:** Setting 'active_directory_auth_enabled' to 'true' requires a Service Principal for the Postgres Flexible Server. For more details see [this document](https://learn.microsoft.com/en-us/azure/postgresql/flexible-server/how-to-configure-sign-in-azure-ad-authentication). -> **Note:** 'tenant_id' is required when 'active_directory_auth_enabled' is set to 'true'. And it should not be specified when 'active_directory_auth_enabled' is set to 'false' |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this PostgreSQL Flexible Server. The only possible value is 'UserAssigned'. |
| `identity_ids` | list | Yes | - | A list of User Assigned Managed Identity IDs to be assigned to this PostgreSQL Flexible Server. Required if used together with 'customer_managed_key' block. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the PostgreSQL Flexible Server. | 
| **fqdn** | string | No  | The FQDN of the PostgreSQL Flexible Server. | 

Additionally, all variables are provided as outputs.
