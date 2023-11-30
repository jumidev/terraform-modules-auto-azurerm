# azurerm_frontdoor_firewall_policy

!> **IMPORTANT** This deploys an Azure Front Door (classic) resource which has been deprecated and will receive security updates only. Please migrate your existing Azure Front Door (classic) deployments to the new [Azure Front Door (standard/premium) resources](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/cdn_frontdoor_custom_domain). For your convenience, the service team has exposed a `Front Door Classic` to `Front Door Standard/Premium` [migration tool](https://learn.microsoft.com/azure/frontdoor/tier-migration) to allow you to migrate your existing `Front Door Classic` instances to the new `Front Door Standard/Premium` product tiers.Manages an Azure Front Door (classic) Web Application Firewall Policy instance.!> **Be Aware:** Azure is rolling out a breaking change on Friday 9th April 2021 which may cause issues with the CDN/FrontDoor resources. [More information is available in this GitHub issue](https://github.com/hashicorp/terraform-provider-azurerm/issues/11231) - however unfortunately this may necessitate a breaking change to the CDN and Front Door resources, more information will be posted [in the GitHub issue](https://github.com/hashicorp/terraform-provider-azurerm/issues/11231) as the necessary changes are identified.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/frontdoor_firewall_policy" 
}

inputs = {
   name = "name of frontdoor_firewall_policy" 
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
| **var.name** | string | True | -  |  -  |  The name of the policy. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the resource group. Changing this forces a new resource to be created. | 
| **var.enabled** | bool | False | `True`  |  -  |  Is the policy a enabled state or disabled state. Defaults to `true`. | 
| **var.mode** | string | False | `Prevention`  |  `Detection`, `Prevention`  |  The firewall policy mode. Possible values are `Detection`, `Prevention`. Defaults to `Prevention`. | 
| **var.redirect_url** | string | False | -  |  -  |  If action type is redirect, this field represents redirect URL for the client. | 
| **var.custom_rule** | block | False | -  |  -  |  One or more `custom_rule` blocks. | 
| **var.custom_block_response_status_code** | string | False | -  |  `200`, `403`, `405`, `406`, `429`  |  If a `custom_rule` block's action type is `block`, this is the response status code. Possible values are `200`, `403`, `405`, `406`, or `429`. | 
| **var.custom_block_response_body** | string | False | -  |  -  |  If a `custom_rule` block's action type is `block`, this is the response body. The body must be specified in base64 encoding. | 
| **var.managed_rule** | block | False | -  |  -  |  One or more `managed_rule` blocks. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the Web Application Firewall Policy. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Front Door Firewall Policy. | 
| **location** | string | No  | The Azure Region where this Front Door Firewall Policy exists. | 
| **frontend_endpoint_ids** | string | No  | The Frontend Endpoints associated with this Front Door Web Application Firewall policy. | 

Additionally, all variables are provided as outputs.
