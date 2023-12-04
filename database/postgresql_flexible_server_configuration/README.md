# azurerm_postgresql_flexible_server_configuration

Sets a PostgreSQL Configuration value on a Azure PostgreSQL Flexible Server.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "database/postgresql_flexible_server_configuration" 
}

inputs = {
   name = "name of postgresql_flexible_server_configuration" 
   # server_id → set in tfstate_inputs
   value = "value of postgresql_flexible_server_configuration" 
}

tfstate_inputs = {
   server_id = "path/to/postgresql_flexible_server_component:id" 
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
| **name** | string |  Specifies the name of the PostgreSQL Configuration, which needs [to be a valid PostgreSQL configuration name](https://www.postgresql.org/docs/current/static/sql-syntax-lexical.html#SQL-SYNTAX-IDENTIFIER). Changing this forces a new resource to be created. | 
| **server_id** | string |  The ID of the PostgreSQL Flexible Server where we want to change configuration. Changing this forces a new PostgreSQL Flexible Server Configuration resource. | 
| **value** | string |  Specifies the value of the PostgreSQL Configuration. See the PostgreSQL documentation for valid values. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the PostgreSQL Configuration. | 

Additionally, all variables are provided as outputs.
