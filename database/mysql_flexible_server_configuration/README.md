# azurerm_mysql_flexible_server_configuration

Sets a MySQL Flexible Server Configuration value on a MySQL Flexible Server.## Disclaimers~> **Note:** Since this resource is provisioned by default, the Azure Provider will not check for the presence of an existing resource prior to attempting to create it.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the MySQL Flexible Server Configuration, which needs [to be a valid MySQL configuration name](https://dev.mysql.com/doc/refman/5.7/en/server-configuration.html). Changing this forces a new resource to be created. | 
| **var.server_name** | string | True | Specifies the name of the MySQL Flexible Server. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group in which the MySQL Flexible Server exists. Changing this forces a new resource to be created. | 
| **var.value** | string | True | Specifies the value of the MySQL Flexible Server Configuration. See the MySQL documentation for valid values. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **server_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **value** | string  | - | 
| **id** | string  | The ID of the MySQL Flexible Server Configuration. | 