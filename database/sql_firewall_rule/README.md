# azurerm_sql_firewall_rule

Allows you to manage an Azure SQL Firewall Rule.-> **Note:** The `azurerm_sql_firewall_rule` resource is deprecated in version 3.0 of the AzureRM provider and will be removed in version 4.0. Please use the [`azurerm_mssql_firewall_rule`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_firewall_rule) resource instead.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the firewall rule. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the SQL Server. Changing this forces a new resource to be created. | 
| **server_name** | string | True | -  |  -  | The name of the SQL Server on which to create the Firewall Rule. Changing this forces a new resource to be created. | 
| **start_ip_address** | string | True | -  |  -  | The starting IP address to allow through the firewall for this rule. | 
| **end_ip_address** | string | True | -  |  -  | The ending IP address to allow through the firewall for this rule. | 

