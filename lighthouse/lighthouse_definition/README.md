# azurerm_lighthouse_definition

Manages a [Lighthouse](https://docs.microsoft.com/azure/lighthouse) Definition.

## Example minimal component.hclt

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
         ...
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
| **var.lighthouse_definition_id** | string | False | A unique UUID/GUID which identifies this lighthouse definition - one will be generated if not specified. Changing this forces a new resource to be created. | 
| **var.name** | string | True | The name of the Lighthouse Definition. Changing this forces a new resource to be created. | 
| **var.managing_tenant_id** | string | True | The ID of the managing tenant. Changing this forces a new resource to be created. | 
| **var.scope** | string | True | The ID of the managed subscription. Changing this forces a new resource to be created. | 
| **var.authorization** | block | True | An `authorization` block. | 
| **var.description** | string | False | A description of the Lighthouse Definition. | 
| **var.eligible_authorization** | block | False | An `eligible_authorization` block. | 
| **var.plan** | block | False | A `plan` block. | 

### `authorization` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `principal_id` | string | Yes | - | Principal ID of the security group/service principal/user that would be assigned permissions to the projected subscription. |
| `role_definition_id` | string | Yes | - | The role definition identifier. This role will define the permissions that are granted to the principal. This cannot be an 'Owner' role. |
| `delegated_role_definition_ids` | string | No | - | The set of role definition ids which define all the permissions that the principal id can assign. |
| `principal_display_name` | string | No | - | The display name of the security group/service principal/user that would be assigned permissions to the projected subscription. |

### `eligible_authorization` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `principal_id` | string | Yes | - | Principal ID of the security group/service principal/user that would be assigned permissions to the projected subscription. |
| `role_definition_id` | string | Yes | - | The Principal ID of the Azure built-in role that defines the permissions that the Azure Active Directory will have on the projected scope. |
| `just_in_time_access_policy` | block | No | - | A 'just_in_time_access_policy' block. |
| `principal_display_name` | string | No | - | The display name of the Azure Active Directory Principal. |

### `plan` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `publisher` | string | Yes | - | The publisher ID of the plan. |
| `product` | string | Yes | - | The product code of the plan. |
| `version` | string | Yes | - | The version of the plan. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | the fully qualified ID of the Lighthouse Definition. | 

Additionally, all variables are provided as outputs.
