# azurerm_postgresql_database

Manages a PostgreSQL Database within a PostgreSQL Server

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the PostgreSQL Database, which needs [to be a valid PostgreSQL identifier](https://www.postgresql.org/docs/current/static/sql-syntax-lexical.html#SQL-SYNTAX-IDENTIFIERS). Changing this forces a new resource to be created. | 
| **var.server_name** | string | True | Specifies the name of the PostgreSQL Server. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group in which the PostgreSQL Server exists. Changing this forces a new resource to be created. | 
| **var.charset** | string | True | Specifies the Charset for the PostgreSQL Database, which needs [to be a valid PostgreSQL Charset](https://www.postgresql.org/docs/current/static/multibyte.html). Changing this forces a new resource to be created. | 
| **var.collation** | string | True | Specifies the Collation for the PostgreSQL Database, which needs [to be a valid PostgreSQL Collation](https://www.postgresql.org/docs/current/static/collation.html). Note that Microsoft uses different [notation](https://msdn.microsoft.com/library/windows/desktop/dd373814.aspx) - en-US instead of en_US. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **server_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **charset** | string  | - | 
| **collation** | string  | - | 
| **id** | string  | The ID of the PostgreSQL Database. | 