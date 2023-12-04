# azurerm_mysql_firewall_rule

Manages a Firewall Rule for a MySQL Server.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "database/mysql_firewall_rule" 
}

inputs = {
   name = "name of mysql_firewall_rule" 
   # server_name → set in tfstate_inputs
   resource_group_name = "${resource_group}" 
   start_ip_address = "start_ip_address of mysql_firewall_rule" 
   end_ip_address = "end_ip_address of mysql_firewall_rule" 
}

tfstate_inputs = {
   server_name = "path/to/mysql_server_component:name" 
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
| **name** | string |  Specifies the name of the MySQL Firewall Rule. Changing this forces a new resource to be created. | 
| **server_name** | string |  Specifies the name of the MySQL Server. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which the MySQL Server exists. Changing this forces a new resource to be created. | 
| **start_ip_address** | string |  Specifies the Start IP Address associated with this Firewall Rule. | 
| **end_ip_address** | string |  Specifies the End IP Address associated with this Firewall Rule. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the MySQL Firewall Rule. | 

Additionally, all variables are provided as outputs.
