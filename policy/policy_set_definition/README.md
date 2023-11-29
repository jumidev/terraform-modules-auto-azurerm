# azurerm_policy_set_definition

Manages a policy set definition.-> **NOTE:**  Policy set definitions (also known as policy initiatives) do not take effect until they are assigned to a scope using a Policy Set Assignment.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name of the policy set definition. Changing this forces a new resource to be created. | 
| **var.policy_type** | string | True | `BuiltIn`, `Custom`, `NotSpecified`, `Static`  |  The policy set type. Possible values are `BuiltIn`, `Custom`, `NotSpecified` and `Static`. Changing this forces a new resource to be created. | 
| **var.display_name** | string | True | -  |  The display name of the policy set definition. | 
| **var.policy_definition_reference** | block | True | -  |  One or more `policy_definition_reference` blocks. | 
| **var.policy_definition_group** | block | False | -  |  One or more `policy_definition_group` blocks. | 
| **var.description** | string | False | -  |  The description of the policy set definition. | 
| **var.management_group_id** | string | False | -  |  The id of the Management Group where this policy set definition should be defined. Changing this forces a new resource to be created. | 
| **var.metadata** | string | False | -  |  The metadata for the policy set definition. This is a JSON object representing additional metadata that should be stored with the policy definition. | 
| **var.parameters** | string | False | -  |  Parameters for the policy set definition. This field is a JSON object that allows you to parameterize your policy definition. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **policy_type** | string  | - | 
| **display_name** | string  | - | 
| **policy_definition_reference** | block  | - | 
| **policy_definition_group** | block  | - | 
| **description** | string  | - | 
| **management_group_id** | string  | - | 
| **metadata** | string  | - | 
| **parameters** | string  | - | 
| **id** | string  | The ID of the Policy Set Definition. | 