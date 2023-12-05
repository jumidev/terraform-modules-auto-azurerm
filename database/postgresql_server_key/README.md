# azurerm_postgresql_server_key

Manages a Customer Managed Key for a PostgreSQL Server.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "database/postgresql_server_key"   
}

inputs = {
   # server_id → set in tfstate_inputs
   # key_vault_key_id → set in tfstate_inputs
}

tfstate_inputs = {
   server_id = "path/to/postgresql_server_component:id"   
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
| **server_id** | string |  The ID of the PostgreSQL Server. Changing this forces a new resource to be created. | 
| **key_vault_key_id** | string |  The URL to a Key Vault Key. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the PostgreSQL Server Key. | 

Additionally, all variables are provided as outputs.
