# azurerm_frontdoor_rules_engine

!> **IMPORTANT** This deploys an Azure Front Door (classic) resource which has been deprecated and will receive security updates only. Please migrate your existing Azure Front Door (classic) deployments to the new [Azure Front Door (standard/premium) resources](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/cdn_frontdoor_custom_domain). For your convenience, the service team has exposed a `Front Door Classic` to `Front Door Standard/Premium` [migration tool](https://learn.microsoft.com/azure/frontdoor/tier-migration) to allow you to migrate your existing `Front Door Classic` instances to the new `Front Door Standard/Premium` product tiers.Manages an Azure Front Door (classic) Rules Engine configuration and rules.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/frontdoor_rules_engine" 
}

inputs = {
   name = "name of frontdoor_rules_engine" 
   frontdoor_name = "frontdoor_name of frontdoor_rules_engine" 
   resource_group_name = "${resource_group}" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name of the Rules engine configuration. Changing this forces a new resource to be created. | 
| **var.frontdoor_name** | string | True | -  |  The name of the Front Door instance. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the resource group. Changing this forces a new resource to be created. | 
| **var.enabled** | bool | False | `True`  |  Whether this Rules engine configuration is enabled? Defaults to `true`. | 
| **var.rule** | block | False | -  |  A `rule` block. | 

### `rule` block structure

>`name` (string): (REQUIRED) The name of the rule.
>`priority` (string): (REQUIRED) Priority of the rule, must be unique per rules engine definition.
>`action` (block): An 'action' block.
>`match_condition` (block): One or more 'match_condition' block.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |

Additionally, all variables are provided as outputs.
