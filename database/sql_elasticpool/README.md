# azurerm_sql_elasticpool

Allows you to manage an Azure SQL Elastic Pool.-> **Note:** The `azurerm_sql_elasticpool` resource is deprecated in version 3.0 of the AzureRM provider and will be removed in version 4.0. Please use the [`azurerm_mssql_elasticpool`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_elasticpool) resource instead.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name of the elastic pool. This needs to be globally unique. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the resource group in which to create the elastic pool. This must be the same as the resource group of the underlying SQL server. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.server_name** | string | True | -  |  The name of the SQL Server on which to create the elastic pool. Changing this forces a new resource to be created. | 
| **var.edition** | string | True | `Basic`, `Standard`, `Premium`  |  The edition of the elastic pool to be created. Valid values are `Basic`, `Standard`, and `Premium`. Refer to [Azure SQL Database Service Tiers](https://docs.microsoft.com/en-gb/azure/sql-database/sql-database-service-tiers#elastic-pool-service-tiers-and-performance-in-edtus) for details. Changing this forces a new resource to be created. | 
| **var.dtu** | string | True | `edition`  |  The total shared DTU for the elastic pool. Valid values depend on the `edition` which has been defined. Refer to [Azure SQL Database Service Tiers](https://docs.microsoft.com/en-gb/azure/sql-database/sql-database-service-tiers#elastic-pool-service-tiers-and-performance-in-edtus) for valid combinations. | 
| **var.db_dtu_min** | string | False | -  |  The minimum DTU which will be guaranteed to all databases in the elastic pool to be created. | 
| **var.db_dtu_max** | string | False | -  |  The maximum DTU which will be guaranteed to all databases in the elastic pool to be created. | 
| **var.pool_size** | string | False | -  |  The maximum size in MB that all databases in the elastic pool can grow to. The maximum size must be consistent with combination of `edition` and `dtu` and the limits documented in [Azure SQL Database Service Tiers](https://docs.microsoft.com/en-gb/azure/sql-database/sql-database-service-tiers#elastic-pool-service-tiers-and-performance-in-edtus). If not defined when creating an elastic pool, the value is set to the size implied by `edition` and `dtu`. | 
| **var.tags** | map | False | -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **server_name** | string  | - | 
| **edition** | string  | - | 
| **dtu** | string  | - | 
| **db_dtu_min** | string  | - | 
| **db_dtu_max** | string  | - | 
| **pool_size** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The SQL Elastic Pool ID. | 
| **creation_date** | datetime  | The creation date of the SQL Elastic Pool. | 