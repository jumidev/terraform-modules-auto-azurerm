# azurerm_postgresql_configuration

Sets a PostgreSQL Configuration value on a PostgreSQL Server.## Disclaimers~> **Note:** Since this resource is provisioned by default, the Azure Provider will not check for the presence of an existing resource prior to attempting to create it.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "database/postgresql_configuration" 
}

inputs = {
   name = "name of postgresql_configuration" 
   server_name = "server_name of postgresql_configuration" 
   resource_group_name = "${resource_group}" 
   value = "value of postgresql_configuration" 
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
| **var.name** | string | True | Specifies the name of the PostgreSQL Configuration, which needs [to be a valid PostgreSQL configuration name](https://www.postgresql.org/docs/current/static/sql-syntax-lexical.html#SQL-SYNTAX-IDENTIFIER). Changing this forces a new resource to be created. | 
| **var.server_name** | string | True | Specifies the name of the PostgreSQL Server. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group in which the PostgreSQL Server exists. Changing this forces a new resource to be created. | 
| **var.value** | string | True | Specifies the value of the PostgreSQL Configuration. See the PostgreSQL documentation for valid values. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the PostgreSQL Configuration. | 

Additionally, all variables are provided as outputs.
