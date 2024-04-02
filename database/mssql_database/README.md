# azurerm_mssql_database



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "database/mssql_database"   
}

inputs = {
   name = "The name of the MS SQL Database"   
   # server_id → set in component_inputs
}

component_inputs = {
   server_id = "path/to/mssql_server_component:id"   
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
| **name** | string |  The name of the MS SQL Database. Changing this forces a new resource to be created. | 
| **server_id** | string |  The id of the MS SQL Server on which to create the database. Changing this forces a new resource to be created. ~> **NOTE:** This setting is still required for "Serverless" SKUs | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **auto_pause_delay_in_minutes** | number |  -  |  -  |  Time in minutes after which database is automatically paused. A value of `-1` means that automatic pause is disabled. This property is only settable for Serverless databases. | 
| **create_mode** | string |  `Default`  |  `Copy`, `Default`, `OnlineSecondary`, `PointInTimeRestore`, `Recovery`, `Restore`, `RestoreExternalBackup`, `RestoreExternalBackupSecondary`, `RestoreLongTermRetentionBackup`, `Secondary`  |  The create mode of the database. Possible values are `Copy`, `Default`, `OnlineSecondary`, `PointInTimeRestore`, `Recovery`, `Restore`, `RestoreExternalBackup`, `RestoreExternalBackupSecondary`, `RestoreLongTermRetentionBackup` and `Secondary`. Mutually exclusive with `import`. Changing this forces a new resource to be created. Defaults to `Default`. | 
| **import** | [block](#import-block-structure) |  -  |  -  |  A `import` block. Mutually exclusive with `create_mode`. | 
| **creation_source_database_id** | string |  -  |  -  |  The ID of the source database from which to create the new database. This should only be used for databases with `create_mode` values that use another database as reference. Changing this forces a new resource to be created. -> **NOTE:** When configuring a secondary database, please be aware of the constraints for the `sku_name` property, as noted below, for both the primary and secondary databases. The `sku_name` of the secondary database may be inadvertently changed to match that of the primary when an incompatible combination of SKUs is detected by the provider. | 
| **collation** | string |  -  |  -  |  Specifies the collation of the database. Changing this forces a new resource to be created. | 
| **elastic_pool_id** | string |  -  |  -  |  Specifies the ID of the elastic pool containing this database. | 
| **enclave_type** | string |  -  |  `VBS`  |  Specifies the type of enclave to be used by the database. Possible value `VBS`. ~> **NOTE:** `enclave_type` is currently not supported for DW (e.g, DataWarehouse) and DC-series SKUs. ~> **NOTE:** Geo Replicated and Failover databases must have the same `enclave_type`. | 
| **geo_backup_enabled** | bool |  `True`  |  -  |  A boolean that specifies if the Geo Backup Policy is enabled. Defaults to `true`. ~> **NOTE:** `geo_backup_enabled` is only applicable for DataWarehouse SKUs (DW*). This setting is ignored for all other SKUs. | 
| **maintenance_configuration_name** | string |  `SQL_Default`  |  `SQL_Default`, `SQL_EastUS_DB_1`, `SQL_EastUS2_DB_1`, `SQL_SoutheastAsia_DB_1`, `SQL_AustraliaEast_DB_1`, `SQL_NorthEurope_DB_1`, `SQL_SouthCentralUS_DB_1`, `SQL_WestUS2_DB_1`, `SQL_UKSouth_DB_1`, `SQL_WestEurope_DB_1`, `SQL_EastUS_DB_2`, `SQL_EastUS2_DB_2`, `SQL_WestUS2_DB_2`, `SQL_SoutheastAsia_DB_2`, `SQL_AustraliaEast_DB_2`, `SQL_NorthEurope_DB_2`, `SQL_SouthCentralUS_DB_2`, `SQL_UKSouth_DB_2`, `SQL_WestEurope_DB_2`, `SQL_AustraliaSoutheast_DB_1`, `SQL_BrazilSouth_DB_1`, `SQL_CanadaCentral_DB_1`, `SQL_CanadaEast_DB_1`, `SQL_CentralUS_DB_1`, `SQL_EastAsia_DB_1`, `SQL_FranceCentral_DB_1`, `SQL_GermanyWestCentral_DB_1`, `SQL_CentralIndia_DB_1`, `SQL_SouthIndia_DB_1`, `SQL_JapanEast_DB_1`, `SQL_JapanWest_DB_1`, `SQL_NorthCentralUS_DB_1`, `SQL_UKWest_DB_1`, `SQL_WestUS_DB_1`, `SQL_AustraliaSoutheast_DB_2`, `SQL_BrazilSouth_DB_2`, `SQL_CanadaCentral_DB_2`, `SQL_CanadaEast_DB_2`, `SQL_CentralUS_DB_2`, `SQL_EastAsia_DB_2`, `SQL_FranceCentral_DB_2`, `SQL_GermanyWestCentral_DB_2`, `SQL_CentralIndia_DB_2`, `SQL_SouthIndia_DB_2`, `SQL_JapanEast_DB_2`, `SQL_JapanWest_DB_2`, `SQL_NorthCentralUS_DB_2`, `SQL_UKWest_DB_2`, `SQL_WestUS_DB_2`, `SQL_WestCentralUS_DB_1`, `SQL_FranceSouth_DB_1`, `SQL_WestCentralUS_DB_2`, `SQL_FranceSouth_DB_2`, `SQL_SwitzerlandNorth_DB_1`, `SQL_SwitzerlandNorth_DB_2`, `SQL_BrazilSoutheast_DB_1`, `SQL_UAENorth_DB_1`, `SQL_BrazilSoutheast_DB_2`, `SQL_UAENorth_DB_2`  |  The name of the Public Maintenance Configuration window to apply to the database. Valid values include `SQL_Default`, `SQL_EastUS_DB_1`, `SQL_EastUS2_DB_1`, `SQL_SoutheastAsia_DB_1`, `SQL_AustraliaEast_DB_1`, `SQL_NorthEurope_DB_1`, `SQL_SouthCentralUS_DB_1`, `SQL_WestUS2_DB_1`, `SQL_UKSouth_DB_1`, `SQL_WestEurope_DB_1`, `SQL_EastUS_DB_2`, `SQL_EastUS2_DB_2`, `SQL_WestUS2_DB_2`, `SQL_SoutheastAsia_DB_2`, `SQL_AustraliaEast_DB_2`, `SQL_NorthEurope_DB_2`, `SQL_SouthCentralUS_DB_2`, `SQL_UKSouth_DB_2`, `SQL_WestEurope_DB_2`, `SQL_AustraliaSoutheast_DB_1`, `SQL_BrazilSouth_DB_1`, `SQL_CanadaCentral_DB_1`, `SQL_CanadaEast_DB_1`, `SQL_CentralUS_DB_1`, `SQL_EastAsia_DB_1`, `SQL_FranceCentral_DB_1`, `SQL_GermanyWestCentral_DB_1`, `SQL_CentralIndia_DB_1`, `SQL_SouthIndia_DB_1`, `SQL_JapanEast_DB_1`, `SQL_JapanWest_DB_1`, `SQL_NorthCentralUS_DB_1`, `SQL_UKWest_DB_1`, `SQL_WestUS_DB_1`, `SQL_AustraliaSoutheast_DB_2`, `SQL_BrazilSouth_DB_2`, `SQL_CanadaCentral_DB_2`, `SQL_CanadaEast_DB_2`, `SQL_CentralUS_DB_2`, `SQL_EastAsia_DB_2`, `SQL_FranceCentral_DB_2`, `SQL_GermanyWestCentral_DB_2`, `SQL_CentralIndia_DB_2`, `SQL_SouthIndia_DB_2`, `SQL_JapanEast_DB_2`, `SQL_JapanWest_DB_2`, `SQL_NorthCentralUS_DB_2`, `SQL_UKWest_DB_2`, `SQL_WestUS_DB_2`, `SQL_WestCentralUS_DB_1`, `SQL_FranceSouth_DB_1`, `SQL_WestCentralUS_DB_2`, `SQL_FranceSouth_DB_2`, `SQL_SwitzerlandNorth_DB_1`, `SQL_SwitzerlandNorth_DB_2`, `SQL_BrazilSoutheast_DB_1`, `SQL_UAENorth_DB_1`, `SQL_BrazilSoutheast_DB_2`, `SQL_UAENorth_DB_2`. Defaults to `SQL_Default`. ~> **NOTE:** `maintenance_configuration_name` is only applicable if `elastic_pool_id` is not set. | 
| **ledger_enabled** | bool |  `False`  |  -  |  A boolean that specifies if this is a ledger database. Defaults to `false`. Changing this forces a new resource to be created. | 
| **license_type** | string |  -  |  `LicenseIncluded`, `BasePrice`  |  Specifies the license type applied to this database. Possible values are `LicenseIncluded` and `BasePrice`. | 
| **long_term_retention_policy** | [block](#long_term_retention_policy-block-structure) |  -  |  -  |  A `long_term_retention_policy` block. | 
| **max_size_gb** | number |  -  |  -  |  The max size of the database in gigabytes. ~> **NOTE:** This value should not be configured when the `create_mode` is `Secondary` or `OnlineSecondary`, as the sizing of the primary is then used as per [Azure documentation](https://docs.microsoft.com/azure/azure-sql/database/single-database-scale#geo-replicated-database). | 
| **min_capacity** | string |  -  |  -  |  Minimal capacity that database will always have allocated, if not paused. This property is only settable for Serverless databases. | 
| **restore_point_in_time** | string |  -  |  `create_mode`, `PointInTimeRestore`  |  Specifies the point in time (ISO8601 format) of the source database that will be restored to create the new database. This property is only settable for `create_mode`= `PointInTimeRestore` databases. | 
| **recover_database_id** | string |  -  |  -  |  The ID of the database to be recovered. This property is only applicable when the `create_mode` is `Recovery`. | 
| **restore_dropped_database_id** | string |  -  |  -  |  The ID of the database to be restored. This property is only applicable when the `create_mode` is `Restore`. | 
| **read_replica_count** | number |  -  |  -  |  The number of readonly secondary replicas associated with the database to which readonly application intent connections may be routed. This property is only settable for Hyperscale edition databases. | 
| **read_scale** | string |  -  |  -  |  If enabled, connections that have application intent set to readonly in their connection string may be routed to a readonly secondary replica. This property is only settable for Premium and Business Critical databases. | 
| **sample_name** | string |  -  |  `AdventureWorksLT`  |  Specifies the name of the sample schema to apply when creating this database. Possible value is `AdventureWorksLT`. | 
| **short_term_retention_policy** | [block](#short_term_retention_policy-block-structure) |  -  |  -  |  A `short_term_retention_policy` block. | 
| **sku_name** | list |  -  |  `GP_S_Gen5_2`, `HS_Gen4_1`, `BC_Gen5_2`, `ElasticPool`, `Basic`, `S0`, `P2`, `DW100c`, `DS100`  |  Specifies the name of the SKU used by the database. For example, `GP_S_Gen5_2`,`HS_Gen4_1`,`BC_Gen5_2`, `ElasticPool`, `Basic`,`S0`, `P2` ,`DW100c`, `DS100`. Changing this from the HyperScale service tier to another service tier will create a new resource. ~> **NOTE:** The default `sku_name` value may differ between Azure locations depending on local availability of Gen4/Gen5 capacity. When databases are replicated using the `creation_source_database_id` property, the source (primary) database cannot have a higher SKU service tier than any secondary databases. When changing the `sku_name` of a database having one or more secondary databases, this resource will first update any secondary databases as necessary. In such cases it's recommended to use the same `sku_name` in your configuration for all related databases, as not doing so may cause an unresolvable diff during subsequent plans. | 
| **storage_account_type** | string |  `Geo`  |  `Geo`, `GeoZone`, `Local`, `Zone`  |  Specifies the storage account type used to store backups for this database. Possible values are `Geo`, `GeoZone`, `Local` and `Zone`. Defaults to `Geo`. | 

### `short_term_retention_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `retention_days` | number | Yes | - | Point In Time Restore configuration. Value has to be between '1' and '35'. |
| `backup_interval_in_hours` | string | No | 12 | The hours between each differential backup. This is only applicable to live databases but not dropped databases. Value has to be '12' or '24'. Defaults to '12' hours. |

### `long_term_retention_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `weekly_retention` | string | No | - | The weekly retention policy for an LTR backup in an ISO 8601 format. Valid value is between 1 to 520 weeks. e.g. 'P1Y', 'P1M', 'P1W' or 'P7D'. |
| `monthly_retention` | string | No | - | The monthly retention policy for an LTR backup in an ISO 8601 format. Valid value is between 1 to 120 months. e.g. 'P1Y', 'P1M', 'P4W' or 'P30D'. |
| `yearly_retention` | string | No | - | The yearly retention policy for an LTR backup in an ISO 8601 format. Valid value is between 1 to 10 years. e.g. 'P1Y', 'P12M', 'P52W' or 'P365D'. |
| `week_of_year` | string | No | - | The week of year to take the yearly backup. Value has to be between '1' and '52'. |

### `import` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `storage_uri` | string | Yes | - | Specifies the blob URI of the .bacpac file. |
| `storage_key` | string | Yes | - | Specifies the access key for the storage account. |
| `storage_key_type` | string | Yes | - | Specifies the type of access key for the storage account. Valid values are 'StorageAccessKey' or 'SharedAccessKey'. |
| `administrator_login` | string | Yes | - | Specifies the name of the SQL administrator. |
| `administrator_login_password` | string | Yes | - | Specifies the password of the SQL administrator. |
| `authentication_type` | string | Yes | - | Specifies the type of authentication used to access the server. Valid values are 'SQL' or 'ADPassword'. |
| `storage_account_id` | string | No | - | The resource id for the storage account used to store BACPAC file. If set, private endpoint connection will be created for the storage account. Must match storage account used for storage_uri parameter. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **identity_ids** | list | No  | Specifies a list of User Assigned Managed Identity IDs to be assigned to this SQL Database. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the MS SQL Database. | 
| **principal_id** | string | No  | The Principal ID for the Service Principal associated with the Identity of this SQL Database. | 
| **tenant_id** | string | No  | The Tenant ID for the Service Principal associated with the Identity of this SQL Database. -> You can access the Principal ID via `azurerm_mssql_database.example.identity.0.principal_id` and the Tenant ID via `azurerm_mssql_database.example.identity.0.tenant_id` | 

Additionally, all variables are provided as outputs.
