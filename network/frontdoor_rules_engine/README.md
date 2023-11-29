# azurerm_frontdoor_rules_engine

!> **IMPORTANT** This deploys an Azure Front Door (classic) resource which has been deprecated and will receive security updates only. Please migrate your existing Azure Front Door (classic) deployments to the new [Azure Front Door (standard/premium) resources](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/cdn_frontdoor_custom_domain). For your convenience, the service team has exposed a `Front Door Classic` to `Front Door Standard/Premium` [migration tool](https://learn.microsoft.com/azure/frontdoor/tier-migration) to allow you to migrate your existing `Front Door Classic` instances to the new `Front Door Standard/Premium` product tiers.Manages an Azure Front Door (classic) Rules Engine configuration and rules.

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name of the Rules engine configuration. Changing this forces a new resource to be created. | 
| **var.frontdoor_name** | string | True | -  |  The name of the Front Door instance. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the resource group. Changing this forces a new resource to be created. | 
| **var.enabled** | bool | False | `True`  |  Whether this Rules engine configuration is enabled? Defaults to `true`. | 
| **var.rule** | block | False | -  |  A `rule` block. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **frontdoor_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **enabled** | bool  | - | 
| **rule** | block  | - | 