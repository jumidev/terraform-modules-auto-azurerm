# azurerm_mssql_outbound_firewall_rule

Allows you to manage an Azure SQL Outbound Firewall Rule.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the outbound firewall rule. This should be a FQDN. Changing this forces a new resource to be created. | 
| **server_id** | string | True | -  |  -  | The resource ID of the SQL Server on which to create the Outbound Firewall Rule. Changing this forces a new resource to be created. | 

