# azurerm_postgresql_flexible_server_firewall_rule

Manages a PostgreSQL Flexible Server Firewall Rule.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "database/postgresql_flexible_server_firewall_rule" 
}

inputs = {
   name = "name of postgresql_flexible_server_firewall_rule" 
   server_id = "server_id of postgresql_flexible_server_firewall_rule" 
   start_ip_address = "start_ip_address of postgresql_flexible_server_firewall_rule" 
   end_ip_address = "end_ip_address of postgresql_flexible_server_firewall_rule" 
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
| **var.name** | string |  The name which should be used for this PostgreSQL Flexible Server Firewall Rule. Changing this forces a new PostgreSQL Flexible Server Firewall Rule to be created. | 
| **var.server_id** | string |  The ID of the PostgreSQL Flexible Server from which to create this PostgreSQL Flexible Server Firewall Rule. Changing this forces a new PostgreSQL Flexible Server Firewall Rule to be created. | 
| **var.start_ip_address** | string |  The Start IP Address associated with this PostgreSQL Flexible Server Firewall Rule. | 
| **var.end_ip_address** | string |  The End IP Address associated with this PostgreSQL Flexible Server Firewall Rule. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the PostgreSQL Flexible Server Firewall Rule. | 

Additionally, all variables are provided as outputs.
