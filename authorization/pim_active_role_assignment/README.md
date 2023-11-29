# azurerm_pim_active_role_assignment

Manages a Pim Active Role Assignment.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **principal_id** | string | True | -  |  -  | The principal id. Changing this forces a new Pim Active Role Assignment to be created. | 
| **role_definition_id** | string | True | -  |  -  | The role definition id. Changing this forces a new Pim Active Role Assignment to be created. | 
| **scope** | string | True | -  |  -  | The scope. Changing this forces a new Pim Active Role Assignment to be created. | 
| **justification** | string | False | -  |  -  | The justification of the role assignment. Changing this forces a new Pim Active Role Assignment to be created. | 
| **schedule** | block | False | -  |  -  | A `schedule` block. Changing this forces a new Pim Active Role Assignment to be created. | 
| **ticket** | block | False | -  |  -  | A `ticket` block. Changing this forces a new Pim Active Role Assignment to be created. | 

