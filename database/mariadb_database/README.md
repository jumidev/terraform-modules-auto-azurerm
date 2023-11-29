# azurerm_mariadb_database

Manages a MariaDB Database within a MariaDB Server

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the MariaDB Database, which needs [to be a valid MariaDB identifier](https://mariadb.com/kb/en/library/identifier-names/). Changing this forces a new resource to be created. | 
| **var.server_name** | string | True | -  |  -  | Specifies the name of the MariaDB Server. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the resource group in which the MariaDB Server exists. Changing this forces a new resource to be created. | 
| **var.charset** | string | True | -  |  -  | Specifies the Charset for the MariaDB Database, which needs [to be a valid MariaDB Charset](https://mariadb.com/kb/en/library/setting-character-sets-and-collations). Changing this forces a new resource to be created. | 
| **var.collation** | string | True | -  |  -  | Specifies the Collation for the MariaDB Database, which needs [to be a valid MariaDB Collation](https://mariadb.com/kb/en/library/setting-character-sets-and-collations). Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **server_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **charset** | string  | - | 
| **collation** | string  | - | 
| **id** | string  | The ID of the MariaDB Database. | 