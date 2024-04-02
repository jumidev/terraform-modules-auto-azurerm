# azurerm_postgresql_flexible_server_configuration



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "database/postgresql_flexible_server_configuration"   
}

inputs = {
   name = "Specifies the name of the PostgreSQL Configuration, which needs [to be a valid P..."   
   # server_id → set in component_inputs
   value = "Specifies the value of the PostgreSQL Configuration..."   
}

component_inputs = {
   server_id = "path/to/postgresql_flexible_server_component:id"   
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
| **name** | string |  `name`, `azure.extensions`, `value`  |  Specifies the name of the PostgreSQL Configuration, which needs [to be a valid PostgreSQL configuration name](https://www.postgresql.org/docs/current/static/sql-syntax-lexical.html#SQL-SYNTAX-IDENTIFIER). Changing this forces a new resource to be created. -> **Note:** PostgreSQL provides the ability to extend the functionality using azure extensions, with PostgreSQL azure extensions you should specify the `name` value as `azure.extensions` and the `value` you wish to allow in the [extensions list](https://docs.microsoft.com/en-us/azure/postgresql/flexible-server/concepts-extensions?WT.mc_id=Portal-Microsoft_Azure_OSSDatabases#postgres-13-extensions). | 
| **server_id** | string |  -  |  The ID of the PostgreSQL Flexible Server where we want to change configuration. Changing this forces a new PostgreSQL Flexible Server Configuration resource. | 
| **value** | string |  -  |  Specifies the value of the PostgreSQL Configuration. See the PostgreSQL documentation for valid values. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **value** | string | No  | Specifies the value of the PostgreSQL Configuration. See the PostgreSQL documentation for valid values. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the PostgreSQL Configuration. | 

Additionally, all variables are provided as outputs.
