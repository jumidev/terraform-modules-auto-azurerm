# azurerm_postgresql_flexible_server_firewall_rule

Manages a PostgreSQL Flexible Server Firewall Rule.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for this PostgreSQL Flexible Server Firewall Rule. Changing this forces a new PostgreSQL Flexible Server Firewall Rule to be created. | 
| **var.server_id** | string | True | -  |  -  | The ID of the PostgreSQL Flexible Server from which to create this PostgreSQL Flexible Server Firewall Rule. Changing this forces a new PostgreSQL Flexible Server Firewall Rule to be created. | 
| **var.start_ip_address** | string | True | -  |  -  | The Start IP Address associated with this PostgreSQL Flexible Server Firewall Rule. | 
| **var.end_ip_address** | string | True | -  |  -  | The End IP Address associated with this PostgreSQL Flexible Server Firewall Rule. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **server_id** | string  | - | 
| **start_ip_address** | string  | - | 
| **end_ip_address** | string  | - | 
| **id** | string  | The ID of the PostgreSQL Flexible Server Firewall Rule. | 