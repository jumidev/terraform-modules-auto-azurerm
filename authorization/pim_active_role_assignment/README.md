# azurerm_pim_active_role_assignment



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "authorization/pim_active_role_assignment"   
}
inputs = {
   principal_id = "Object ID of the principal for this role assignment..."   
   # role_definition_id → set in component_inputs
   scope = "The scope for this role assignment, should be a valid resource ID..."   
}
component_inputs = {
   role_definition_id = "path/to/role_definition_component:id"   
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
| **principal_id** | string |  Object ID of the principal for this role assignment. Changing this forces a new resource to be created. | 
| **role_definition_id** | string |  The role definition ID for this role assignment. Changing this forces a new resource to be created. | 
| **scope** | string |  The scope for this role assignment, should be a valid resource ID. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **justification** | string |  The justification for the role assignment. Changing this forces a new resource to be created. | 
| **schedule** | [block](#schedule-block-structure) |  A `schedule` block. Changing this forces a new resource to be created. | 
| **ticket** | [block](#ticket-block-structure) |  A `ticket` block. Changing this forces a new resource to be created. | 

### `ticket` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `number` | string | No | - | User-supplied ticket number to be included with the request. Changing this forces a new resource to be created. |
| `system` | string | No | - | User-supplied ticket system name to be included with the request. Changing this forces a new resource to be created. |

### `schedule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `expiration` | [block](#expiration-block-structure) | No | - | An 'expiration' block. |
| `start_date_time` | string | No | - | The start date/time of the role assignment. Changing this forces a new resource to be created. |

### `expiration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `duration_days` | number | No | - | The duration of the role assignment in days. Changing this forces a new resource to be created. |
| `duration_hours` | string | No | - | The duration of the role assignment in hours. Changing this forces a new resource to be created. |
| `end_date_time` | string | No | - | The end date/time of the role assignment. Changing this forces a new resource to be created. ~> Note: Only one of 'duration_days', 'duration_hours' or 'end_date_time' should be specified. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **system** | string | No  | User-supplied ticket system name to be included with the request. Changing this forces a new resource to be created. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the PIM Active Role Assignment. | 
| **principal_type** | string | No  | Type of principal to which the role will be assigned. | 

Additionally, all variables are provided as outputs.
