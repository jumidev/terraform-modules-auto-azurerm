# azurerm_network_security_group

Manages a network security group that contains a list of network security rules.  Network security groups enable inbound or outbound traffic to be enabled or denied.~> **NOTE on Network Security Groups and Network Security Rules:** Terraform currentlyprovides both a standalone [Network Security Rule resource](network_security_rule.html), and allows for Network Security Rules to be defined in-line within the [Network Security Group resource](network_security_group.html).At this time you cannot use a Network Security Group with in-line Network Security Rules in conjunction with any Network Security Rule resources. Doing so will cause a conflict of rule settings and will overwrite rules.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/network_security_group"   
}

inputs = {
   name = "Specifies the name of the network security group"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```
## Optional associated resources


### `subnet_id` 

- If set to a valid `azurerm_subnet` `id`, makes a **azurerm_subnet_network_security_group_association** - Associates a [Network Security Group](network_security_group.html) with a [Subnet](subnet.html) within a [Virtual Network](virtual_network.html).

Example component snippet:

```hcl
tfstate_inputs = {
   subnet_id = "path/to/subnet_component:id"
}
```

### `network_interface_id` 

- If set to a valid `azurerm_network_interface` `id`, makes a **azurerm_network_interface_security_group_association** - Manages the association between a Network Interface and a Network Security Group.

Example component snippet:

```hcl
tfstate_inputs = {
   network_interface_id = "path/to/network_interface_component:id"
}
```


## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  Specifies the name of the network security group. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which to create the network security group. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **security_rule** | [block](#security_rule-block-structure) |  List of `security_rule` objects representing security rules, as defined below. | 
| **tags** | map |  A mapping of tags to assign to the resource. | 

### `security_rule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the security rule. |
| `description` | string | No | - | A description for this rule. Restricted to 140 characters. |
| `protocol` | string | Yes | * | Network protocol this rule applies to. Possible values include 'Tcp', 'Udp', 'Icmp', 'Esp', 'Ah' or '*' (which matches all). |
| `source_port_range` | string | No | * | Source Port or Range. Integer or range between '0' and '65535' or '*' to match any. This is required if 'source_port_ranges' is not specified. |
| `destination_port_range` | string | No | - | Destination Port or Range. Integer or range between '0' and '65535' or '*' to match any. This is required if 'destination_port_ranges' is not specified. |
| `source_address_prefix` | string | No | * | CIDR or source IP range or * to match any IP. Tags such as 'VirtualNetwork', 'AzureLoadBalancer' and 'Internet' can also be used. This is required if 'source_address_prefixes' is not specified. |
| `source_application_security_group_ids` | list | No | - | A List of source Application Security Group IDs |
| `destination_address_prefix` | string | No | - | CIDR or destination IP range or * to match any IP. Tags such as 'VirtualNetwork', 'AzureLoadBalancer' and 'Internet' can also be used. This is required if 'destination_address_prefixes' is not specified. |
| `destination_application_security_group_ids` | list | No | - | A List of destination Application Security Group IDs |
| `access` | string | Yes | Allow | Specifies whether network traffic is allowed or denied. Possible values are 'Allow' and 'Deny'. |
| `priority` | string | Yes | - | Specifies the priority of the rule. The value can be between 100 and 4096. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule. |
| `direction` | string | Yes | Inbound | The direction specifies if rule will be evaluated on incoming or outgoing traffic. Possible values are 'Inbound' and 'Outbound'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Network Security Group. | 

Additionally, all variables are provided as outputs.
