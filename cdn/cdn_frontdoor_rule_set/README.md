# azurerm_cdn_frontdoor_rule_set

Manages a Front Door (standard/premium) Rule Set.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "cdn/cdn_frontdoor_rule_set"   
}

inputs = {
   name = "name of cdn_frontdoor_rule_set"   
   # cdn_frontdoor_profile_id → set in tfstate_inputs
}

tfstate_inputs = {
   cdn_frontdoor_profile_id = "path/to/cdn_frontdoor_profile_component:id"   
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
| **name** | string |  The name which should be used for this Front Door Rule Set. Changing this forces a new Front Door Rule Set to be created. | 
| **cdn_frontdoor_profile_id** | string |  The ID of the Front Door Profile. Changing this forces a new Front Door Rule Set to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Front Door Rule Set. | 

Additionally, all variables are provided as outputs.
