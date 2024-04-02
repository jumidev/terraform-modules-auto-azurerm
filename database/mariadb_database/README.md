# azurerm_mariadb_database



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "database/mariadb_database"   
}

inputs = {
   name = "Specifies the name of the MariaDB Database, which needs [to be a valid MariaDB i..."   
   # server_name → set in component_inputs
   resource_group_name = "${resource_group}"   
   charset = "Specifies the Charset for the MariaDB Database, which needs [to be a valid Maria..."   
   collation = "Specifies the Collation for the MariaDB Database, which needs [to be a valid Mar..."   
}

component_inputs = {
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
| **collation** | string | No  | Specifies the Collation for the MariaDB Database, which needs [to be a valid MariaDB Collation](https://mariadb.com/kb/en/library/setting-character-sets-and-collations). Changing this forces a new resource to be created. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the MariaDB Database. | 

Additionally, all variables are provided as outputs.
