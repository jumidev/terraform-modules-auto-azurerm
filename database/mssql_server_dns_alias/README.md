# azurerm_mssql_server_dns_alias

Manages a MS SQL Server DNS Alias.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **mssql_server_id** | string | True | -  |  -  | The ID of the mssql server. Changing this forces a new MSSQL Server DNS Alias to be created. | 
| **name** | string | True | -  |  -  | The name which should be used for this MSSQL Server DNS Alias. Changing this forces a new MSSQL Server DNS Alias to be created. | 

