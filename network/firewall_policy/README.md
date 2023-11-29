# azurerm_firewall_policy

Manages a Firewall Policy.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **location** | string | True | -  |  -  | The Azure Region where the Firewall Policy should exist. Changing this forces a new Firewall Policy to be created. | 
| **name** | string | True | -  |  -  | The name which should be used for this Firewall Policy. Changing this forces a new Firewall Policy to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Firewall Policy should exist. Changing this forces a new Firewall Policy to be created. | 
| **base_policy_id** | string | False | -  |  -  | The ID of the base Firewall Policy. | 
| **dns** | block | False | -  |  -  | A `dns` block. | 
| **identity** | block | False | -  |  -  | An `identity` block. | 
| **insights** | block | False | -  |  -  | An `insights` block. | 
| **intrusion_detection** | block | False | -  |  -  | A `intrusion_detection` block. | 
| **private_ip_ranges** | list | False | -  |  -  | A list of private IP ranges to which traffic will not be SNAT. | 
| **auto_learn_private_ranges_enabled** | bool | False | -  |  -  | Whether enable auto learn private ip range. | 
| **sku** | string | False | -  |  `Standard`, `Premium`, `Basic`  | The SKU Tier of the Firewall Policy. Possible values are `Standard`, `Premium` and `Basic`. Changing this forces a new Firewall Policy to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Firewall Policy. | 
| **threat_intelligence_allowlist** | block | False | -  |  -  | A `threat_intelligence_allowlist` block. | 
| **threat_intelligence_mode** | string | False | `Alert`  |  `Alert`, `Deny`, `Off`  | The operation mode for Threat Intelligence. Possible values are `Alert`, `Deny` and `Off`. Defaults to `Alert`. | 
| **tls_certificate** | block | False | -  |  -  | A `tls_certificate` block. | 
| **sql_redirect_allowed** | bool | False | -  |  -  | Whether SQL Redirect traffic filtering is allowed. Enabling this flag requires no rule using ports between `11000`-`11999`. | 
| **explicit_proxy** | block | False | -  |  -  | A `explicit_proxy` block. | 

