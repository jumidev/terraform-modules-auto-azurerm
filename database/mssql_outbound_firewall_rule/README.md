# azurerm_mssql_outbound_firewall_rule

Allows you to manage an Azure SQL Outbound Firewall Rule.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "database/mssql_outbound_firewall_rule" 
}

inputs = {
   name = "name of mssql_outbound_firewall_rule" 
   server_id = "server_id of mssql_outbound_firewall_rule" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.name** | string |  The name of the outbound firewall rule. This should be a FQDN. Changing this forces a new resource to be created. | 
| **var.server_id** | string |  The resource ID of the SQL Server on which to create the Outbound Firewall Rule. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The SQL Outbound Firewall Rule ID. | 

Additionally, all variables are provided as outputs.
