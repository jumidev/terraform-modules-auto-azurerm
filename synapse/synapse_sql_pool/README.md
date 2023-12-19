# azurerm_synapse_sql_pool

Manages a Synapse SQL Pool.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "synapse/synapse_sql_pool"   
}

inputs = {
   name = "The name which should be used for this Synapse SQL Pool..."   
   # synapse_workspace_id → set in component_inputs
   sku_name = "Specifies the SKU Name for this Synapse SQL Pool"   
}

component_inputs = {
   synapse_workspace_id = "path/to/synapse_workspace_component:id"   
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
| **name** | string |  -  |  The name which should be used for this Synapse SQL Pool. Changing this forces a new Synapse SQL Pool to be created. | 
| **synapse_workspace_id** | string |  -  |  The ID of Synapse Workspace within which this SQL Pool should be created. Changing this forces a new Synapse SQL Pool to be created. | 
| **sku_name** | string |  `DW100c`, `DW200c`, `DW300c`, `DW400c`, `DW500c`, `DW1000c`, `DW1500c`, `DW2000c`, `DW2500c`, `DW3000c`, `DW5000c`, `DW6000c`, `DW7500c`, `DW10000c`, `DW15000c`, `DW30000c`  |  Specifies the SKU Name for this Synapse SQL Pool. Possible values are `DW100c`, `DW200c`, `DW300c`, `DW400c`, `DW500c`, `DW1000c`, `DW1500c`, `DW2000c`, `DW2500c`, `DW3000c`, `DW5000c`, `DW6000c`, `DW7500c`, `DW10000c`, `DW15000c` or `DW30000c`. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **create_mode** | string |  `Default`  |  `Default`, `Recovery`, `PointInTimeRestore`  |  Specifies how to create the SQL Pool. Valid values are: `Default`, `Recovery` or `PointInTimeRestore`. Must be `Default` to create a new database. Defaults to `Default`. Changing this forces a new Synapse SQL Pool to be created. | 
| **collation** | string |  `SQL_LATIN1_GENERAL_CP1_CI_AS`  |  -  |  The name of the collation to use with this pool, only applicable when `create_mode` is set to `Default`. Azure default is `SQL_LATIN1_GENERAL_CP1_CI_AS`. Changing this forces a new Synapse SQL Pool to be created. | 
| **data_encrypted** | bool |  -  |  -  |  Is transparent data encryption enabled? | 
| **recovery_database_id** | string |  -  |  -  |  The ID of the Synapse SQL Pool or SQL Database which is to back up, only applicable when `create_mode` is set to `Recovery`. Changing this forces a new Synapse SQL Pool to be created. | 
| **restore** | [block](#restore-block-structure) |  -  |  -  |  A `restore` block. Only applicable when `create_mode` is set to `PointInTimeRestore`. Changing this forces a new Synapse SQL Pool to be created. | 
| **geo_backup_policy_enabled** | bool |  `True`  |  `true`, `false`  |  Is geo-backup policy enabled? Possible values include `true` or `false`. Defaults to `true`. | 
| **storage_account_type** | string |  `GRS`  |  `LRS`, `GRS`  |  The storage account type that will be used to store backups for this Synapse SQL Pool. Possible values are `LRS` or `GRS`. Changing this forces a new Synapse SQL Pool to be created. Defaults to `GRS`. | 
| **tags** | map |  -  |  -  |  A mapping of tags which should be assigned to the Synapse SQL Pool. | 

### `restore` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `source_database_id` | string | Yes | - | The ID of the Synapse SQL Pool or SQL Database which is to restore. Changing this forces a new Synapse SQL Pool to be created. |
| `point_in_time` | string | Yes | - | Specifies the Snapshot time to restore formatted as an RFC3339 date string. Changing this forces a new Synapse SQL Pool to be created. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Synapse SQL Pool. | 

Additionally, all variables are provided as outputs.
