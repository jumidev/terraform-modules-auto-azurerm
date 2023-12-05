# azurerm_mariadb_database

Manages a MariaDB Database within a MariaDB Server

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "database/mariadb_database"   
}

inputs = {
   name = "name of mariadb_database"   
   # server_name → set in tfstate_inputs
   resource_group_name = "${resource_group}"   
   charset = "charset of mariadb_database"   
   collation = "collation of mariadb_database"   
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
| **name** | string |  Specifies the name of the MariaDB Database, which needs [to be a valid MariaDB identifier](https://mariadb.com/kb/en/library/identifier-names/). Changing this forces a new resource to be created. | 
| **server_name** | string |  Specifies the name of the MariaDB Server. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which the MariaDB Server exists. Changing this forces a new resource to be created. | 
| **charset** | string |  Specifies the Charset for the MariaDB Database, which needs [to be a valid MariaDB Charset](https://mariadb.com/kb/en/library/setting-character-sets-and-collations). Changing this forces a new resource to be created. | 
| **collation** | string |  Specifies the Collation for the MariaDB Database, which needs [to be a valid MariaDB Collation](https://mariadb.com/kb/en/library/setting-character-sets-and-collations). Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the MariaDB Database. | 

Additionally, all variables are provided as outputs.
