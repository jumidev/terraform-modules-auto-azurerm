# azurerm_postgresql_firewall_rule

Manages a Firewall Rule for a PostgreSQL Server

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "database/postgresql_firewall_rule"   
}

inputs = {
   name = "Specifies the name of the PostgreSQL Firewall Rule"   
   # server_name → set in component_inputs
   resource_group_name = "${resource_group}"   
   start_ip_address = "Specifies the Start IP Address associated with this Firewall Rule..."   
   end_ip_address = "Specifies the End IP Address associated with this Firewall Rule..."   
}

component_inputs = {
   server_name = "path/to/postgresql_server_component:name"   
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
| **name** | string |  -  |  Specifies the name of the PostgreSQL Firewall Rule. Changing this forces a new resource to be created. | 
| **server_name** | string |  -  |  Specifies the name of the PostgreSQL Server. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  The name of the resource group in which the PostgreSQL Server exists. Changing this forces a new resource to be created. | 
| **start_ip_address** | string |  -  |  Specifies the Start IP Address associated with this Firewall Rule. Changing this forces a new resource to be created. | 
| **end_ip_address** | string |  `start_ip_address`, `end_ip_address`, `0.0.0.0`  |  Specifies the End IP Address associated with this Firewall Rule. Changing this forces a new resource to be created. -> **NOTE:** The Azure feature `Allow access to Azure services` can be enabled by setting `start_ip_address` and `end_ip_address` to `0.0.0.0` which ([is documented in the Azure API Docs](https://docs.microsoft.com/rest/api/sql/firewallrules/createorupdate)). | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **end_ip_address** | string | No  | Specifies the End IP Address associated with this Firewall Rule. Changing this forces a new resource to be created. -> **NOTE:** The Azure feature `Allow access to Azure services` can be enabled by setting `start_ip_address` and `end_ip_address` to `0.0.0.0` which ([is documented in the Azure API Docs](https://docs.microsoft.com/rest/api/sql/firewallrules/createorupdate)). In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the PostgreSQL Firewall Rule. | 

Additionally, all variables are provided as outputs.
