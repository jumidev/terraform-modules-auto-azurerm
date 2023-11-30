# azurerm_mssql_firewall_rule

Allows you to manage an Azure SQL Firewall Rule.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "database/mssql_firewall_rule" 
}

inputs = {
   name = "name of mssql_firewall_rule" 
   server_id = "server_id of mssql_firewall_rule" 
   start_ip_address = "start_ip_address of mssql_firewall_rule" 
   end_ip_address = "end_ip_address of mssql_firewall_rule" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name of the firewall rule. Changing this forces a new resource to be created. | 
| **var.server_id** | string | True | The resource ID of the SQL Server on which to create the Firewall Rule. Changing this forces a new resource to be created. | 
| **var.start_ip_address** | string | True | The starting IP address to allow through the firewall for this rule. | 
| **var.end_ip_address** | string | True | The ending IP address to allow through the firewall for this rule. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The SQL Firewall Rule ID. | 

Additionally, all variables are provided as outputs.
