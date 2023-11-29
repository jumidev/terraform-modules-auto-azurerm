# azurerm_mysql_server_key

Manages a Customer Managed Key for a MySQL Server.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **server_id** | string | True | -  |  -  | The ID of the MySQL Server. Changing this forces a new resource to be created. | 
| **key_vault_key_id** | string | True | -  |  -  | The URL to a Key Vault Key. | 

