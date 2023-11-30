# azurerm_mysql_configuration

Sets a MySQL Configuration value on a MySQL Server.## Disclaimers~> **Note:** Since this resource is provisioned by default, the Azure Provider will not check for the presence of an existing resource prior to attempting to create it.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "database/mysql_configuration" 
}

inputs = {
   name = "name of mysql_configuration" 
   server_name = "server_name of mysql_configuration" 
   resource_group_name = "${resource_group}" 
   value = "value of mysql_configuration" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the MySQL Configuration, which needs [to be a valid MySQL configuration name](https://dev.mysql.com/doc/refman/5.7/en/server-configuration.html). Changing this forces a new resource to be created. | 
| **var.server_name** | string | True | Specifies the name of the MySQL Server. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group in which the MySQL Server exists. Changing this forces a new resource to be created. | 
| **var.value** | string | True | Specifies the value of the MySQL Configuration. See the MySQL documentation for valid values. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the MySQL Configuration. | 

Additionally, all variables are provided as outputs.
