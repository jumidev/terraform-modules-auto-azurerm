# azurerm_sql_database

Allows you to manage an Azure SQL Database-> **Note:** The `azurerm_sql_database` resource is deprecated in version 3.0 of the AzureRM provider and will be removed in version 4.0. Please use the [`azurerm_mssql_database`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_database) resource instead.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "database/sql_database" 
}

inputs = {
   name = "name of sql_database" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   server_name = "server_name of sql_database" 
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
| **var.name** | string | True | -  |  -  |  The name of the database. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the resource group in which to create the database. This must be the same as Database Server resource group currently. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.server_name** | string | True | -  |  -  |  The name of the SQL Server on which to create the database. Changing this forces a new resource to be created. | 
| **var.create_mode** | string | False | `Default`  |  `Default`, `Copy`, `OnlineSecondary`, `NonReadableSecondary`, `PointInTimeRestore`, `Recovery`, `Restore`, `RestoreLongTermRetentionBackup`  |  Specifies how to create the database. Valid values are: `Default`, `Copy`, `OnlineSecondary`, `NonReadableSecondary`, `PointInTimeRestore`, `Recovery`, `Restore` or `RestoreLongTermRetentionBackup`. Must be `Default` to create a new database. Defaults to `Default`. Please see [Azure SQL Database REST API](https://docs.microsoft.com/rest/api/sql/databases/createorupdate#createmode) | 
| **var.import** | block | False | -  |  -  |  A `import` block. `create_mode` must be set to `Default`. | | `import` block structure: || 
|   storage_uri (string): (REQUIRED) Specifies the blob URI of the .bacpac file. ||
|   storage_key (string): (REQUIRED) Specifies the access key for the storage account. ||
|   storage_key_type (string): (REQUIRED) Specifies the type of access key for the storage account. Valid values are 'StorageAccessKey' or 'SharedAccessKey'. ||
|   administrator_login (string): (REQUIRED) Specifies the name of the SQL administrator. ||
|   administrator_login_password (string): (REQUIRED) Specifies the password of the SQL administrator. ||
|   authentication_type (string): (REQUIRED) Specifies the type of authentication used to access the server. Valid values are 'SQL' or 'ADPassword'. ||
|   operation_mode (string): Specifies the type of import operation being performed. The only allowable value is 'Import'. Defaults to 'Import'. ||

| **var.source_database_id** | string | False | -  |  -  |  The URI of the source database if `create_mode` value is not `Default`. | 
| **var.restore_point_in_time** | string | False | -  |  -  |  The point in time for the restore. Only applies if `create_mode` is `PointInTimeRestore`, it should be provided in [RFC3339](https://www.rfc-editor.org/rfc/rfc3339) format, e.g. `2013-11-08T22:00:40Z`. | 
| **var.edition** | string | False | -  |  `Basic`, `Standard`, `Premium`, `DataWarehouse`, `Business`, `BusinessCritical`, `Free`, `GeneralPurpose`, `Hyperscale`, `PremiumRS`, `Stretch`, `System`, `System2`, `Web`  |  The edition of the database to be created. Applies only if `create_mode` is `Default`. Valid values are: `Basic`, `Standard`, `Premium`, `DataWarehouse`, `Business`, `BusinessCritical`, `Free`, `GeneralPurpose`, `Hyperscale`, `Premium`, `PremiumRS`, `Standard`, `Stretch`, `System`, `System2`, or `Web`. Please see [Azure SQL database models](https://docs.microsoft.com/azure/azure-sql/database/purchasing-models?view=azuresql). | 
| **var.collation** | string | False | `SQL_LATIN1_GENERAL_CP1_CI_AS`  |  -  |  The name of the collation. Applies only if `create_mode` is `Default`. Azure default is `SQL_LATIN1_GENERAL_CP1_CI_AS`. Changing this forces a new resource to be created. | 
| **var.max_size_bytes** | int | False | -  |  -  |  The maximum size that the database can grow to. Applies only if `create_mode` is `Default`. Please see [Azure SQL database models](https://docs.microsoft.com/azure/azure-sql/database/purchasing-models?view=azuresql). | 
| **var.requested_service_objective_id** | string | False | -  |  -  |  A GUID/UUID corresponding to a configured Service Level Objective for the Azure SQL database which can be used to configure a performance level. . | 
| **var.requested_service_objective_name** | string | False | -  |  `S0`, `S1`, `S2`, `S3`, `P1`, `P2`, `P4`, `P6`, `P11`, `ElasticPool`  |  The service objective name for the database. Valid values depend on edition and location and may include `S0`, `S1`, `S2`, `S3`, `P1`, `P2`, `P4`, `P6`, `P11` and `ElasticPool`. You can list the available names with the CLI: `shell az sql db list-editions -l westus -o table`. For further information please see [Azure CLI - az sql db](https://docs.microsoft.com/cli/azure/sql/db?view=azure-cli-latest#az-sql-db-list-editions). | 
| **var.source_database_deletion_date** | datetime | False | -  |  -  |  The deletion date time of the source database. Only applies to deleted databases where `create_mode` is `PointInTimeRestore`. | 
| **var.elastic_pool_name** | string | False | -  |  -  |  The name of the elastic database pool. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The SQL Database ID. | 
| **creation_date** | datetime | No  | The creation date of the SQL Database. | 
| **default_secondary_location** | string | No  | The default secondary location of the SQL Database. | 

Additionally, all variables are provided as outputs.
