# azurerm_synapse_sql_pool

Manages a Synapse SQL Pool.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "synapse/synapse_sql_pool" 
}

inputs = {
   name = "name of synapse_sql_pool" 
   synapse_workspace_id = "synapse_workspace_id of synapse_sql_pool" 
   sku_name = "sku_name of synapse_sql_pool" 
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
| **var.name** | string | True | -  |  -  |  The name which should be used for this Synapse SQL Pool. Changing this forces a new Synapse SQL Pool to be created. | 
| **var.synapse_workspace_id** | string | True | -  |  -  |  The ID of Synapse Workspace within which this SQL Pool should be created. Changing this forces a new Synapse SQL Pool to be created. | 
| **var.sku_name** | string | True | -  |  `DW100c`, `DW200c`, `DW300c`, `DW400c`, `DW500c`, `DW1000c`, `DW1500c`, `DW2000c`, `DW2500c`, `DW3000c`, `DW5000c`, `DW6000c`, `DW7500c`, `DW10000c`, `DW15000c`, `DW30000c`  |  Specifies the SKU Name for this Synapse SQL Pool. Possible values are `DW100c`, `DW200c`, `DW300c`, `DW400c`, `DW500c`, `DW1000c`, `DW1500c`, `DW2000c`, `DW2500c`, `DW3000c`, `DW5000c`, `DW6000c`, `DW7500c`, `DW10000c`, `DW15000c` or `DW30000c`. | 
| **var.create_mode** | string | False | `Default`  |  `Default`, `Recovery`, `PointInTimeRestore`  |  Specifies how to create the SQL Pool. Valid values are: `Default`, `Recovery` or `PointInTimeRestore`. Must be `Default` to create a new database. Defaults to `Default`. Changing this forces a new Synapse SQL Pool to be created. | 
| **var.collation** | string | False | `SQL_LATIN1_GENERAL_CP1_CI_AS`  |  -  |  The name of the collation to use with this pool, only applicable when `create_mode` is set to `Default`. Azure default is `SQL_LATIN1_GENERAL_CP1_CI_AS`. Changing this forces a new Synapse SQL Pool to be created. | 
| **var.data_encrypted** | string | False | -  |  -  |  Is transparent data encryption enabled? | 
| **var.recovery_database_id** | string | False | -  |  -  |  The ID of the Synapse SQL Pool or SQL Database which is to back up, only applicable when `create_mode` is set to `Recovery`. Changing this forces a new Synapse SQL Pool to be created. | 
| **var.restore** | block | False | -  |  -  |  A `restore` block. Only applicable when `create_mode` is set to `PointInTimeRestore`. Changing this forces a new Synapse SQL Pool to be created. | 
| **var.geo_backup_policy_enabled** | bool | False | `True`  |  `true`, `false`  |  Is geo-backup policy enabled? Possible values include `true` or `false`. Defaults to `true`. | 
| **var.storage_account_type** | string | False | `GRS`  |  `LRS`, `GRS`  |  The storage account type that will be used to store backups for this Synapse SQL Pool. Possible values are `LRS` or `GRS`. Changing this forces a new Synapse SQL Pool to be created. Defaults to `GRS`. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags which should be assigned to the Synapse SQL Pool. | 

### `restore` block structure

> `source_database_id` (string): (REQUIRED) The ID of the Synapse SQL Pool or SQL Database which is to restore. Changing this forces a new Synapse SQL Pool to be created.
> `point_in_time` (string): (REQUIRED) Specifies the Snapshot time to restore formatted as an RFC3339 date string. Changing this forces a new Synapse SQL Pool to be created.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Synapse SQL Pool. | 

Additionally, all variables are provided as outputs.
