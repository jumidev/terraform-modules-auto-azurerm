# azurerm_lighthouse_definition

Manages a [Lighthouse](https://docs.microsoft.com/azure/lighthouse) Definition.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "lighthouse/lighthouse_definition" 
}

inputs = {
   name = "name of lighthouse_definition" 
   managing_tenant_id = "managing_tenant_id of lighthouse_definition" 
   scope = "scope of lighthouse_definition" 
   authorization = {
      example_authorization = {
         principal_id = "..."   
         role_definition_id = "TODO link to authorization.role_definition.id"   
      }
  
   }
 
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
| **var.name** | string |  The name of the Lighthouse Definition. Changing this forces a new resource to be created. | 
| **var.managing_tenant_id** | string |  The ID of the managing tenant. Changing this forces a new resource to be created. | 
| **var.scope** | string |  The ID of the managed subscription. Changing this forces a new resource to be created. | 
| **var.authorization** | [block](#authorization-block-structure) |  An `authorization` block. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.lighthouse_definition_id** | string |  A unique UUID/GUID which identifies this lighthouse definition - one will be generated if not specified. Changing this forces a new resource to be created. | 
| **var.description** | string |  A description of the Lighthouse Definition. | 
| **var.eligible_authorization** | [block](#eligible_authorization-block-structure) |  An `eligible_authorization` block. | 
| **var.plan** | [block](#plan-block-structure) |  A `plan` block. | 

### `authorization` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `principal_id` | string | Yes | - | Principal ID of the security group/service principal/user that would be assigned permissions to the projected subscription. |
| `role_definition_id` | string | Yes | - | The role definition identifier. This role will define the permissions that are granted to the principal. This cannot be an 'Owner' role. |
| `delegated_role_definition_ids` | string | No | - | The set of role definition ids which define all the permissions that the principal id can assign. |
| `principal_display_name` | string | No | - | The display name of the security group/service principal/user that would be assigned permissions to the projected subscription. |

### `approver` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `principal_id` | string | Yes | - | The Principal ID of the Azure Active Directory principal for the approver. |
| `principal_display_name` | string | No | - | The display name of the Azure Active Directory Principal for the approver. |

### `just_in_time_access_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `multi_factor_auth_provider` | string | No | - | The multi-factor authorization provider to be used for just-in-time access requests. Possible value is 'Azure'. |
| `maximum_activation_duration` | int | No | PT8H | The maximum access duration in ISO 8601 format for just-in-time access requests. Defaults to 'PT8H'. |
| `approver` | [block](#just_in_time_access_policy-block-structure) | No | - | An 'approver' block. |

### `plan` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `publisher` | string | Yes | - | The publisher ID of the plan. |
| `product` | string | Yes | - | The product code of the plan. |
| `version` | string | Yes | - | The version of the plan. |

### `eligible_authorization` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `principal_id` | string | Yes | - | Principal ID of the security group/service principal/user that would be assigned permissions to the projected subscription. |
| `role_definition_id` | string | Yes | - | The Principal ID of the Azure built-in role that defines the permissions that the Azure Active Directory will have on the projected scope. |
| `just_in_time_access_policy` | [block](#eligible_authorization-block-structure) | No | - | A 'just_in_time_access_policy' block. |
| `principal_display_name` | string | No | - | The display name of the Azure Active Directory Principal. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | the fully qualified ID of the Lighthouse Definition. | 

Additionally, all variables are provided as outputs.
