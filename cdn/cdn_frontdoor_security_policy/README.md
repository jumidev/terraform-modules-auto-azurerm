# azurerm_cdn_frontdoor_security_policy

Manages a Front Door (standard/premium) Security Policy.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "cdn/cdn_frontdoor_security_policy"   
}

inputs = {
   name = "The name which should be used for this Front Door Security Policy..."   
   # cdn_frontdoor_profile_id → set in tfstate_inputs
   security_policies = {
      firewall = "..."      
   }
   
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
| **name** | string |  The name which should be used for this Front Door Security Policy. Possible values must not be an empty string. Changing this forces a new Front Door Security Policy to be created. | 
| **cdn_frontdoor_profile_id** | string |  The Front Door Profile Resource Id that is linked to this Front Door Security Policy. Changing this forces a new Front Door Security Policy to be created. | 
| **security_policies** | [block](#security_policies-block-structure) |  An `security_policies` block. Changing this forces a new Front Door Security Policy to be created. | 

### `firewall` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `cdn_frontdoor_firewall_policy_id` | string | Yes | - | The Resource Id of the Front Door Firewall Policy that should be linked to this Front Door Security Policy. Changing this forces a new Front Door Security Policy to be created. |
| `association` | [block](#association-block-structure) | Yes | - | An 'association' block. Changing this forces a new Front Door Security Policy to be created. |

### `domain` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `cdn_frontdoor_domain_id` | string | Yes | - | The Resource Id of the **Front Door Custom Domain** or **Front Door Endpoint** that should be bound to this Front Door Security Policy. Changing this forces a new Front Door Security Policy to be created. |
| `active` | string | No | - | (Computed) Is the Front Door Custom Domain/Endpoint activated? |

### `association` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `domain` | [block](#domain-block-structure) | Yes | - | One or more 'domain' blocks. Changing this forces a new Front Door Security Policy to be created. |
| `patterns_to_match` | string | Yes | - | The list of paths to match for this firewall policy. Possible value includes '/*'. Changing this forces a new Front Door Security Policy to be created. |

### `security_policies` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `firewall` | [block](#firewall-block-structure) | Yes | - | An 'firewall' block. Changing this forces a new Front Door Security Policy to be created. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Front Door Security Policy. | 

Additionally, all variables are provided as outputs.
