# azurerm_postgresql_database

Manages a PostgreSQL Database within a PostgreSQL Server

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "database/postgresql_database" 
}

inputs = {
   name = "name of postgresql_database" 
   server_name = "server_name of postgresql_database" 
   resource_group_name = "${resource_group}" 
   charset = "charset of postgresql_database" 
   collation = "collation of postgresql_database" 
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
| **var.name** | string |  Specifies the name of the PostgreSQL Database, which needs [to be a valid PostgreSQL identifier](https://www.postgresql.org/docs/current/static/sql-syntax-lexical.html#SQL-SYNTAX-IDENTIFIERS). Changing this forces a new resource to be created. | 
| **var.server_name** | string |  Specifies the name of the PostgreSQL Server. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  The name of the resource group in which the PostgreSQL Server exists. Changing this forces a new resource to be created. | 
| **var.charset** | string |  Specifies the Charset for the PostgreSQL Database, which needs [to be a valid PostgreSQL Charset](https://www.postgresql.org/docs/current/static/multibyte.html). Changing this forces a new resource to be created. | 
| **var.collation** | string |  Specifies the Collation for the PostgreSQL Database, which needs [to be a valid PostgreSQL Collation](https://www.postgresql.org/docs/current/static/collation.html). Note that Microsoft uses different [notation](https://msdn.microsoft.com/library/windows/desktop/dd373814.aspx) - en-US instead of en_US. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the PostgreSQL Database. | 

Additionally, all variables are provided as outputs.
