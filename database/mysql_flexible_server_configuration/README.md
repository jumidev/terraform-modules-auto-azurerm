# azurerm_mysql_flexible_server_configuration

Sets a MySQL Flexible Server Configuration value on a MySQL Flexible Server.## Disclaimers~> **Note:** Since this resource is provisioned by default, the Azure Provider will not check for the presence of an existing resource prior to attempting to create it.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "database/mysql_flexible_server_configuration" 
}

inputs = {
   name = "name of mysql_flexible_server_configuration" 
   server_name = "server_name of mysql_flexible_server_configuration" 
   resource_group_name = "${resource_group}" 
   value = "value of mysql_flexible_server_configuration" 
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
| **var.name** | string |  Specifies the name of the MySQL Flexible Server Configuration, which needs [to be a valid MySQL configuration name](https://dev.mysql.com/doc/refman/5.7/en/server-configuration.html). Changing this forces a new resource to be created. | 
| **var.server_name** | string |  Specifies the name of the MySQL Flexible Server. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  The name of the resource group in which the MySQL Flexible Server exists. Changing this forces a new resource to be created. | 
| **var.value** | string |  Specifies the value of the MySQL Flexible Server Configuration. See the MySQL documentation for valid values. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the MySQL Flexible Server Configuration. | 

Additionally, all variables are provided as outputs.
