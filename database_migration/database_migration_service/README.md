# azurerm_database_migration_service

Manages a Azure Database Migration Service.~> **NOTE:** Destroying a Database Migration Service will leave any outstanding tasks untouched. This is to avoid unexpectedly deleting any tasks managed outside of terraform.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specify the name of the database migration service. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  Name of the resource group in which to create the database migration service. Changing this forces a new resource to be created. | 
| **var.subnet_id** | string | True | -  |  The ID of the virtual subnet resource to which the database migration service should be joined. Changing this forces a new resource to be created. | 
| **var.sku_name** | string | True | `Premium_4vCores`, `Standard_1vCores`, `Standard_2vCores`, `Standard_4vCores`  |  The SKU name of the database migration service. Possible values are `Premium_4vCores`, `Standard_1vCores`, `Standard_2vCores` and `Standard_4vCores`. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | -  |  A mapping of tags to assigned to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **location** | string  | - | 
| **resource_group_name** | string  | - | 
| **subnet_id** | string  | - | 
| **sku_name** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of Database Migration Service. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "database_migration/database_migration_service" 
}

inputs = {
   name = "name of database_migration_service" 
   location = "${location}" 
   resource_group_name = "${resource_group}" 
   subnet_id = "subnet_id of database_migration_service" 
   sku_name = "sku_name of database_migration_service" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```