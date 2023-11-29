# azurerm_mysql_flexible_database

Manages a MySQL Database within a MySQL Flexible Server

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the MySQL Database, which needs [to be a valid MySQL identifier](https://dev.mysql.com/doc/refman/5.7/en/identifiers.html). Changing this forces a new resource to be created. | 
| **var.server_name** | string | True | Specifies the name of the MySQL Flexible Server. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group in which the MySQL Server exists. Changing this forces a new resource to be created. | 
| **var.charset** | string | True | Specifies the Charset for the MySQL Database, which needs [to be a valid MySQL Charset](https://dev.mysql.com/doc/refman/5.7/en/charset-charsets.html). Changing this forces a new resource to be created. | 
| **var.collation** | string | True | Specifies the Collation for the MySQL Database, which needs [to be a valid MySQL Collation](https://dev.mysql.com/doc/refman/5.7/en/charset-mysql.html). Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **server_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **charset** | string  | - | 
| **collation** | string  | - | 
| **id** | string  | The ID of the MySQL Database. | 