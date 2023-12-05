# azurerm_mysql_database

Manages a MySQL Database within a MySQL Server

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "database/mysql_database"   
}

inputs = {
   name = "Specifies the name of the MySQL Database, which needs [to be a valid MySQL ident..."   
   # server_name → set in tfstate_inputs
   resource_group_name = "${resource_group}"   
   charset = "Specifies the Charset for the MySQL Database, which needs [to be a valid MySQL C..."   
   collation = "Specifies the Collation for the MySQL Database, which needs [to be a valid MySQL..."   
}

tfstate_inputs = {
   server_name = "path/to/mysql_server_component:name"   
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
| **name** | string |  Specifies the name of the MySQL Database, which needs [to be a valid MySQL identifier](https://dev.mysql.com/doc/refman/5.7/en/identifiers.html). Changing this forces a new resource to be created. | 
| **server_name** | string |  Specifies the name of the MySQL Server. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which the MySQL Server exists. Changing this forces a new resource to be created. | 
| **charset** | string |  Specifies the Charset for the MySQL Database, which needs [to be a valid MySQL Charset](https://dev.mysql.com/doc/refman/5.7/en/charset-charsets.html). Changing this forces a new resource to be created. | 
| **collation** | string |  Specifies the Collation for the MySQL Database, which needs [to be a valid MySQL Collation](https://dev.mysql.com/doc/refman/5.7/en/charset-mysql.html). Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the MySQL Database. | 

Additionally, all variables are provided as outputs.
