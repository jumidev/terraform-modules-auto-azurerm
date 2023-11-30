# azurerm_firewall_policy

Manages a Firewall Policy.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/firewall_policy" 
}

inputs = {
   location = "${location}" 
   name = "name of firewall_policy" 
   resource_group_name = "${resource_group}" 
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
| **var.location** | string |  The Azure Region where the Firewall Policy should exist. Changing this forces a new Firewall Policy to be created. | 
| **var.name** | string |  The name which should be used for this Firewall Policy. Changing this forces a new Firewall Policy to be created. | 
| **var.resource_group_name** | string |  The name of the Resource Group where the Firewall Policy should exist. Changing this forces a new Firewall Policy to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **var.base_policy_id** | string |  -  |  -  |  The ID of the base Firewall Policy. | 
| **var.dns** | [block](#dns-block-structure) |  -  |  -  |  A `dns` block. | 
| **var.identity** | [block](#identity-block-structure) |  -  |  -  |  An `identity` block. | 
| **var.insights** | [block](#insights-block-structure) |  -  |  -  |  An `insights` block. | 
| **var.intrusion_detection** | [block](#intrusion_detection-block-structure) |  -  |  -  |  A `intrusion_detection` block. | 
| **var.private_ip_ranges** | list |  -  |  -  |  A list of private IP ranges to which traffic will not be SNAT. | 
| **var.auto_learn_private_ranges_enabled** | bool |  -  |  -  |  Whether enable auto learn private ip range. | 
| **var.sku** | string |  -  |  `Standard`, `Premium`, `Basic`  |  The SKU Tier of the Firewall Policy. Possible values are `Standard`, `Premium` and `Basic`. Changing this forces a new Firewall Policy to be created. | 
| **var.tags** | map |  -  |  -  |  A mapping of tags which should be assigned to the Firewall Policy. | 
| **var.threat_intelligence_allowlist** | [block](#threat_intelligence_allowlist-block-structure) |  -  |  -  |  A `threat_intelligence_allowlist` block. | 
| **var.threat_intelligence_mode** | string |  `Alert`  |  `Alert`, `Deny`, `Off`  |  The operation mode for Threat Intelligence. Possible values are `Alert`, `Deny` and `Off`. Defaults to `Alert`. | 
| **var.tls_certificate** | [block](#tls_certificate-block-structure) |  -  |  -  |  A `tls_certificate` block. | 
| **var.sql_redirect_allowed** | bool |  -  |  -  |  Whether SQL Redirect traffic filtering is allowed. Enabling this flag requires no rule using ports between `11000`-`11999`. | 
| **var.explicit_proxy** | [block](#explicit_proxy-block-structure) |  -  |  -  |  A `explicit_proxy` block. | 

### `dns` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `proxy_enabled` | bool | No | False | Whether to enable DNS proxy on Firewalls attached to this Firewall Policy? Defaults to 'false'. |
| `servers` | list | No | - | A list of custom DNS servers' IP addresses. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Firewall Policy. Only possible value is 'UserAssigned'. |
| `identity_ids` | string | No | - | Specifies a list of User Assigned Managed Identity IDs to be assigned to this Firewall Policy. |

### `insights` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enabled` | bool | Yes | - | Whether the insights functionality is enabled for this Firewall Policy. |
| `default_log_analytics_workspace_id` | string | Yes | - | The ID of the default Log Analytics Workspace that the Firewalls associated with this Firewall Policy will send their logs to, when there is no location matches in the 'log_analytics_workspace'. |
| `retention_in_days` | int | No | - | The log retention period in days. |
| `log_analytics_workspace` | block | No | - | A list of 'log_analytics_workspace' block. |

### `intrusion_detection` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `mode` | string | No | - | In which mode you want to run intrusion detection: 'Off', 'Alert' or 'Deny'. |
| `signature_overrides` | block | No | - | One or more 'signature_overrides' blocks. |
| `traffic_bypass` | block | No | - | One or more 'traffic_bypass' blocks. |
| `private_ranges` | list | No | - | A list of Private IP address ranges to identify traffic direction. By default, only ranges defined by IANA RFC 1918 are considered private IP addresses. |

### `threat_intelligence_allowlist` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `fqdns` | list | No | - | A list of FQDNs that will be skipped for threat detection. |
| `ip_addresses` | list | No | - | A list of IP addresses or CIDR ranges that will be skipped for threat detection. |

### `tls_certificate` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `key_vault_secret_id` | string | Yes | - | The ID of the Key Vault, where the secret or certificate is stored. |

### `explicit_proxy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enabled` | bool | No | - | Whether the explicit proxy is enabled for this Firewall Policy. |
| `http_port` | string | No | - | The port number for explicit http protocol. |
| `https_port` | string | No | - | The port number for explicit proxy https protocol. |
| `enable_pac_file` | bool | No | - | Whether the pac file port and url need to be provided. |
| `pac_file_port` | string | No | - | Specifies a port number for firewall to serve PAC file. |
| `pac_file` | string | No | - | Specifies a SAS URL for PAC file. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Firewall Policy. | 
| **child_policies** | list | No  | A list of reference to child Firewall Policies of this Firewall Policy. | 
| **firewalls** | list | No  | A list of references to Azure Firewalls that this Firewall Policy is associated with. | 
| **rule_collection_groups** | list | No  | A list of references to Firewall Policy Rule Collection Groups that belongs to this Firewall Policy. | 

Additionally, all variables are provided as outputs.
