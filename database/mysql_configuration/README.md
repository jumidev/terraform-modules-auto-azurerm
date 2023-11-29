# azurerm_mysql_configuration

Sets a MySQL Configuration value on a MySQL Server.## Disclaimers~> **Note:** Since this resource is provisioned by default, the Azure Provider will not check for the presence of an existing resource prior to attempting to create it.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the MySQL Configuration, which needs [to be a valid MySQL configuration name](https://dev.mysql.com/doc/refman/5.7/en/server-configuration.html). Changing this forces a new resource to be created. | 
| **server_name** | string | True | -  |  -  | Specifies the name of the MySQL Server. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which the MySQL Server exists. Changing this forces a new resource to be created. | 
| **value** | string | True | -  |  -  | Specifies the value of the MySQL Configuration. See the MySQL documentation for valid values. Changing this forces a new resource to be created. | 

