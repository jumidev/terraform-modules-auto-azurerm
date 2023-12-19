# azurerm_postgresql_flexible_server_firewall_rule

Manages a PostgreSQL Flexible Server Firewall Rule.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "database/postgresql_flexible_server_firewall_rule"   
}

inputs = {
   name = "The name which should be used for this PostgreSQL Flexible Server Firewall Rule..."   
   # server_id → set in component_inputs
   start_ip_address = "The Start IP Address associated with this PostgreSQL Flexible Server Firewall Ru..."   
   end_ip_address = "The End IP Address associated with this PostgreSQL Flexible Server Firewall Rule..."   
}

component_inputs = {
   server_id = "path/to/postgresql_flexible_server_component:id"   
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
| **name** | string |  The name which should be used for this PostgreSQL Flexible Server Firewall Rule. Changing this forces a new PostgreSQL Flexible Server Firewall Rule to be created. | 
| **server_id** | string |  The ID of the PostgreSQL Flexible Server from which to create this PostgreSQL Flexible Server Firewall Rule. Changing this forces a new PostgreSQL Flexible Server Firewall Rule to be created. | 
| **start_ip_address** | string |  The Start IP Address associated with this PostgreSQL Flexible Server Firewall Rule. | 
| **end_ip_address** | string |  The End IP Address associated with this PostgreSQL Flexible Server Firewall Rule. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the PostgreSQL Flexible Server Firewall Rule. | 

Additionally, all variables are provided as outputs.
