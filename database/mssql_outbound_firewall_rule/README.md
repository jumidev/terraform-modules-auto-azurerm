# azurerm_mssql_outbound_firewall_rule



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "database/mssql_outbound_firewall_rule"   
}

inputs = {
   name = "The name of the outbound firewall rule"   
   # server_id → set in component_inputs
}

component_inputs = {
   server_id = "path/to/mssql_server_component:id"   
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
| **name** | string |  The name of the outbound firewall rule. This should be a FQDN. Changing this forces a new resource to be created. | 
| **server_id** | string |  The resource ID of the SQL Server on which to create the Outbound Firewall Rule. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **server_id** | string | No  | The resource ID of the SQL Server on which to create the Outbound Firewall Rule. Changing this forces a new resource to be created. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The SQL Outbound Firewall Rule ID. | 

Additionally, all variables are provided as outputs.
