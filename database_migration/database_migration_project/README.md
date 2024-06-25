# azurerm_database_migration_project



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "database_migration/database_migration_project"   
}
inputs = {
   name = "Specify the name of the database migration project"   
   service_name = "Name of the database migration service where resource belongs to..."   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   source_platform = "The platform type of the migration source"   
   target_platform = "The platform type of the migration target"   
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
| **name** | string |  -  |  Specify the name of the database migration project. Changing this forces a new resource to be created. | 
| **service_name** | string |  -  |  Name of the database migration service where resource belongs to. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  Name of the resource group in which to create the database migration project. Changing this forces a new resource to be created. | 
| **location** | string |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **source_platform** | string |  `SQL`, `PostgreSQL`, `MySQL`, `MongoDb`  |  The platform type of the migration source. Possible values are `SQL`, `PostgreSQL`, `MySQL` and `MongoDb`. Changing this forces a new resource to be created. | 
| **target_platform** | string |  `SQLDB`, `AzureDbForPostgreSql`, `AzureDbForMySql`, `MongoDb`  |  The platform type of the migration target. Possible values are `SQLDB`, `AzureDbForPostgreSql`, `AzureDbForMySql` and `MongoDb`. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **tags** | map |  A mapping of tags to assigned to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **tags** | map | No  | A mapping of tags to assigned to the resource. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of Database Migration Project. | 

Additionally, all variables are provided as outputs.
