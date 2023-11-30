# azurerm_mysql_server_key

Manages a Customer Managed Key for a MySQL Server.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "database/mysql_server_key" 
}

inputs = {
   server_id = "server_id of mysql_server_key" 
   key_vault_key_id = "key_vault_key_id of mysql_server_key" 
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
| **var.server_id** | string | True | The ID of the MySQL Server. Changing this forces a new resource to be created. | 
| **var.key_vault_key_id** | string | True | The URL to a Key Vault Key. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the MySQL Server Key. | 

Additionally, all variables are provided as outputs.
