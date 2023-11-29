# azurerm_postgresql_flexible_server_firewall_rule

Manages a PostgreSQL Flexible Server Firewall Rule.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this PostgreSQL Flexible Server Firewall Rule. Changing this forces a new PostgreSQL Flexible Server Firewall Rule to be created. | 
| **server_id** | string | True | -  |  -  | The ID of the PostgreSQL Flexible Server from which to create this PostgreSQL Flexible Server Firewall Rule. Changing this forces a new PostgreSQL Flexible Server Firewall Rule to be created. | 
| **start_ip_address** | string | True | -  |  -  | The Start IP Address associated with this PostgreSQL Flexible Server Firewall Rule. | 
| **end_ip_address** | string | True | -  |  -  | The End IP Address associated with this PostgreSQL Flexible Server Firewall Rule. | 

