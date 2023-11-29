# azurerm_cdn_frontdoor_rule_set

Manages a Front Door (standard/premium) Rule Set.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this Front Door Rule Set. Changing this forces a new Front Door Rule Set to be created. | 
| **var.cdn_frontdoor_profile_id** | string | True | The ID of the Front Door Profile. Changing this forces a new Front Door Rule Set to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **cdn_frontdoor_profile_id** | string  | - | 
| **id** | string  | The ID of the Front Door Rule Set. | 