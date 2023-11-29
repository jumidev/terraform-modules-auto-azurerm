# azurerm_mssql_firewall_rule

Allows you to manage an Azure SQL Firewall Rule.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name of the firewall rule. Changing this forces a new resource to be created. | 
| **var.server_id** | string | True | The resource ID of the SQL Server on which to create the Firewall Rule. Changing this forces a new resource to be created. | 
| **var.start_ip_address** | string | True | The starting IP address to allow through the firewall for this rule. | 
| **var.end_ip_address** | string | True | The ending IP address to allow through the firewall for this rule. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **server_id** | string  | - | 
| **start_ip_address** | string  | - | 
| **end_ip_address** | string  | - | 
| **id** | string  | The SQL Firewall Rule ID. | 