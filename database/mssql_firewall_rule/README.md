# azurerm_mssql_firewall_rule

Allows you to manage an Azure SQL Firewall Rule.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the firewall rule. Changing this forces a new resource to be created. | 
| **server_id** | string | True | -  |  -  | The resource ID of the SQL Server on which to create the Firewall Rule. Changing this forces a new resource to be created. | 
| **start_ip_address** | string | True | -  |  -  | The starting IP address to allow through the firewall for this rule. | 
| **end_ip_address** | string | True | -  |  -  | The ending IP address to allow through the firewall for this rule. | 

