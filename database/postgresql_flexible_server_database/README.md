# azurerm_postgresql_flexible_server_database

Manages a PostgreSQL Flexible Server Database.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for this Azure PostgreSQL Flexible Server Database. Changing this forces a new Azure PostgreSQL Flexible Server Database to be created. | 
| **var.server_id** | string | True | -  |  -  | The ID of the Azure PostgreSQL Flexible Server from which to create this PostgreSQL Flexible Server Database. Changing this forces a new Azure PostgreSQL Flexible Server Database to be created. | 
| **var.charset** | string | False | `UTF8`  |  -  | Specifies the Charset for the Azure PostgreSQL Flexible Server Database, which needs [to be a valid PostgreSQL Charset](https://www.postgresql.org/docs/current/static/multibyte.html). Defaults to `UTF8`. Changing this forces a new Azure PostgreSQL Flexible Server Database to be created. | 
| **var.collation** | string | False | `en_US.utf8`  |  -  | Specifies the Collation for the Azure PostgreSQL Flexible Server Database, which needs [to be a valid PostgreSQL Collation](https://www.postgresql.org/docs/current/static/collation.html). Defaults to `en_US.utf8`. Changing this forces a new Azure PostgreSQL Flexible Server Database to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **server_id** | string  | - | 
| **charset** | string  | - | 
| **collation** | string  | - | 
| **id** | string  | The ID of the Azure PostgreSQL Flexible Server Database. | 