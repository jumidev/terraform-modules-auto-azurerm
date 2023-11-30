# azurerm_cdn_frontdoor_firewall_policy

Manages a Front Door (standard/premium) Firewall Policy instance.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "cdn/cdn_frontdoor_firewall_policy" 
}

inputs = {
   name = "name of cdn_frontdoor_firewall_policy" 
   resource_group_name = "${resource_group}" 
   sku_name = "sku_name of cdn_frontdoor_firewall_policy" 
   mode = "mode of cdn_frontdoor_firewall_policy" 
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
| **var.sku_name** | string | True | -  |  `Standard_AzureFrontDoor`, `Premium_AzureFrontDoor`  |  The sku's pricing tier for this Front Door Firewall Policy. Possible values include `Standard_AzureFrontDoor` or `Premium_AzureFrontDoor`. Changing this forces a new resource to be created. | 
| **var.enabled** | bool | False | `True`  |  -  |  Is the Front Door Firewall Policy enabled? Defaults to `true`. | 
| **var.mode** | string | True | -  |  `Detection`, `Prevention`  |  The Front Door Firewall Policy mode. Possible values are `Detection`, `Prevention`. | 
| **var.redirect_url** | string | False | -  |  -  |  If action type is redirect, this field represents redirect URL for the client. | 
| **var.custom_rule** | block | False | -  |  -  |  One or more `custom_rule` blocks. | 
| **var.custom_block_response_status_code** | string | False | -  |  `200`, `403`, `405`, `406`, `429`  |  If a `custom_rule` block's action type is `block`, this is the response status code. Possible values are `200`, `403`, `405`, `406`, or `429`. | 
| **var.custom_block_response_body** | string | False | -  |  -  |  If a `custom_rule` block's action type is `block`, this is the response body. The body must be specified in base64 encoding. | 
| **var.managed_rule** | block | False | -  |  -  |  One or more `managed_rule` blocks. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the Front Door Firewall Policy. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Front Door Firewall Policy. | 
| **frontend_endpoint_ids** | string | No  | The Front Door Profiles frontend endpoints associated with this Front Door Firewall Policy. | 

Additionally, all variables are provided as outputs.
