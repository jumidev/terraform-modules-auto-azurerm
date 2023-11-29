# azurerm_network_manager_admin_rule

Manages a Network Manager Admin Rule.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name which should be used for this Network Manager Admin Rule. Changing this forces a new Network Manager Admin Rule to be created. | 
| **admin_rule_collection_id** | string | True | -  |  -  | Specifies the ID of the Network Manager Admin Rule Collection. Changing this forces a new Network Manager Admin Rule to be created. | 
| **action** | string | True | -  |  `Allow`, `AlwaysAllow`, `Deny`  | Specifies the action allowed for this Network Manager Admin Rule. Possible values are `Allow`, `AlwaysAllow`, and `Deny`. | 
| **direction** | string | True | -  |  `Inbound`, `Outbound`  | Indicates if the traffic matched against the rule in inbound or outbound. Possible values are `Inbound` and `Outbound`. | 
| **priority** | string | True | -  |  `1`, `4096`  | The priority of the rule. Possible values are integers between `1` and `4096`. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule. | 
| **protocol** | string | True | -  |  `Ah`, `Any`, `Esp`, `Icmp`, `Tcp`, `Udp`  | Specifies which network protocol this Network Manager Admin Rule applies to. Possible values are `Ah`, `Any`, `Esp`, `Icmp`, `Tcp`, and `Udp`. | 
| **description** | string | False | -  |  -  | A description of the Network Manager Admin Rule. | 
| **destination_port_ranges** | list | False | -  |  -  | A list of string specifies the destination port ranges. Specify one or more single port number or port ranges such as `1024-65535`. Use `*` to specify any port. | 
| **destination** | block | False | -  |  -  | One or more `destination` blocks. | 
| **source_port_ranges** | list | False | -  |  -  | A list of string specifies the source port ranges. Specify one or more single port number or port ranges such as `1024-65535`. Use `*` to specify any port. | 
| **source** | block | False | -  |  -  | One or more `source` blocks. | 

