# azurerm_postgresql_database



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "database/postgresql_database"   
}

inputs = {
   name = "Specifies the name of the PostgreSQL Database, which needs [to be a valid Postgr..."   
   # server_name → set in component_inputs
   resource_group_name = "${resource_group}"   
   charset = "Specifies the Charset for the PostgreSQL Database, which needs [to be a valid Po..."   
   collation = "Specifies the Collation for the PostgreSQL Database, which needs [to be a valid ..."   
}

component_inputs = {
   server_name = "path/to/postgresql_server_component:name"   
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
| **name** | string |  Specifies the name of the PostgreSQL Database, which needs [to be a valid PostgreSQL identifier](https://www.postgresql.org/docs/current/static/sql-syntax-lexical.html#SQL-SYNTAX-IDENTIFIERS). Changing this forces a new resource to be created. | 
| **server_name** | string |  Specifies the name of the PostgreSQL Server. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which the PostgreSQL Server exists. Changing this forces a new resource to be created. | 
| **charset** | string |  Specifies the Charset for the PostgreSQL Database, which needs [to be a valid PostgreSQL Charset](https://www.postgresql.org/docs/current/static/multibyte.html). Changing this forces a new resource to be created. | 
| **collation** | string |  Specifies the Collation for the PostgreSQL Database, which needs [to be a valid PostgreSQL Collation](https://www.postgresql.org/docs/current/static/collation.html). Note that Microsoft uses different [notation](https://msdn.microsoft.com/library/windows/desktop/dd373814.aspx) - en-US instead of en_US. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **collation** | string | No  | Specifies the Collation for the PostgreSQL Database, which needs [to be a valid PostgreSQL Collation](https://www.postgresql.org/docs/current/static/collation.html). Note that Microsoft uses different [notation](https://msdn.microsoft.com/library/windows/desktop/dd373814.aspx) - en-US instead of en_US. Changing this forces a new resource to be created. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the PostgreSQL Database. | 

Additionally, all variables are provided as outputs.
