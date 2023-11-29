# azurerm_network_manager_admin_rule

Manages a Network Manager Admin Rule.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name which should be used for this Network Manager Admin Rule. Changing this forces a new Network Manager Admin Rule to be created. | 
| **var.admin_rule_collection_id** | string | True | -  |  -  | Specifies the ID of the Network Manager Admin Rule Collection. Changing this forces a new Network Manager Admin Rule to be created. | 
| **var.action** | string | True | -  |  `Allow`, `AlwaysAllow`, `Deny`  | Specifies the action allowed for this Network Manager Admin Rule. Possible values are `Allow`, `AlwaysAllow`, and `Deny`. | 
| **var.direction** | string | True | -  |  `Inbound`, `Outbound`  | Indicates if the traffic matched against the rule in inbound or outbound. Possible values are `Inbound` and `Outbound`. | 
| **var.priority** | string | True | -  |  `1`, `4096`  | The priority of the rule. Possible values are integers between `1` and `4096`. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule. | 
| **var.protocol** | string | True | -  |  `Ah`, `Any`, `Esp`, `Icmp`, `Tcp`, `Udp`  | Specifies which network protocol this Network Manager Admin Rule applies to. Possible values are `Ah`, `Any`, `Esp`, `Icmp`, `Tcp`, and `Udp`. | 
| **var.description** | string | False | -  |  -  | A description of the Network Manager Admin Rule. | 
| **var.destination_port_ranges** | list | False | -  |  -  | A list of string specifies the destination port ranges. Specify one or more single port number or port ranges such as `1024-65535`. Use `*` to specify any port. | 
| **var.destination** | block | False | -  |  -  | One or more `destination` blocks. | 
| **var.source_port_ranges** | list | False | -  |  -  | A list of string specifies the source port ranges. Specify one or more single port number or port ranges such as `1024-65535`. Use `*` to specify any port. | 
| **var.source** | block | False | -  |  -  | One or more `source` blocks. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **admin_rule_collection_id** | string  | - | 
| **action** | string  | - | 
| **direction** | string  | - | 
| **priority** | string  | - | 
| **protocol** | string  | - | 
| **description** | string  | - | 
| **destination_port_ranges** | list  | - | 
| **destination** | block  | - | 
| **source_port_ranges** | list  | - | 
| **source** | block  | - | 
| **id** | string  | The ID of the Network Manager Admin Rule. | 