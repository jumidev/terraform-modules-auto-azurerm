# azurerm_sql_firewall_rule

Allows you to manage an Azure SQL Firewall Rule.-> **Note:** The `azurerm_sql_firewall_rule` resource is deprecated in version 3.0 of the AzureRM provider and will be removed in version 4.0. Please use the [`azurerm_mssql_firewall_rule`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_firewall_rule) resource instead.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name of the firewall rule. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the SQL Server. Changing this forces a new resource to be created. | 
| **var.server_name** | string | True | -  |  -  | The name of the SQL Server on which to create the Firewall Rule. Changing this forces a new resource to be created. | 
| **var.start_ip_address** | string | True | -  |  -  | The starting IP address to allow through the firewall for this rule. | 
| **var.end_ip_address** | string | True | -  |  -  | The ending IP address to allow through the firewall for this rule. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **server_name** | string  | - | 
| **start_ip_address** | string  | - | 
| **end_ip_address** | string  | - | 
| **id** | string  | The SQL Firewall Rule ID. | 