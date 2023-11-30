# azurerm_network_security_rule

Manages a Network Security Rule.~> **NOTE on Network Security Groups and Network Security Rules:** Terraform currentlyprovides both a standalone [Network Security Rule resource](network_security_rule.html), and allows for Network Security Rules to be defined in-line within the [Network Security Group resource](network_security_group.html).At this time you cannot use a Network Security Group with in-line Network Security Rules in conjunction with any Network Security Rule resources. Doing so will cause a conflict of rule settings and will overwrite rules.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/network_security_rule" 
}

inputs = {
   name = "name of network_security_rule" 
   resource_group_name = "${resource_group}" 
   network_security_group_name = "network_security_group_name of network_security_rule" 
   protocol = "protocol of network_security_rule" 
   access = "access of network_security_rule" 
   priority = "priority of network_security_rule" 
   direction = "direction of network_security_rule" 
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
| **var.name** | string  -  |  The name of the security rule. This needs to be unique across all Rules in the Network Security Group. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string  -  |  The name of the resource group in which to create the Network Security Rule. Changing this forces a new resource to be created. | 
| **var.network_security_group_name** | string  -  |  The name of the Network Security Group that we want to attach the rule to. Changing this forces a new resource to be created. | 
| **var.protocol** | string  `Tcp`, `Udp`, `Icmp`, `Esp`, `Ah`, `*`  |  Network protocol this rule applies to. Possible values include `Tcp`, `Udp`, `Icmp`, `Esp`, `Ah` or `*` (which matches all). | 
| **var.access** | string  `Allow`, `Deny`  |  Specifies whether network traffic is allowed or denied. Possible values are `Allow` and `Deny`. | 
| **var.priority** | string  -  |  Specifies the priority of the rule. The value can be between 100 and 4096. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule. | 
| **var.direction** | string  `Inbound`, `Outbound`  |  The direction specifies if rule will be evaluated on incoming or outgoing traffic. Possible values are `Inbound` and `Outbound`. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.description** | string  A description for this rule. Restricted to 140 characters. | 
| **var.source_port_range** | string  Source Port or Range. Integer or range between `0` and `65535` or `*` to match any. This is required if `source_port_ranges` is not specified. | 
| **var.source_port_ranges** | string  List of source ports or port ranges. This is required if `source_port_range` is not specified. | 
| **var.destination_port_range** | string  Destination Port or Range. Integer or range between `0` and `65535` or `*` to match any. This is required if `destination_port_ranges` is not specified. | 
| **var.destination_port_ranges** | string  List of destination ports or port ranges. This is required if `destination_port_range` is not specified. | 
| **var.source_address_prefix** | string  CIDR or source IP range or * to match any IP. Tags such as `VirtualNetwork`, `AzureLoadBalancer` and `Internet` can also be used. This is required if `source_address_prefixes` is not specified. | 
| **var.source_address_prefixes** | string  List of source address prefixes. Tags may not be used. This is required if `source_address_prefix` is not specified. | 
| **var.source_application_security_group_ids** | list  A List of source Application Security Group IDs | 
| **var.destination_address_prefix** | string  CIDR or destination IP range or * to match any IP. Tags such as `VirtualNetwork`, `AzureLoadBalancer` and `Internet` can also be used. Besides, it also supports all available Service Tags like ‘Sql.WestEurope‘, ‘Storage.EastUS‘, etc. You can list the available service tags with the CLI: ```shell az network list-service-tags --location westcentralus```. For further information please see [Azure CLI - az network list-service-tags](https://docs.microsoft.com/cli/azure/network?view=azure-cli-latest#az-network-list-service-tags). This is required if `destination_address_prefixes` is not specified. | 
| **var.destination_address_prefixes** | string  List of destination address prefixes. Tags may not be used. This is required if `destination_address_prefix` is not specified. | 
| **var.destination_application_security_group_ids** | list  A List of destination Application Security Group IDs | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Network Security Rule. | 

Additionally, all variables are provided as outputs.
