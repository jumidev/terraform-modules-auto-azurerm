# azurerm_pim_eligible_role_assignment

Manages a Pim Eligible Role Assignment.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.principal_id** | string | True | -  |  -  | The principal id. Changing this forces a new Pim Eligible Role Assignment to be created. | 
| **var.role_definition_id** | string | True | -  |  -  | The role definition id. Changing this forces a new Pim Eligible Role Assignment to be created. | 
| **var.scope** | string | True | -  |  -  | The scope. Changing this forces a new Pim Eligible Role Assignment to be created. | 
| **var.justification** | string | False | -  |  -  | The justification of the role assignment. Changing this forces a new Pim Eligible Role Assignment to be created. | 
| **var.schedule** | block | False | -  |  -  | A `schedule` block. Changing this forces a new Pim Eligible Role Assignment to be created. | 
| **var.ticket** | block | False | -  |  -  | A `ticket` block. Changing this forces a new Pim Eligible Role Assignment to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **principal_id** | string  | - | 
| **role_definition_id** | string  | - | 
| **scope** | string  | - | 
| **justification** | string  | - | 
| **schedule** | block  | - | 
| **ticket** | block  | - | 
| **id** | string  | The ID of the Pim Eligible Role Assignment. | 
| **principal_type** | string  | The type of principal. | 