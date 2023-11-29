# azurerm_frontdoor_firewall_policy

!> **IMPORTANT** This deploys an Azure Front Door (classic) resource which has been deprecated and will receive security updates only. Please migrate your existing Azure Front Door (classic) deployments to the new [Azure Front Door (standard/premium) resources](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/cdn_frontdoor_custom_domain). For your convenience, the service team has exposed a `Front Door Classic` to `Front Door Standard/Premium` [migration tool](https://learn.microsoft.com/azure/frontdoor/tier-migration) to allow you to migrate your existing `Front Door Classic` instances to the new `Front Door Standard/Premium` product tiers.Manages an Azure Front Door (classic) Web Application Firewall Policy instance.!> **Be Aware:** Azure is rolling out a breaking change on Friday 9th April 2021 which may cause issues with the CDN/FrontDoor resources. [More information is available in this GitHub issue](https://github.com/hashicorp/terraform-provider-azurerm/issues/11231) - however unfortunately this may necessitate a breaking change to the CDN and Front Door resources, more information will be posted [in the GitHub issue](https://github.com/hashicorp/terraform-provider-azurerm/issues/11231) as the necessary changes are identified.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the policy. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group. Changing this forces a new resource to be created. | 
| **enabled** | bool | False | `True`  |  -  | Is the policy a enabled state or disabled state. Defaults to `true`. | 
| **mode** | string | False | `Prevention`  |  `Detection`, `Prevention`  | The firewall policy mode. Possible values are `Detection`, `Prevention`. Defaults to `Prevention`. | 
| **redirect_url** | string | False | -  |  -  | If action type is redirect, this field represents redirect URL for the client. | 
| **custom_rule** | block | False | -  |  -  | One or more `custom_rule` blocks. | 
| **custom_block_response_status_code** | string | False | -  |  `200`, `403`, `405`, `406`, `429`  | If a `custom_rule` block's action type is `block`, this is the response status code. Possible values are `200`, `403`, `405`, `406`, or `429`. | 
| **custom_block_response_body** | string | False | -  |  -  | If a `custom_rule` block's action type is `block`, this is the response body. The body must be specified in base64 encoding. | 
| **managed_rule** | block | False | -  |  -  | One or more `managed_rule` blocks. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the Web Application Firewall Policy. | 

