# azurerm_sql_elasticpool

Allows you to manage an Azure SQL Elastic Pool.-> **Note:** The `azurerm_sql_elasticpool` resource is deprecated in version 3.0 of the AzureRM provider and will be removed in version 4.0. Please use the [`azurerm_mssql_elasticpool`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_elasticpool) resource instead.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "database/sql_elasticpool" 
}

inputs = {
   name = "name of sql_elasticpool" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   # server_name → set in tfstate_inputs
   edition = "edition of sql_elasticpool" 
   dtu = "dtu of sql_elasticpool" 
}

tfstate_inputs = {
   server_name = "path/to/sql_server_component:name" 
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
| **name** | string |  -  |  The name of the elastic pool. This needs to be globally unique. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  The name of the resource group in which to create the elastic pool. This must be the same as the resource group of the underlying SQL server. Changing this forces a new resource to be created. | 
| **location** | string |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **server_name** | string |  -  |  The name of the SQL Server on which to create the elastic pool. Changing this forces a new resource to be created. | 
| **edition** | string |  `Basic`, `Standard`, `Premium`  |  The edition of the elastic pool to be created. Valid values are `Basic`, `Standard`, and `Premium`. Refer to [Azure SQL Database Service Tiers](https://docs.microsoft.com/en-gb/azure/sql-database/sql-database-service-tiers#elastic-pool-service-tiers-and-performance-in-edtus) for details. Changing this forces a new resource to be created. | 
| **dtu** | string |  `edition`  |  The total shared DTU for the elastic pool. Valid values depend on the `edition` which has been defined. Refer to [Azure SQL Database Service Tiers](https://docs.microsoft.com/en-gb/azure/sql-database/sql-database-service-tiers#elastic-pool-service-tiers-and-performance-in-edtus) for valid combinations. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **db_dtu_min** | string |  The minimum DTU which will be guaranteed to all databases in the elastic pool to be created. | 
| **db_dtu_max** | string |  The maximum DTU which will be guaranteed to all databases in the elastic pool to be created. | 
| **pool_size** | string |  The maximum size in MB that all databases in the elastic pool can grow to. The maximum size must be consistent with combination of `edition` and `dtu` and the limits documented in [Azure SQL Database Service Tiers](https://docs.microsoft.com/en-gb/azure/sql-database/sql-database-service-tiers#elastic-pool-service-tiers-and-performance-in-edtus). If not defined when creating an elastic pool, the value is set to the size implied by `edition` and `dtu`. | 
| **tags** | map |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The SQL Elastic Pool ID. | 
| **creation_date** | datetime | No  | The creation date of the SQL Elastic Pool. | 

Additionally, all variables are provided as outputs.
