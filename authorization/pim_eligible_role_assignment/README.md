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

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.principal_id** | string  The principal id. Changing this forces a new Pim Eligible Role Assignment to be created. | 
| **var.role_definition_id** | string  The role definition id. Changing this forces a new Pim Eligible Role Assignment to be created. | 
| **var.scope** | string  The scope. Changing this forces a new Pim Eligible Role Assignment to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.justification** | string  The justification of the role assignment. Changing this forces a new Pim Eligible Role Assignment to be created. | 
| **var.schedule** | block  A `schedule` block. Changing this forces a new Pim Eligible Role Assignment to be created. | 
| **var.ticket** | block  A `ticket` block. Changing this forces a new Pim Eligible Role Assignment to be created. | 

### `schedule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `expiration` | block | No | - | A 'expiration' block. |
| `start_date_time` | string | No | - | The start date time of the role assignment. Changing this forces a new Pim Eligible Role Assignment to be created. |

### `ticket` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `number` | string | No | - | The ticket number. |
| `system` | string | No | - | The ticket system. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Pim Eligible Role Assignment. | 
| **principal_type** | string | No  | The type of principal. | 

Additionally, all variables are provided as outputs.
