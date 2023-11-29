# azurerm_cdn_frontdoor_security_policy

Manages a Front Door (standard/premium) Security Policy.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this Front Door Security Policy. Possible values must not be an empty string. Changing this forces a new Front Door Security Policy to be created. | 
| **var.cdn_frontdoor_profile_id** | string | True | The Front Door Profile Resource Id that is linked to this Front Door Security Policy. Changing this forces a new Front Door Security Policy to be created. | 
| **var.security_policies** | block | True | An `security_policies` block. Changing this forces a new Front Door Security Policy to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **cdn_frontdoor_profile_id** | string  | - | 
| **security_policies** | block  | - | 
| **id** | string  | The ID of the Front Door Security Policy. | 