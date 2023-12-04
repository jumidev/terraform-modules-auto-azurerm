# azurerm_pim_active_role_assignment

Manages a Pim Active Role Assignment.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "authorization/pim_active_role_assignment" 
}

inputs = {
   principal_id = "principal_id of pim_active_role_assignment" 
   role_definition_id = "role_definition_id of pim_active_role_assignment" 
   scope = "scope of pim_active_role_assignment" 
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
| **principal_id** | string |  The principal id. Changing this forces a new Pim Active Role Assignment to be created. | 
| **role_definition_id** | string |  The role definition id. Changing this forces a new Pim Active Role Assignment to be created. | 
| **scope** | string |  The scope. Changing this forces a new Pim Active Role Assignment to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **justification** | string |  The justification of the role assignment. Changing this forces a new Pim Active Role Assignment to be created. | 
| **schedule** | [block](#schedule-block-structure) |  A `schedule` block. Changing this forces a new Pim Active Role Assignment to be created. | 
| **ticket** | [block](#ticket-block-structure) |  A `ticket` block. Changing this forces a new Pim Active Role Assignment to be created. | 

### `schedule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `expiration` | [block](#schedule-block-structure) | No | - | A 'expiration' block. |
| `start_date_time` | string | No | - | The start date time of the role assignment. Changing this forces a new Pim Active Role Assignment to be created. |

### `ticket` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `number` | string | No | - | The ticket number. |
| `system` | string | No | - | The ticket system. |

### `expiration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `duration_days` | int | No | - | The duration of the role assignment in days. Conflicts with 'schedule.0.expiration.0.duration_hours','schedule.0.expiration.0.end_date_time' Changing this forces a new Pim Active Role Assignment to be created. |
| `duration_hours` | string | No | - | The duration of the role assignment in hours. Conflicts with 'schedule.0.expiration.0.duration_days','schedule.0.expiration.0.end_date_time' Changing this forces a new Pim Active Role Assignment to be created. |
| `end_date_time` | string | No | - | The end date time of the role assignment. Conflicts with 'schedule.0.expiration.0.duration_days','schedule.0.expiration.0.duration_hours' Changing this forces a new Pim Active Role Assignment to be created. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Pim Active Role Assignment. | 
| **principal_type** | string | No  | The type of principal. | 

Additionally, all variables are provided as outputs.
