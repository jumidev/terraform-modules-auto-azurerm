# azurerm_database_migration_project

Manage a Azure Database Migration Project.~> **NOTE:** Destroying a Database Migration Project will leave any outstanding tasks untouched. This is to avoid unexpectedly deleting any tasks managed outside of terraform.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "database_migration/database_migration_project" 
}

inputs = {
   name = "name of database_migration_project" 
   service_name = "service_name of database_migration_project" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   source_platform = "source_platform of database_migration_project" 
   target_platform = "target_platform of database_migration_project" 
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
| **var.name** | string  Specify the name of the database migration project. Changing this forces a new resource to be created. | 
| **var.service_name** | string  Name of the database migration service where resource belongs to. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string  Name of the resource group in which to create the database migration project. Changing this forces a new resource to be created. | 
| **var.location** | string  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.source_platform** | string  The platform type of the migration source. Currently only support: `SQL`(on-premises SQL Server). Changing this forces a new resource to be created. | 
| **var.target_platform** | string  The platform type of the migration target. Currently only support: `SQLDB`(Azure SQL Database). Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.tags** | map  A mapping of tags to assigned to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of Database Migration Project. | 

Additionally, all variables are provided as outputs.
