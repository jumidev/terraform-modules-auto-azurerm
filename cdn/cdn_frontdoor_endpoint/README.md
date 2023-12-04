# azurerm_cdn_frontdoor_endpoint

Manages a Front Door (standard/premium) Endpoint.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "cdn/cdn_frontdoor_endpoint" 
}

inputs = {
   name = "name of cdn_frontdoor_endpoint" 
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
| **name** | string |  The name which should be used for this Front Door Endpoint. Changing this forces a new Front Door Endpoint to be created. | 
| **cdn_frontdoor_profile_id** | string |  The ID of the Front Door Profile within which this Front Door Endpoint should exist. Changing this forces a new Front Door Endpoint to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **enabled** | bool |  `True`  |  Specifies if this Front Door Endpoint is enabled? Defaults to `true`. | 
| **tags** | map |  -  |  Specifies a mapping of tags which should be assigned to the Front Door Endpoint. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of this Front Door Endpoint. | 
| **host_name** | string | No  | The host name of the Front Door Endpoint, in the format `{endpointName}.{dnsZone}` (for example, `contoso.azureedge.net`). | 

Additionally, all variables are provided as outputs.
