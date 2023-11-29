# azurerm_mariadb_firewall_rule

Manages a Firewall Rule for a MariaDB Server

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the MariaDB Firewall Rule. Changing this forces a new resource to be created. | 
| **var.server_name** | string | True | Specifies the name of the MariaDB Server. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group in which the MariaDB Server exists. Changing this forces a new resource to be created. | 
| **var.start_ip_address** | string | True | Specifies the Start IP Address associated with this Firewall Rule. | 
| **var.end_ip_address** | string | True | Specifies the End IP Address associated with this Firewall Rule. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **server_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **start_ip_address** | string  | - | 
| **end_ip_address** | string  | - | 
| **id** | string  | The ID of the MariaDB Firewall Rule. | 