# azurerm_mariadb_configuration

Sets a MariaDB Configuration value on a MariaDB Server.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "database/mariadb_configuration"   
}

inputs = {
   name = "Specifies the name of the MariaDB Configuration, which needs [to be a valid Mari..."   
   # server_name → set in tfstate_inputs
   resource_group_name = "${resource_group}"   
   value = "Specifies the value of the MariaDB Configuration"   
}

tfstate_inputs = {
   server_name = "path/to/mariadb_server_component:name"   
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
| **name** | string |  Specifies the name of the MariaDB Configuration, which needs [to be a valid MariaDB configuration name](https://mariadb.com/kb/en/library/server-system-variables/). Changing this forces a new resource to be created. | 
| **server_name** | string |  Specifies the name of the MariaDB Server. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which the MariaDB Server exists. Changing this forces a new resource to be created. | 
| **value** | string |  Specifies the value of the MariaDB Configuration. See the MariaDB documentation for valid values. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the MariaDB Configuration. | 

Additionally, all variables are provided as outputs.
