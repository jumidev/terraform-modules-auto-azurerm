# azurerm_postgresql_server_key

Manages a Customer Managed Key for a PostgreSQL Server.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.server_id** | string | True | The ID of the PostgreSQL Server. Changing this forces a new resource to be created. | 
| **var.key_vault_key_id** | string | True | The URL to a Key Vault Key. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **server_id** | string  | - | 
| **key_vault_key_id** | string  | - | 
| **id** | string  | The ID of the PostgreSQL Server Key. | 