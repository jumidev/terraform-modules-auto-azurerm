# azurerm_pim_eligible_role_assignment

Manages a Pim Eligible Role Assignment.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "authorization/pim_eligible_role_assignment" 
}

inputs = {
   principal_id = "principal_id of pim_eligible_role_assignment" 
   role_definition_id = "role_definition_id of pim_eligible_role_assignment" 
   scope = "scope of pim_eligible_role_assignment" 
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
| **var.principal_id** | string | True | The principal id. Changing this forces a new Pim Eligible Role Assignment to be created. | 
| **var.role_definition_id** | string | True | The role definition id. Changing this forces a new Pim Eligible Role Assignment to be created. | 
| **var.scope** | string | True | The scope. Changing this forces a new Pim Eligible Role Assignment to be created. | 
| **var.justification** | string | False | The justification of the role assignment. Changing this forces a new Pim Eligible Role Assignment to be created. | 
| **var.schedule** | block | False | A `schedule` block. Changing this forces a new Pim Eligible Role Assignment to be created. | 
| **var.ticket** | block | False | A `ticket` block. Changing this forces a new Pim Eligible Role Assignment to be created. | 

### `schedule` block structure

> `expiration` (block): A 'expiration' block.
> `start_date_time` (string): The start date time of the role assignment. Changing this forces a new Pim Eligible Role Assignment to be created.

### `ticket` block structure

> `number` (string): The ticket number.
> `system` (string): The ticket system.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Pim Eligible Role Assignment. | 
| **principal_type** | string | No  | The type of principal. | 

Additionally, all variables are provided as outputs.
