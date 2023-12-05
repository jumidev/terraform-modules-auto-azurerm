# azurerm_database_migration_service

Manages a Azure Database Migration Service.~> **NOTE:** Destroying a Database Migration Service will leave any outstanding tasks untouched. This is to avoid unexpectedly deleting any tasks managed outside of terraform.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "database_migration/database_migration_service"   
}

inputs = {
   name = "name of database_migration_service"   
   location = "${location}"   
   resource_group_name = "${resource_group}"   
   # subnet_id → set in tfstate_inputs
   sku_name = "sku_name of database_migration_service"   
}

tfstate_inputs = {
   subnet_id = "path/to/subnet_component:id"   
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
| **name** | string |  -  |  Specify the name of the database migration service. Changing this forces a new resource to be created. | 
| **location** | string |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  Name of the resource group in which to create the database migration service. Changing this forces a new resource to be created. | 
| **subnet_id** | string |  -  |  The ID of the virtual subnet resource to which the database migration service should be joined. Changing this forces a new resource to be created. | 
| **sku_name** | string |  `Premium_4vCores`, `Standard_1vCores`, `Standard_2vCores`, `Standard_4vCores`  |  The SKU name of the database migration service. Possible values are `Premium_4vCores`, `Standard_1vCores`, `Standard_2vCores` and `Standard_4vCores`. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **tags** | map |  A mapping of tags to assigned to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of Database Migration Service. | 

Additionally, all variables are provided as outputs.
