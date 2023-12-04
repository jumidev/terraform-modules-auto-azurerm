# azurerm_firewall_policy_rule_collection_group

Manages a Firewall Policy Rule Collection Group.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/firewall_policy_rule_collection_group" 
}

inputs = {
   name = "name of firewall_policy_rule_collection_group" 
   firewall_policy_id = "firewall_policy_id of firewall_policy_rule_collection_group" 
   priority = "priority of firewall_policy_rule_collection_group" 
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

### `network_rule_collection` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `action` | string | Yes | - | The action to take for the network rules in this collection. Possible values are 'Allow' and 'Deny'. |
| `priority` | string | Yes | - | The priority of the network rule collection. The range is '100' - '65000'. |
| `rule` | [block](#network_rule_collection-block-structure) | Yes | - | One or more 'network_rule' blocks. |

### `network_rule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `description` | string | No | - | The description which should be used for this rule. |
| `protocols` | string | Yes | - | Specifies a list of network protocols this rule applies to. Possible values are 'Any', 'TCP', 'UDP', 'ICMP'. |
| `destination_ports` | string | Yes | - | Specifies a list of destination ports. |
| `source_addresses` | string | No | - | Specifies a list of source IP addresses (including CIDR, IP range and '*'). |
| `source_ip_groups` | string | No | - | Specifies a list of source IP groups. |
| `destination_addresses` | string | No | - | Specifies a list of destination IP addresses (including CIDR, IP range and '*') or Service Tags. |
| `destination_ip_groups` | string | No | - | Specifies a list of destination IP groups. |
| `destination_fqdns` | string | No | - | Specifies a list of destination FQDNs. |

### `nat_rule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `description` | string | No | - | The description which should be used for this rule. |
| `protocols` | string | Yes | - | Specifies a list of network protocols this rule applies to. Possible values are 'TCP', 'UDP'. |
| `source_addresses` | string | No | - | Specifies a list of source IP addresses (including CIDR, IP range and '*'). |
| `source_ip_groups` | string | No | - | Specifies a list of source IP groups. |
| `destination_address` | string | No | - | The destination IP address (including CIDR). |
| `destination_ports` | string | No | - | Specifies a list of destination ports. Only one destination port is supported in a NAT rule. |
| `translated_address` | string | No | - | Specifies the translated address. |
| `translated_fqdn` | string | No | - | Specifies the translated FQDN. |
| `translated_port` | string | Yes | - | Specifies the translated port. |

### `protocols` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Protocol type. Possible values are 'Http' and 'Https'. |
| `port` | int | Yes | - | Port number of the protocol. Range is 0-64000. |

### `http_headers` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `value` | string | Yes | - | Specifies the value of the value. |

### `application_rule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `description` | string | No | - | The description which should be used for this rule. |
| `protocols` | [block](#application_rule-block-structure) | No | - | One or more 'protocols' blocks. |
| `http_headers` | [block](#application_rule-block-structure) | Yes | - | Specifies a list of HTTP/HTTPS headers to insert. One or more 'http_headers' blocks. |
| `source_addresses` | string | No | - | Specifies a list of source IP addresses (including CIDR, IP range and '*'). |
| `source_ip_groups` | string | No | - | Specifies a list of source IP groups. |
| `destination_addresses` | string | No | - | Specifies a list of destination IP addresses (including CIDR, IP range and '*'). |
| `destination_urls` | string | No | - | Specifies a list of destination URLs for which policy should hold. Needs Premium SKU for Firewall Policy. Conflicts with 'destination_fqdns'. |
| `destination_fqdns` | string | No | - | Specifies a list of destination FQDNs. Conflicts with 'destination_urls'. |
| `destination_fqdn_tags` | map | No | - | Specifies a list of destination FQDN tags. |
| `terminate_tls` | string | No | - | Boolean specifying if TLS shall be terminated (true) or not (false). Must be 'true' when using 'destination_urls'. Needs Premium SKU for Firewall Policy. |
| `web_categories` | string | No | - | Specifies a list of web categories to which access is denied or allowed depending on the value of 'action' above. Needs Premium SKU for Firewall Policy. |

### `application_rule_collection` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `action` | string | Yes | - | The action to take for the application rules in this collection. Possible values are 'Allow' and 'Deny'. |
| `priority` | string | Yes | - | The priority of the application rule collection. The range is '100' - '65000'. |
| `rule` | [block](#application_rule_collection-block-structure) | Yes | - | One or more 'application_rule' blocks. |

### `nat_rule_collection` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `action` | string | Yes | - | The action to take for the NAT rules in this collection. Currently, the only possible value is 'Dnat'. |
| `priority` | string | Yes | - | The priority of the NAT rule collection. The range is '100' - '65000'. |
| `rule` | [block](#nat_rule_collection-block-structure) | Yes | - | A 'nat_rule' block. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Firewall Policy Rule Collection Group. | 

Additionally, all variables are provided as outputs.
