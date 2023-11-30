# azurerm_policy_set_definition

Manages a policy set definition.-> **NOTE:**  Policy set definitions (also known as policy initiatives) do not take effect until they are assigned to a scope using a Policy Set Assignment.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "policy/policy_set_definition" 
}

inputs = {
   name = "name of policy_set_definition" 
   policy_type = "policy_type of policy_set_definition" 
   display_name = "display_name of policy_set_definition" 
   policy_definition_reference = "policy_definition_reference of policy_set_definition" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name of the policy set definition. Changing this forces a new resource to be created. | 
| **var.policy_type** | string | True | `BuiltIn`, `Custom`, `NotSpecified`, `Static`  |  The policy set type. Possible values are `BuiltIn`, `Custom`, `NotSpecified` and `Static`. Changing this forces a new resource to be created. | 
| **var.display_name** | string | True | -  |  The display name of the policy set definition. | 
| **var.policy_definition_reference** | block | True | -  |  One or more `policy_definition_reference` blocks. | 
| `policy_definition_reference` block structure: || 
|   policy_definition_id (string): (REQUIRED) The ID of the policy definition that will be included in this policy set definition. ||
|   parameter_values (string): Parameter values for the referenced policy rule. This field is a JSON string that allows you to assign parameters to this policy rule. ||
|   reference_id (string): A unique ID within this policy set definition for this policy definition reference. ||
|   policy_group_names (list): A list of names of the policy definition groups that this policy definition reference belongs to. ||
| **var.policy_definition_group** | block | False | -  |  One or more `policy_definition_group` blocks. | 
| `policy_definition_group` block structure: || 
|   name (string): (REQUIRED) The name of this policy definition group. ||
|   display_name (string): The display name of this policy definition group. ||
|   category (string): The category of this policy definition group. ||
|   description (string): The description of this policy definition group. ||
|   additional_metadata_resource_id (string): The ID of a resource that contains additional metadata about this policy definition group. ||
| **var.description** | string | False | -  |  The description of the policy set definition. | 
| **var.management_group_id** | string | False | -  |  The id of the Management Group where this policy set definition should be defined. Changing this forces a new resource to be created. | 
| **var.metadata** | string | False | -  |  The metadata for the policy set definition. This is a JSON object representing additional metadata that should be stored with the policy definition. | 
| **var.parameters** | string | False | -  |  Parameters for the policy set definition. This field is a JSON object that allows you to parameterize your policy definition. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Policy Set Definition. | 

Additionally, all variables are provided as outputs.
