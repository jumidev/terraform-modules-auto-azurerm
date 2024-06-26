# azurerm_mssql_firewall_rule



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "database/mssql_firewall_rule"   
}
inputs = {
   name = "The name of the firewall rule"   
   # server_id → set in component_inputs
   start_ip_address = "The starting IP address to allow through the firewall for this rule..."   
   end_ip_address = "The ending IP address to allow through the firewall for this rule..."   
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

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  The name of the firewall rule. Changing this forces a new resource to be created. | 
| **server_id** | string |  -  |  The resource ID of the SQL Server on which to create the Firewall Rule. Changing this forces a new resource to be created. | 
| **start_ip_address** | string |  -  |  The starting IP address to allow through the firewall for this rule. | 
| **end_ip_address** | string |  `start_ip_address`, `end_ip_address`, `0.0.0.0`  |  The ending IP address to allow through the firewall for this rule. -> **NOTE:** The Azure feature `Allow access to Azure services` can be enabled by setting `start_ip_address` and `end_ip_address` to `0.0.0.0` which ([is documented in the Azure API Docs](https://docs.microsoft.com/rest/api/sql/firewallrules/createorupdate)). | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **end_ip_address** | string | No  | The ending IP address to allow through the firewall for this rule. -> **NOTE:** The Azure feature `Allow access to Azure services` can be enabled by setting `start_ip_address` and `end_ip_address` to `0.0.0.0` which ([is documented in the Azure API Docs](https://docs.microsoft.com/rest/api/sql/firewallrules/createorupdate)). In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The SQL Firewall Rule ID. | 

Additionally, all variables are provided as outputs.
