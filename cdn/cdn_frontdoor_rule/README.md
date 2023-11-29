# azurerm_cdn_frontdoor_rule

Manages a Front Door (standard/premium) Rule.!>**IMPORTANT:** The Rules resource **must** include a `depends_on` meta-argument which references the `azurerm_cdn_frontdoor_origin` and the `azurerm_cdn_frontdoor_origin_group`.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for this Front Door Rule. Possible values must be between 1 and 260 characters in length, begin with a letter and may contain only letters and numbers. Changing this forces a new Front Door Rule to be created. | 
| **var.cdn_frontdoor_rule_set_id** | string | True | -  |  -  | The resource ID of the Front Door Rule Set for this Front Door Rule. Changing this forces a new Front Door Rule to be created. | 
| **var.order** | string | True | -  |  -  | The order in which the rules will be applied for the Front Door Endpoint. The order value should be sequential and begin at `1`(e.g. `1`, `2`, `3`...). A Front Door Rule with a lesser order value will be applied before a rule with a greater order value. | 
| **var.actions** | block | True | -  |  -  | An `actions` block. | 
| **var.behavior_on_match** | string | False | `Continue`  |  `Continue`, `Stop`  | If this rule is a match should the rules engine continue processing the remaining rules or stop? Possible values are `Continue` and `Stop`. Defaults to `Continue`. | 
| **var.conditions** | block | False | -  |  -  | A `conditions` block. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **cdn_frontdoor_rule_set_id** | string  | - | 
| **order** | string  | - | 
| **actions** | block  | - | 
| **behavior_on_match** | string  | - | 
| **conditions** | block  | - | 
| **id** | string  | The ID of the Front Door Rule. | 
| **cdn_frontdoor_rule_set_name** | string  | The name of the Front Door Rule Set containing this Front Door Rule. | 