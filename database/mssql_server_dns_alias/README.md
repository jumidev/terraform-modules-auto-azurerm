# azurerm_mssql_server_dns_alias

Manages a MS SQL Server DNS Alias.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.mssql_server_id** | string | True | -  |  -  | The ID of the mssql server. Changing this forces a new MSSQL Server DNS Alias to be created. | 
| **var.name** | string | True | -  |  -  | The name which should be used for this MSSQL Server DNS Alias. Changing this forces a new MSSQL Server DNS Alias to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **mssql_server_id** | string  | - | 
| **name** | string  | - | 
| **id** | string  | The ID of the MSSQL Server DNS Alias. | 
| **dns_record** | string  | The fully qualified DNS record for alias. | 