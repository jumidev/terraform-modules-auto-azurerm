# azurerm_firewall_policy

Manages a Firewall Policy.

## Example minimal component.hclt

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

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.location** | string | True | -  |  -  |  The Azure Region where the Firewall Policy should exist. Changing this forces a new Firewall Policy to be created. | 
| **var.name** | string | True | -  |  -  |  The name which should be used for this Firewall Policy. Changing this forces a new Firewall Policy to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the Resource Group where the Firewall Policy should exist. Changing this forces a new Firewall Policy to be created. | 
| **var.base_policy_id** | string | False | -  |  -  |  The ID of the base Firewall Policy. | 
| **var.dns** | block | False | -  |  -  |  A `dns` block. | 
| **var.identity** | block | False | -  |  -  |  An `identity` block. | 
| **var.insights** | block | False | -  |  -  |  An `insights` block. | 
| **var.intrusion_detection** | block | False | -  |  -  |  A `intrusion_detection` block. | 
| **var.private_ip_ranges** | list | False | -  |  -  |  A list of private IP ranges to which traffic will not be SNAT. | 
| **var.auto_learn_private_ranges_enabled** | bool | False | -  |  -  |  Whether enable auto learn private ip range. | 
| **var.sku** | string | False | -  |  `Standard`, `Premium`, `Basic`  |  The SKU Tier of the Firewall Policy. Possible values are `Standard`, `Premium` and `Basic`. Changing this forces a new Firewall Policy to be created. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags which should be assigned to the Firewall Policy. | 
| **var.threat_intelligence_allowlist** | block | False | -  |  -  |  A `threat_intelligence_allowlist` block. | 
| **var.threat_intelligence_mode** | string | False | `Alert`  |  `Alert`, `Deny`, `Off`  |  The operation mode for Threat Intelligence. Possible values are `Alert`, `Deny` and `Off`. Defaults to `Alert`. | 
| **var.tls_certificate** | block | False | -  |  -  |  A `tls_certificate` block. | 
| **var.sql_redirect_allowed** | bool | False | -  |  -  |  Whether SQL Redirect traffic filtering is allowed. Enabling this flag requires no rule using ports between `11000`-`11999`. | 
| **var.explicit_proxy** | block | False | -  |  -  |  A `explicit_proxy` block. | 

### `dns` block structure

> `proxy_enabled` (bool): Whether to enable DNS proxy on Firewalls attached to this Firewall Policy? Defaults to 'false'.
> `servers` (list): A list of custom DNS servers' IP addresses.

### `identity` block structure

> `type` (string): (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Firewall Policy. Only possible value is 'UserAssigned'.
> `identity_ids` (string): Specifies a list of User Assigned Managed Identity IDs to be assigned to this Firewall Policy.

### `insights` block structure

> `enabled` (bool): (REQUIRED) Whether the insights functionality is enabled for this Firewall Policy.
> `default_log_analytics_workspace_id` (string): (REQUIRED) The ID of the default Log Analytics Workspace that the Firewalls associated with this Firewall Policy will send their logs to, when there is no location matches in the 'log_analytics_workspace'.
> `retention_in_days` (int): The log retention period in days.
> `log_analytics_workspace` (block): A list of 'log_analytics_workspace' block.

### `intrusion_detection` block structure

> `mode` (string): In which mode you want to run intrusion detection: 'Off', 'Alert' or 'Deny'.
> `signature_overrides` (block): One or more 'signature_overrides' blocks.
> `traffic_bypass` (block): One or more 'traffic_bypass' blocks.
> `private_ranges` (list): A list of Private IP address ranges to identify traffic direction. By default, only ranges defined by IANA RFC 1918 are considered private IP addresses.

### `threat_intelligence_allowlist` block structure

> `fqdns` (list): A list of FQDNs that will be skipped for threat detection.
> `ip_addresses` (list): A list of IP addresses or CIDR ranges that will be skipped for threat detection.

### `tls_certificate` block structure

> `key_vault_secret_id` (string): (REQUIRED) The ID of the Key Vault, where the secret or certificate is stored.
> `name` (string): (REQUIRED) The name of the certificate.

### `explicit_proxy` block structure

> `enabled` (bool): Whether the explicit proxy is enabled for this Firewall Policy.
> `http_port` (string): The port number for explicit http protocol.
> `https_port` (string): The port number for explicit proxy https protocol.
> `enable_pac_file` (bool): Whether the pac file port and url need to be provided.
> `pac_file_port` (string): Specifies a port number for firewall to serve PAC file.
> `pac_file` (string): Specifies a SAS URL for PAC file.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Firewall Policy. | 
| **child_policies** | list | No  | A list of reference to child Firewall Policies of this Firewall Policy. | 
| **firewalls** | list | No  | A list of references to Azure Firewalls that this Firewall Policy is associated with. | 
| **rule_collection_groups** | list | No  | A list of references to Firewall Policy Rule Collection Groups that belongs to this Firewall Policy. | 

Additionally, all variables are provided as outputs.
