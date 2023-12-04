# azurerm_network_manager_admin_rule

Manages a Network Manager Admin Rule.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/network_manager_admin_rule" 
}

inputs = {
   name = "name of network_manager_admin_rule" 
   admin_rule_collection_id = "admin_rule_collection_id of network_manager_admin_rule" 
   action = "action of network_manager_admin_rule" 
   direction = "direction of network_manager_admin_rule" 
   priority = "priority of network_manager_admin_rule" 
   protocol = "protocol of network_manager_admin_rule" 
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
| **name** | string |  -  |  Specifies the name which should be used for this Network Manager Admin Rule. Changing this forces a new Network Manager Admin Rule to be created. | 
| **admin_rule_collection_id** | string |  -  |  Specifies the ID of the Network Manager Admin Rule Collection. Changing this forces a new Network Manager Admin Rule to be created. | 
| **action** | string |  `Allow`, `AlwaysAllow`, `Deny`  |  Specifies the action allowed for this Network Manager Admin Rule. Possible values are `Allow`, `AlwaysAllow`, and `Deny`. | 
| **direction** | string |  `Inbound`, `Outbound`  |  Indicates if the traffic matched against the rule in inbound or outbound. Possible values are `Inbound` and `Outbound`. | 
| **priority** | string |  `1`, `4096`  |  The priority of the rule. Possible values are integers between `1` and `4096`. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule. | 
| **protocol** | string |  `Ah`, `Any`, `Esp`, `Icmp`, `Tcp`, `Udp`  |  Specifies which network protocol this Network Manager Admin Rule applies to. Possible values are `Ah`, `Any`, `Esp`, `Icmp`, `Tcp`, and `Udp`. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **description** | string |  A description of the Network Manager Admin Rule. | 
| **destination_port_ranges** | list |  A list of string specifies the destination port ranges. Specify one or more single port number or port ranges such as `1024-65535`. Use `*` to specify any port. | 
| **destination** | [block](#destination-block-structure) |  One or more `destination` blocks. | 
| **source_port_ranges** | list |  A list of string specifies the source port ranges. Specify one or more single port number or port ranges such as `1024-65535`. Use `*` to specify any port. | 
| **source** | [block](#source-block-structure) |  One or more `source` blocks. | 

### `source` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `address_prefix` | string | Yes | - | Specifies the address prefix. |
| `address_prefix_type` | string | Yes | - | Specifies the address prefix type. Possible values are 'IPPrefix' and 'ServiceTag'. For more information, please see [this document](https://learn.microsoft.com/en-us/azure/virtual-network-manager/concept-security-admins#source-and-destination-types). |

### `destination` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `address_prefix` | string | Yes | - | Specifies the address prefix. |
| `address_prefix_type` | string | Yes | - | Specifies the address prefix type. Possible values are 'IPPrefix' and 'ServiceTag'. For more information, please see [this document](https://learn.microsoft.com/en-us/azure/virtual-network-manager/concept-security-admins#source-and-destination-types). |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Network Manager Admin Rule. | 

Additionally, all variables are provided as outputs.
