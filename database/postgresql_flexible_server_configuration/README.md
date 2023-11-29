# azurerm_postgresql_flexible_server_configuration

Sets a PostgreSQL Configuration value on a Azure PostgreSQL Flexible Server.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the PostgreSQL Configuration, which needs [to be a valid PostgreSQL configuration name](https://www.postgresql.org/docs/current/static/sql-syntax-lexical.html#SQL-SYNTAX-IDENTIFIER). Changing this forces a new resource to be created. | 
| **server_id** | string | True | -  |  -  | The ID of the PostgreSQL Flexible Server where we want to change configuration. Changing this forces a new PostgreSQL Flexible Server Configuration resource. | 
| **value** | string | True | -  |  -  | Specifies the value of the PostgreSQL Configuration. See the PostgreSQL documentation for valid values. | 

