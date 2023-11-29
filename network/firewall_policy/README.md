# azurerm_firewall_policy

Manages a Firewall Policy.

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



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **location** | string  | - | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **base_policy_id** | string  | - | 
| **dns** | block  | - | 
| **identity** | block  | - | 
| **insights** | block  | - | 
| **intrusion_detection** | block  | - | 
| **private_ip_ranges** | list  | - | 
| **auto_learn_private_ranges_enabled** | bool  | - | 
| **sku** | string  | - | 
| **tags** | map  | - | 
| **threat_intelligence_allowlist** | block  | - | 
| **threat_intelligence_mode** | string  | - | 
| **tls_certificate** | block  | - | 
| **sql_redirect_allowed** | bool  | - | 
| **explicit_proxy** | block  | - | 
| **id** | string  | The ID of the Firewall Policy. | 
| **child_policies** | list  | A list of reference to child Firewall Policies of this Firewall Policy. | 
| **firewalls** | list  | A list of references to Azure Firewalls that this Firewall Policy is associated with. | 
| **rule_collection_groups** | list  | A list of references to Firewall Policy Rule Collection Groups that belongs to this Firewall Policy. | 