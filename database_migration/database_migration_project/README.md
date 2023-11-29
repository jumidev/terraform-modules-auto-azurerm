# azurerm_database_migration_project

Manage a Azure Database Migration Project.~> **NOTE:** Destroying a Database Migration Project will leave any outstanding tasks untouched. This is to avoid unexpectedly deleting any tasks managed outside of terraform.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specify the name of the database migration project. Changing this forces a new resource to be created. | 
| **var.service_name** | string | True | -  |  -  | Name of the database migration service where resource belongs to. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | Name of the resource group in which to create the database migration project. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.source_platform** | string | True | -  |  -  | The platform type of the migration source. Currently only support: `SQL`(on-premises SQL Server). Changing this forces a new resource to be created. | 
| **var.target_platform** | string | True | -  |  -  | The platform type of the migration target. Currently only support: `SQLDB`(Azure SQL Database). Changing this forces a new resource to be created. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags to assigned to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **service_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **source_platform** | string  | - | 
| **target_platform** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of Database Migration Project. | 