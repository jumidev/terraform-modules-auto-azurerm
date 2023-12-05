# azurerm_mysql_server_key

Manages a Customer Managed Key for a MySQL Server.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "database/mysql_server_key"   
}

inputs = {
   server_id = "The ID of the MySQL Server"   
   # key_vault_key_id → set in tfstate_inputs
}

tfstate_inputs = {
   key_vault_key_id = "path/to/key_vault_key_component:id"   
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
| **server_id** | string |  The ID of the MySQL Server. Changing this forces a new resource to be created. | 
| **key_vault_key_id** | string |  The URL to a Key Vault Key. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the MySQL Server Key. | 

Additionally, all variables are provided as outputs.
