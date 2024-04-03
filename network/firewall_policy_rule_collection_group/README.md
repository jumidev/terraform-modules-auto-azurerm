# azurerm_firewall_policy_rule_collection_group



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/firewall_policy_rule_collection_group"   
}
inputs = {
   name = "The name which should be used for this Firewall Policy Rule Collection Group..."   
   # firewall_policy_id → set in component_inputs
   priority = "The priority of the Firewall Policy Rule Collection Group..."   
}
component_inputs = {
   firewall_policy_id = "path/to/firewall_policy_component:id"   
}
tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}
```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  The name which should be used for this Firewall Policy Rule Collection Group. Changing this forces a new Firewall Policy Rule Collection Group to be created. | 
| **firewall_policy_id** | string |  The ID of the Firewall Policy where the Firewall Policy Rule Collection Group should exist. Changing this forces a new Firewall Policy Rule Collection Group to be created. | 
| **priority** | string |  The priority of the Firewall Policy Rule Collection Group. The range is 100-65000. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **application_rule_collection** | [block](#application_rule_collection-block-structure) |  One or more `application_rule_collection` blocks. | 
| **nat_rule_collection** | [block](#nat_rule_collection-block-structure) |  One or more `nat_rule_collection` blocks. | 
| **network_rule_collection** | [block](#network_rule_collection-block-structure) |  One or more `network_rule_collection` blocks. | 

### `nat_rule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name which should be used for this rule. |
| `description` | string | No | - | The description which should be used for this rule. |
| `protocols` | list | Yes | - | Specifies a list of network protocols this rule applies to. Possible values are 'TCP', 'UDP'. |
| `source_addresses` | list | No | - | Specifies a list of source IP addresses (including CIDR, IP range and '*'). |
| `source_ip_groups` | list | No | - | Specifies a list of source IP groups. |
| `destination_address` | string | No | - | The destination IP address (including CIDR). |
| `destination_ports` | list | No | - | Specifies a list of destination ports. Only one destination port is supported in a NAT rule. |
| `translated_address` | string | No | - | Specifies the translated address. |
| `translated_fqdn` | string | No | - | Specifies the translated FQDN. ~> **NOTE:** Exactly one of 'translated_address' and 'translated_fqdn' should be set. |
| `translated_port` | string | Yes | - | Specifies the translated port. |

### `application_rule_collection` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name which should be used for this application rule collection. |
| `action` | string | Yes | - | The action to take for the application rules in this collection. Possible values are 'Allow' and 'Deny'. |
| `priority` | string | Yes | - | The priority of the application rule collection. The range is '100' - '65000'. |
| `rule` | [block](#application_rule-block-structure) | Yes | - | One or more 'application_rule' blocks. |

### `network_rule_collection` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name which should be used for this network rule collection. |
| `action` | string | Yes | - | The action to take for the network rules in this collection. Possible values are 'Allow' and 'Deny'. |
| `priority` | string | Yes | - | The priority of the network rule collection. The range is '100' - '65000'. |
| `rule` | [block](#network_rule-block-structure) | Yes | - | One or more 'network_rule' blocks. |

### `protocols` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Protocol type. Possible values are 'Http' and 'Https'. |
| `port` | number | Yes | - | Port number of the protocol. Range is 0-64000. |

### `nat_rule_collection` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name which should be used for this NAT rule collection. |
| `action` | string | Yes | - | The action to take for the NAT rules in this collection. Currently, the only possible value is 'Dnat'. |
| `priority` | string | Yes | - | The priority of the NAT rule collection. The range is '100' - '65000'. |
| `rule` | [block](#nat_rule-block-structure) | Yes | - | A 'nat_rule' block. |

### `network_rule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name which should be used for this rule. |
| `description` | string | No | - | The description which should be used for this rule. |
| `protocols` | list | Yes | - | Specifies a list of network protocols this rule applies to. Possible values are 'Any', 'TCP', 'UDP', 'ICMP'. |
| `destination_ports` | list | Yes | - | Specifies a list of destination ports. |
| `source_addresses` | list | No | - | Specifies a list of source IP addresses (including CIDR, IP range and '*'). |
| `source_ip_groups` | list | No | - | Specifies a list of source IP groups. |
| `destination_addresses` | list | No | - | Specifies a list of destination IP addresses (including CIDR, IP range and '*') or Service Tags. |
| `destination_ip_groups` | list | No | - | Specifies a list of destination IP groups. |
| `destination_fqdns` | list | No | - | Specifies a list of destination FQDNs. |

### `application_rule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name which should be used for this rule. |
| `description` | string | No | - | The description which should be used for this rule. |
| `protocols` | [block](#protocols-block-structure) | No | - | One or more 'protocols' blocks. |
| `http_headers` | list | No | - | Specifies a list of HTTP/HTTPS headers to insert. One or more 'http_headers' blocks. |
| `source_addresses` | list | No | - | Specifies a list of source IP addresses (including CIDR, IP range and '*'). |
| `source_ip_groups` | list | No | - | Specifies a list of source IP groups. |
| `destination_addresses` | list | No | - | Specifies a list of destination IP addresses (including CIDR, IP range and '*'). |
| `destination_urls` | list | No | - | Specifies a list of destination URLs for which policy should hold. Needs Premium SKU for Firewall Policy. Conflicts with 'destination_fqdns'. |
| `destination_fqdns` | list | No | - | Specifies a list of destination FQDNs. Conflicts with 'destination_urls'. |
| `destination_fqdn_tags` | list | No | - | Specifies a list of destination FQDN tags. |
| `terminate_tls` | string | No | - | Boolean specifying if TLS shall be terminated (true) or not (false). Must be 'true' when using 'destination_urls'. Needs Premium SKU for Firewall Policy. |
| `web_categories` | list | No | - | Specifies a list of web categories to which access is denied or allowed depending on the value of 'action' above. Needs Premium SKU for Firewall Policy. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **value** | string | No  | Specifies the value of the value. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Firewall Policy Rule Collection Group. | 

Additionally, all variables are provided as outputs.
