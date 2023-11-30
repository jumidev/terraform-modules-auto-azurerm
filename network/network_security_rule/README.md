# azurerm_network_security_rule

Manages a Network Security Rule.~> **NOTE on Network Security Groups and Network Security Rules:** Terraform currentlyprovides both a standalone [Network Security Rule resource](network_security_rule.html), and allows for Network Security Rules to be defined in-line within the [Network Security Group resource](network_security_group.html).At this time you cannot use a Network Security Group with in-line Network Security Rules in conjunction with any Network Security Rule resources. Doing so will cause a conflict of rule settings and will overwrite rules.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name of the security rule. This needs to be unique across all Rules in the Network Security Group. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the resource group in which to create the Network Security Rule. Changing this forces a new resource to be created. | 
| **var.network_security_group_name** | string | True | -  |  The name of the Network Security Group that we want to attach the rule to. Changing this forces a new resource to be created. | 
| **var.description** | string | False | -  |  A description for this rule. Restricted to 140 characters. | 
| **var.protocol** | string | True | `Tcp`, `Udp`, `Icmp`, `Esp`, `Ah`, `*`  |  Network protocol this rule applies to. Possible values include `Tcp`, `Udp`, `Icmp`, `Esp`, `Ah` or `*` (which matches all). | 
| **var.source_port_range** | string | False | -  |  Source Port or Range. Integer or range between `0` and `65535` or `*` to match any. This is required if `source_port_ranges` is not specified. | 
| **var.source_port_ranges** | string | False | -  |  List of source ports or port ranges. This is required if `source_port_range` is not specified. | 
| **var.destination_port_range** | string | False | -  |  Destination Port or Range. Integer or range between `0` and `65535` or `*` to match any. This is required if `destination_port_ranges` is not specified. | 
| **var.destination_port_ranges** | string | False | -  |  List of destination ports or port ranges. This is required if `destination_port_range` is not specified. | 
| **var.source_address_prefix** | string | False | -  |  CIDR or source IP range or * to match any IP. Tags such as `VirtualNetwork`, `AzureLoadBalancer` and `Internet` can also be used. This is required if `source_address_prefixes` is not specified. | 
| **var.source_address_prefixes** | string | False | -  |  List of source address prefixes. Tags may not be used. This is required if `source_address_prefix` is not specified. | 
| **var.source_application_security_group_ids** | list | False | -  |  A List of source Application Security Group IDs | 
| **var.destination_address_prefix** | string | False | -  |  CIDR or destination IP range or * to match any IP. Tags such as `VirtualNetwork`, `AzureLoadBalancer` and `Internet` can also be used. Besides, it also supports all available Service Tags like ‘Sql.WestEurope‘, ‘Storage.EastUS‘, etc. You can list the available service tags with the CLI: ```shell az network list-service-tags --location westcentralus```. For further information please see [Azure CLI - az network list-service-tags](https://docs.microsoft.com/cli/azure/network?view=azure-cli-latest#az-network-list-service-tags). This is required if `destination_address_prefixes` is not specified. | 
| **var.destination_address_prefixes** | string | False | -  |  List of destination address prefixes. Tags may not be used. This is required if `destination_address_prefix` is not specified. | 
| **var.destination_application_security_group_ids** | list | False | -  |  A List of destination Application Security Group IDs | 
| **var.access** | string | True | `Allow`, `Deny`  |  Specifies whether network traffic is allowed or denied. Possible values are `Allow` and `Deny`. | 
| **var.priority** | string | True | -  |  Specifies the priority of the rule. The value can be between 100 and 4096. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule. | 
| **var.direction** | string | True | `Inbound`, `Outbound`  |  The direction specifies if rule will be evaluated on incoming or outgoing traffic. Possible values are `Inbound` and `Outbound`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **network_security_group_name** | string  | - | 
| **description** | string  | - | 
| **protocol** | string  | - | 
| **source_port_range** | string  | - | 
| **source_port_ranges** | string  | - | 
| **destination_port_range** | string  | - | 
| **destination_port_ranges** | string  | - | 
| **source_address_prefix** | string  | - | 
| **source_address_prefixes** | string  | - | 
| **source_application_security_group_ids** | list  | - | 
| **destination_address_prefix** | string  | - | 
| **destination_address_prefixes** | string  | - | 
| **destination_application_security_group_ids** | list  | - | 
| **access** | string  | - | 
| **priority** | string  | - | 
| **direction** | string  | - | 
| **id** | string  | The ID of the Network Security Rule. | 

## Example minimal hclt

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