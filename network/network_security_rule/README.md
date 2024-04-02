# azurerm_network_security_rule



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/network_security_rule"   
}

inputs = {
   name = "The name of the security rule"   
   resource_group_name = "${resource_group}"   
   # network_security_group_name → set in component_inputs
   protocol = "Network protocol this rule applies to"   
}

component_inputs = {
   network_security_group_name = "path/to/network_security_group_component:name"   
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
| **name** | string |  -  |  The name of the security rule. This needs to be unique across all Rules in the Network Security Group. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  The name of the resource group in which to create the Network Security Rule. Changing this forces a new resource to be created. | 
| **network_security_group_name** | string |  -  |  The name of the Network Security Group that we want to attach the rule to. Changing this forces a new resource to be created. | 
| **protocol** | string |  `Tcp`, `Udp`, `Icmp`, `Esp`, `Ah`, `*`  |  Network protocol this rule applies to. Possible values include `Tcp`, `Udp`, `Icmp`, `Esp`, `Ah` or `*` (which matches all). | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **description** | string |  A description for this rule. Restricted to 140 characters. | 
| **source_port_range** | string |  Source Port or Range. Integer or range between `0` and `65535` or `*` to match any. This is required if `source_port_ranges` is not specified. | 
| **source_port_ranges** | string |  List of source ports or port ranges. This is required if `source_port_range` is not specified. | 
| **destination_port_range** | string |  Destination Port or Range. Integer or range between `0` and `65535` or `*` to match any. This is required if `destination_port_ranges` is not specified. | 
| **destination_port_ranges** | string |  List of destination ports or port ranges. This is required if `destination_port_range` is not specified. | 
| **source_address_prefix** | string |  CIDR or source IP range or * to match any IP. Tags such as `VirtualNetwork`, `AzureLoadBalancer` and `Internet` can also be used. This is required if `source_address_prefixes` is not specified. | 
| **source_address_prefixes** | string |  List of source address prefixes. Tags may not be used. This is required if `source_address_prefix` is not specified. | 
| **source_application_security_group_ids** | list |  A List of source Application Security Group IDs | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **direction** | string | No  | The direction specifies if rule will be evaluated on incoming or outgoing traffic. Possible values are `Inbound` and `Outbound`. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Network Security Rule. | 

Additionally, all variables are provided as outputs.
