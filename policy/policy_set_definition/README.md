# azurerm_policy_set_definition

Manages a policy set definition.-> **NOTE:**  Policy set definitions (also known as policy initiatives) do not take effect until they are assigned to a scope using a Policy Set Assignment.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "policy/policy_set_definition" 
}

inputs = {
   name = "name of policy_set_definition" 
   policy_type = "policy_type of policy_set_definition" 
   display_name = "display_name of policy_set_definition" 
   policy_definition_reference = {
      example_policy_definition_reference = {
         policy_definition_id = "TODO link to policy.policy_definition.id"   
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

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  The name of the policy set definition. Changing this forces a new resource to be created. | 
| **policy_type** | string |  `BuiltIn`, `Custom`, `NotSpecified`, `Static`  |  The policy set type. Possible values are `BuiltIn`, `Custom`, `NotSpecified` and `Static`. Changing this forces a new resource to be created. | 
| **display_name** | string |  -  |  The display name of the policy set definition. | 
| **policy_definition_reference** | [block](#policy_definition_reference-block-structure) |  -  |  One or more `policy_definition_reference` blocks. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **policy_definition_group** | [block](#policy_definition_group-block-structure) |  One or more `policy_definition_group` blocks. | 
| **description** | string |  The description of the policy set definition. | 
| **management_group_id** | string |  The id of the Management Group where this policy set definition should be defined. Changing this forces a new resource to be created. | 
| **metadata** | string |  The metadata for the policy set definition. This is a JSON object representing additional metadata that should be stored with the policy definition. | 
| **parameters** | string |  Parameters for the policy set definition. This field is a JSON object that allows you to parameterize your policy definition. | 

### `policy_definition_group` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `display_name` | string | No | - | The display name of this policy definition group. |
| `category` | string | No | - | The category of this policy definition group. |
| `description` | string | No | - | The description of this policy definition group. |
| `additional_metadata_resource_id` | string | No | - | The ID of a resource that contains additional metadata about this policy definition group. |

### `policy_definition_reference` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `policy_definition_id` | string | Yes | - | The ID of the policy definition that will be included in this policy set definition. |
| `parameter_values` | string | No | - | Parameter values for the referenced policy rule. This field is a JSON string that allows you to assign parameters to this policy rule. |
| `reference_id` | string | No | - | A unique ID within this policy set definition for this policy definition reference. |
| `policy_group_names` | list | No | - | A list of names of the policy definition groups that this policy definition reference belongs to. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Policy Set Definition. | 

Additionally, all variables are provided as outputs.
