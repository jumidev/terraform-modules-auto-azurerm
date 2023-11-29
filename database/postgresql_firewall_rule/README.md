# azurerm_postgresql_firewall_rule

Manages a Firewall Rule for a PostgreSQL Server

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the PostgreSQL Firewall Rule. Changing this forces a new resource to be created. | 
| **server_name** | string | True | -  |  -  | Specifies the name of the PostgreSQL Server. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which the PostgreSQL Server exists. Changing this forces a new resource to be created. | 
| **start_ip_address** | string | True | -  |  -  | Specifies the Start IP Address associated with this Firewall Rule. Changing this forces a new resource to be created. | 
| **end_ip_address** | string | True | -  |  -  | Specifies the End IP Address associated with this Firewall Rule. Changing this forces a new resource to be created. | 

