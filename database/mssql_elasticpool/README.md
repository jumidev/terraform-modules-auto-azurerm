# azurerm_mssql_elasticpool

Allows you to manage an Azure SQL Elastic Pool via the `v3.0` API which allows for `vCore` and `DTU` based configurations.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "database/mssql_elasticpool"   
}

inputs = {
   name = "The name of the elastic pool"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   # server_name → set in tfstate_inputs
   sku = {
      name = "..."      
      capacity = "..."      
      tier = "..."      
   }
   
   per_database_settings = {
      min_capacity = "..."      
      max_capacity = "..."      
   }
   
}

tfstate_inputs = {
   server_name = "path/to/mssql_server_component:name"   
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
| **name** | string |  The name of the elastic pool. This needs to be globally unique. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which to create the elastic pool. This must be the same as the resource group of the underlying SQL server. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **server_name** | string |  The name of the SQL Server on which to create the elastic pool. Changing this forces a new resource to be created. | 
| **sku** | [block](#sku-block-structure) |  A `sku` block. | 
| **per_database_settings** | [block](#per_database_settings-block-structure) |  A `per_database_settings` block. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **maintenance_configuration_name** | string |  `SQL_Default`  |  `SQL_Default`, `SQL_EastUS_DB_1`, `SQL_EastUS2_DB_1`, `SQL_SoutheastAsia_DB_1`, `SQL_AustraliaEast_DB_1`, `SQL_NorthEurope_DB_1`, `SQL_SouthCentralUS_DB_1`, `SQL_WestUS2_DB_1`, `SQL_UKSouth_DB_1`, `SQL_WestEurope_DB_1`, `SQL_EastUS_DB_2`, `SQL_EastUS2_DB_2`, `SQL_WestUS2_DB_2`, `SQL_SoutheastAsia_DB_2`, `SQL_AustraliaEast_DB_2`, `SQL_NorthEurope_DB_2`, `SQL_SouthCentralUS_DB_2`, `SQL_UKSouth_DB_2`, `SQL_WestEurope_DB_2`, `SQL_AustraliaSoutheast_DB_1`, `SQL_BrazilSouth_DB_1`, `SQL_CanadaCentral_DB_1`, `SQL_CanadaEast_DB_1`, `SQL_CentralUS_DB_1`, `SQL_EastAsia_DB_1`, `SQL_FranceCentral_DB_1`, `SQL_GermanyWestCentral_DB_1`, `SQL_CentralIndia_DB_1`, `SQL_SouthIndia_DB_1`, `SQL_JapanEast_DB_1`, `SQL_JapanWest_DB_1`, `SQL_NorthCentralUS_DB_1`, `SQL_UKWest_DB_1`, `SQL_WestUS_DB_1`, `SQL_AustraliaSoutheast_DB_2`, `SQL_BrazilSouth_DB_2`, `SQL_CanadaCentral_DB_2`, `SQL_CanadaEast_DB_2`, `SQL_CentralUS_DB_2`, `SQL_EastAsia_DB_2`, `SQL_FranceCentral_DB_2`, `SQL_GermanyWestCentral_DB_2`, `SQL_CentralIndia_DB_2`, `SQL_SouthIndia_DB_2`, `SQL_JapanEast_DB_2`, `SQL_JapanWest_DB_2`, `SQL_NorthCentralUS_DB_2`, `SQL_UKWest_DB_2`, `SQL_WestUS_DB_2`, `SQL_WestCentralUS_DB_1`, `SQL_FranceSouth_DB_1`, `SQL_WestCentralUS_DB_2`, `SQL_FranceSouth_DB_2`, `SQL_SwitzerlandNorth_DB_1`, `SQL_SwitzerlandNorth_DB_2`, `SQL_BrazilSoutheast_DB_1`, `SQL_UAENorth_DB_1`, `SQL_BrazilSoutheast_DB_2`, `SQL_UAENorth_DB_2`  |  The name of the Public Maintenance Configuration window to apply to the elastic pool. Valid values include `SQL_Default`, `SQL_EastUS_DB_1`, `SQL_EastUS2_DB_1`, `SQL_SoutheastAsia_DB_1`, `SQL_AustraliaEast_DB_1`, `SQL_NorthEurope_DB_1`, `SQL_SouthCentralUS_DB_1`, `SQL_WestUS2_DB_1`, `SQL_UKSouth_DB_1`, `SQL_WestEurope_DB_1`, `SQL_EastUS_DB_2`, `SQL_EastUS2_DB_2`, `SQL_WestUS2_DB_2`, `SQL_SoutheastAsia_DB_2`, `SQL_AustraliaEast_DB_2`, `SQL_NorthEurope_DB_2`, `SQL_SouthCentralUS_DB_2`, `SQL_UKSouth_DB_2`, `SQL_WestEurope_DB_2`, `SQL_AustraliaSoutheast_DB_1`, `SQL_BrazilSouth_DB_1`, `SQL_CanadaCentral_DB_1`, `SQL_CanadaEast_DB_1`, `SQL_CentralUS_DB_1`, `SQL_EastAsia_DB_1`, `SQL_FranceCentral_DB_1`, `SQL_GermanyWestCentral_DB_1`, `SQL_CentralIndia_DB_1`, `SQL_SouthIndia_DB_1`, `SQL_JapanEast_DB_1`, `SQL_JapanWest_DB_1`, `SQL_NorthCentralUS_DB_1`, `SQL_UKWest_DB_1`, `SQL_WestUS_DB_1`, `SQL_AustraliaSoutheast_DB_2`, `SQL_BrazilSouth_DB_2`, `SQL_CanadaCentral_DB_2`, `SQL_CanadaEast_DB_2`, `SQL_CentralUS_DB_2`, `SQL_EastAsia_DB_2`, `SQL_FranceCentral_DB_2`, `SQL_GermanyWestCentral_DB_2`, `SQL_CentralIndia_DB_2`, `SQL_SouthIndia_DB_2`, `SQL_JapanEast_DB_2`, `SQL_JapanWest_DB_2`, `SQL_NorthCentralUS_DB_2`, `SQL_UKWest_DB_2`, `SQL_WestUS_DB_2`, `SQL_WestCentralUS_DB_1`, `SQL_FranceSouth_DB_1`, `SQL_WestCentralUS_DB_2`, `SQL_FranceSouth_DB_2`, `SQL_SwitzerlandNorth_DB_1`, `SQL_SwitzerlandNorth_DB_2`, `SQL_BrazilSoutheast_DB_1`, `SQL_UAENorth_DB_1`, `SQL_BrazilSoutheast_DB_2`, `SQL_UAENorth_DB_2`. Defaults to `SQL_Default`. | 
| **max_size_gb** | int |  -  |  -  |  The max data size of the elastic pool in gigabytes. Conflicts with `max_size_bytes`. | 
| **max_size_bytes** | int |  -  |  -  |  The max data size of the elastic pool in bytes. Conflicts with `max_size_gb`. | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 
| **zone_redundant** | string |  -  |  -  |  Whether or not this elastic pool is zone redundant. `tier` needs to be `Premium` for `DTU` based or `BusinessCritical` for `vCore` based `sku`. | 
| **license_type** | string |  -  |  `LicenseIncluded`, `BasePrice`  |  Specifies the license type applied to this database. Possible values are `LicenseIncluded` and `BasePrice`. | 

### `per_database_settings` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `min_capacity` | string | Yes | - | The minimum capacity all databases are guaranteed. |
| `max_capacity` | string | Yes | - | The maximum capacity any one database can consume. |

### `sku` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | Specifies the SKU Name for this Elasticpool. The name of the SKU, will be either 'vCore' based 'tier' + 'family' pattern (e.g. GP_Gen4, BC_Gen5) or the 'DTU' based 'BasicPool', 'StandardPool', or 'PremiumPool' pattern. Possible values are 'BasicPool', 'StandardPool', 'PremiumPool', 'GP_Gen4', 'GP_Gen5', 'GP_Fsv2', 'GP_DC', 'BC_Gen4', 'BC_Gen5', 'BC_DC', or 'HS_Gen5'. |
| `capacity` | string | Yes | - | The scale up/out capacity, representing server's compute units. For more information see the documentation for your Elasticpool configuration: [vCore-based](https://docs.microsoft.com/azure/sql-database/sql-database-vcore-resource-limits-elastic-pools) or [DTU-based](https://docs.microsoft.com/azure/sql-database/sql-database-dtu-resource-limits-elastic-pools). |
| `tier` | string | Yes | - | The tier of the particular SKU. Possible values are 'GeneralPurpose', 'BusinessCritical', 'Basic', 'Standard', 'Premium', or 'HyperScale'. For more information see the documentation for your Elasticpool configuration: [vCore-based](https://docs.microsoft.com/azure/sql-database/sql-database-vcore-resource-limits-elastic-pools) or [DTU-based](https://docs.microsoft.com/azure/sql-database/sql-database-dtu-resource-limits-elastic-pools). |
| `family` | string | No | - | The 'family' of hardware 'Gen4', 'Gen5', 'Fsv2' or 'DC'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the MS SQL Elastic Pool. | 

Additionally, all variables are provided as outputs.
