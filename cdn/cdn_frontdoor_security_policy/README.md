# azurerm_cdn_frontdoor_security_policy

Manages a Front Door (standard/premium) Security Policy.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "cdn/cdn_frontdoor_security_policy" 
}

inputs = {
   name = "name of cdn_frontdoor_security_policy" 
   cdn_frontdoor_profile_id = "cdn_frontdoor_profile_id of cdn_frontdoor_security_policy" 
   security_policies = {
      example_security_policies = {
         firewall = "..."   
      }
  
   }
 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this Front Door Security Policy. Possible values must not be an empty string. Changing this forces a new Front Door Security Policy to be created. | 
| **var.cdn_frontdoor_profile_id** | string | True | The Front Door Profile Resource Id that is linked to this Front Door Security Policy. Changing this forces a new Front Door Security Policy to be created. | 
| **var.security_policies** | block | True | An `security_policies` block. Changing this forces a new Front Door Security Policy to be created. | 

### `security_policies` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `firewall` | block | Yes | - | An 'firewall' block. Changing this forces a new Front Door Security Policy to be created. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Front Door Security Policy. | 

Additionally, all variables are provided as outputs.
