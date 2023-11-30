# azurerm_postgresql_flexible_server

Manages a PostgreSQL Flexible Server.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "database/postgresql_flexible_server" 
}

inputs = {
   name = "name of postgresql_flexible_server" 
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
| **var.name** | string |  The name which should be used for this PostgreSQL Flexible Server. Changing this forces a new PostgreSQL Flexible Server to be created. | 
| **var.resource_group_name** | string |  The name of the Resource Group where the PostgreSQL Flexible Server should exist. Changing this forces a new PostgreSQL Flexible Server to be created. | 
| **var.location** | string |  The Azure Region where the PostgreSQL Flexible Server should exist. Changing this forces a new PostgreSQL Flexible Server to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **var.administrator_login** | string |  -  |  -  |  The Administrator login for the PostgreSQL Flexible Server. Required when `create_mode` is `Default` and `authentication.password_auth_enabled` is `true`. | 
| **var.administrator_password** | string |  -  |  -  |  The Password associated with the `administrator_login` for the PostgreSQL Flexible Server. Required when `create_mode` is `Default` and `authentication.password_auth_enabled` is `true`. | 
| **var.authentication** | [block](#authentication-block-structure) |  -  |  -  |  An `authentication` block. | 
| **var.backup_retention_days** | string |  -  |  `7`, `35`  |  The backup retention days for the PostgreSQL Flexible Server. Possible values are between `7` and `35` days. | 
| **var.customer_managed_key** | [block](#customer_managed_key-block-structure) |  -  |  -  |  A `customer_managed_key` block. Changing this forces a new resource to be created. | 
| **var.geo_redundant_backup_enabled** | bool |  `False`  |  -  |  Is Geo-Redundant backup enabled on the PostgreSQL Flexible Server. Defaults to `false`. Changing this forces a new PostgreSQL Flexible Server to be created. | 
| **var.create_mode** | string |  -  |  `Default`, `PointInTimeRestore`, `Replica`, `Update`  |  The creation mode which can be used to restore or replicate existing servers. Possible values are `Default`, `PointInTimeRestore`, `Replica` and `Update`. | 
| **var.delegated_subnet_id** | string |  -  |  -  |  The ID of the virtual network subnet to create the PostgreSQL Flexible Server. The provided subnet should not have any other resource deployed in it and this subnet will be delegated to the PostgreSQL Flexible Server, if not already delegated. Changing this forces a new PostgreSQL Flexible Server to be created. | 
| **var.private_dns_zone_id** | string |  -  |  -  |  The ID of the private DNS zone to create the PostgreSQL Flexible Server. | 
| **var.high_availability** | [block](#high_availability-block-structure) |  -  |  -  |  A `high_availability` block. | 
| **var.identity** | [block](#identity-block-structure) |  -  |  -  |  An `identity` block. | 
| **var.maintenance_window** | [block](#maintenance_window-block-structure) |  -  |  -  |  A `maintenance_window` block. | 
| **var.point_in_time_restore_time_in_utc** | string |  -  |  -  |  The point in time to restore from `source_server_id` when `create_mode` is `PointInTimeRestore`. Changing this forces a new PostgreSQL Flexible Server to be created. | 
| **var.replication_role** | string |  -  |  -  |  The replication role for the PostgreSQL Flexible Server. Possible value is `None`. | 
| **var.sku_name** | string |  -  |  -  |  The SKU Name for the PostgreSQL Flexible Server. The name of the SKU, follows the `tier` + `name` pattern (e.g. `B_Standard_B1ms`, `GP_Standard_D2s_v3`, `MO_Standard_E4s_v3`). | 
| **var.source_server_id** | string |  -  |  -  |  The resource ID of the source PostgreSQL Flexible Server to be restored. Required when `create_mode` is `PointInTimeRestore` or `Replica`. Changing this forces a new PostgreSQL Flexible Server to be created. | 
| **var.auto_grow_enabled** | bool |  `False`  |  -  |  Is the storage auto grow for PostgreSQL Flexible Server enabled? Defaults to `false`. | 
| **var.storage_mb** | string |  -  |  `32768`, `65536`, `131072`, `262144`, `524288`, `1048576`, `2097152`, `4193280`, `4194304`, `8388608`, `16777216`, `33553408`  |  The max storage allowed for the PostgreSQL Flexible Server. Possible values are `32768`, `65536`, `131072`, `262144`, `524288`, `1048576`, `2097152`, `4193280`, `4194304`, `8388608`, `16777216` and `33553408`. | 
| **var.tags** | map |  -  |  -  |  A mapping of tags which should be assigned to the PostgreSQL Flexible Server. | 
| **var.version** | string |  -  |  `11`, `12`, `13`, `14`, `15`, `16`  |  The version of PostgreSQL Flexible Server to use. Possible values are `11`,`12`, `13`, `14`, `15` and `16`. Required when `create_mode` is `Default`. | 
| **var.zone** | string |  -  |  -  |  Specifies the Availability Zone in which the PostgreSQL Flexible Server should be located. | 

### `customer_managed_key` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `key_vault_key_id` | string | No | - | The ID of the Key Vault Key. |
| `primary_user_assigned_identity_id` | string | No | - | Specifies the primary user managed identity id for a Customer Managed Key. Should be added with 'identity_ids'. |
| `geo_backup_key_vault_key_id` | string | No | - | The ID of the geo backup Key Vault Key. It can't cross region and need Customer Managed Key in same region as geo backup. |
| `geo_backup_user_assigned_identity_id` | string | No | - | The geo backup user managed identity id for a Customer Managed Key. Should be added with 'identity_ids'. It can't cross region and need identity in same region as geo backup. |

### `high_availability` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `mode` | string | Yes | - | The high availability mode for the PostgreSQL Flexible Server. Possible value are 'SameZone' or 'ZoneRedundant'. |
| `standby_availability_zone` | string | No | - | Specifies the Availability Zone in which the standby Flexible Server should be located. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this PostgreSQL Flexible Server. The only possible value is 'UserAssigned'. |
| `identity_ids` | block | Yes | - | A list of User Assigned Managed Identity IDs to be assigned to this PostgreSQL Flexible Server. Required if used together with 'customer_managed_key' block. |

### `maintenance_window` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `day_of_week` | string | No | 0 | The day of week for maintenance window, where the week starts on a Sunday, i.e. Sunday = '0', Monday = '1'. Defaults to '0'. |
| `start_hour` | string | No | 0 | The start hour for maintenance window. Defaults to '0'. |
| `start_minute` | string | No | 0 | The start minute for maintenance window. Defaults to '0'. |

### `authentication` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `active_directory_auth_enabled` | bool | No | False | Whether or not Active Directory authentication is allowed to access the PostgreSQL Flexible Server. Defaults to 'false'. |
| `password_auth_enabled` | bool | No | True | Whether or not password authentication is allowed to access the PostgreSQL Flexible Server. Defaults to 'true'. |
| `tenant_id` | string | No | - | The Tenant ID of the Azure Active Directory which is used by the Active Directory authentication. 'active_directory_auth_enabled' must be set to 'true'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the PostgreSQL Flexible Server. | 
| **fqdn** | string | No  | The FQDN of the PostgreSQL Flexible Server. | 
| **public_network_access_enabled** | bool | No  | Is public network access enabled? | 

Additionally, all variables are provided as outputs.
