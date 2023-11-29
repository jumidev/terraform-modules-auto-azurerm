# azurerm_mariadb_configuration

Sets a MariaDB Configuration value on a MariaDB Server.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the MariaDB Configuration, which needs [to be a valid MariaDB configuration name](https://mariadb.com/kb/en/library/server-system-variables/). Changing this forces a new resource to be created. | 
| **var.server_name** | string | True | -  |  -  | Specifies the name of the MariaDB Server. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the resource group in which the MariaDB Server exists. Changing this forces a new resource to be created. | 
| **var.value** | string | True | -  |  -  | Specifies the value of the MariaDB Configuration. See the MariaDB documentation for valid values. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **server_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **value** | string  | - | 
| **id** | string  | The ID of the MariaDB Configuration. | 