# azurerm_kubernetes_fleet_update_strategy



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "container/kubernetes_fleet_update_strategy"   
}
inputs = {
   name = "The name which should be used for this Kubernetes Fleet Update Strategy..."   
   # kubernetes_fleet_manager_id → set in component_inputs
   stages = {
      stage_1 = {
         group = "..."         
         after_stage_wait_in_seconds = "..."         
      }      
      stage_2 = {
         ...
      }      
   }   
}
component_inputs = {
   kubernetes_fleet_manager_id = "path/to/kubernetes_fleet_manager_component:id"   
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
| **name** | string |  The name which should be used for this Kubernetes Fleet Update Strategy. Changing this forces a new Kubernetes Fleet Update Strategy to be created. | 
| **kubernetes_fleet_manager_id** | string |  The ID of the Fleet Manager. Changing this forces a new Kubernetes Fleet Update Strategy to be created. | 
| **stages** | [block](#stage-block-structure) |  One or more `stage` blocks. | 

### `stage` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `group` | [block](#group-block-structure) | Yes | - | One or more 'group' blocks. |
| `name` | string | Yes | - | The name which should be used for this stage. |
| `after_stage_wait_in_seconds` | number | No | - | Specifies the time in seconds to wait at the end of this stage before starting the next one. |

### `group` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name which should be used for this group. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **name** | string | No  | The name which should be used for this group. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Kubernetes Fleet Update Strategy. | 

Additionally, all variables are provided as outputs.
