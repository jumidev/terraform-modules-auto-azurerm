# azurerm_postgresql_configuration

Sets a PostgreSQL Configuration value on a PostgreSQL Server.## Disclaimers~> **Note:** Since this resource is provisioned by default, the Azure Provider will not check for the presence of an existing resource prior to attempting to create it.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "database/postgresql_configuration"   
}

inputs = {
   name = "Specifies the name of the PostgreSQL Configuration, which needs [to be a valid P..."   
   # server_name → set in component_inputs
   resource_group_name = "${resource_group}"   
   value = "Specifies the value of the PostgreSQL Configuration..."   
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
| **name** | string |  Specifies the name of the PostgreSQL Configuration, which needs [to be a valid PostgreSQL configuration name](https://www.postgresql.org/docs/current/static/sql-syntax-lexical.html#SQL-SYNTAX-IDENTIFIER). Changing this forces a new resource to be created. | 
| **server_name** | string |  Specifies the name of the PostgreSQL Server. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which the PostgreSQL Server exists. Changing this forces a new resource to be created. | 
| **value** | string |  Specifies the value of the PostgreSQL Configuration. See the PostgreSQL documentation for valid values. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **value** | string | No  | Specifies the value of the PostgreSQL Configuration. See the PostgreSQL documentation for valid values. Changing this forces a new resource to be created. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the PostgreSQL Configuration. | 

Additionally, all variables are provided as outputs.
