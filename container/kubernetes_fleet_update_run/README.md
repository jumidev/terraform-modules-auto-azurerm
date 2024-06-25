# azurerm_kubernetes_fleet_update_run



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "container/kubernetes_fleet_update_run"   
}
inputs = {
   name = "The name which should be used for this Kubernetes Fleet Update Run..."   
   # kubernetes_fleet_manager_id → set in component_inputs
   managed_cluster_update = {
      upgrade = "..."      
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
| **name** | string |  The name which should be used for this Kubernetes Fleet Update Run. Changing this forces a new Kubernetes Fleet Update Run to be created. | 
| **kubernetes_fleet_manager_id** | string |  The ID of the Fleet Manager. Changing this forces a new Kubernetes Fleet Update Run to be created. | 
| **managed_cluster_update** | [block](#managed_cluster_update-block-structure) |  A `managed_cluster_update` block. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **fleet_update_strategy_id** | string |  The ID of the Fleet Update Strategy. Only one of `fleet_update_strategy_id` or `stage` can be specified. | 
| **stages** | [block](#stage-block-structure) |  One or more `stage` blocks. Only one of `stage` or `fleet_update_strategy_id` can be specified. | 

### `node_image_selection` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the node image upgrade type. Possible values are 'Latest' and 'Consistent'. |

### `managed_cluster_update` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `upgrade` | [block](#upgrade-block-structure) | Yes | - | A 'upgrade' block. |
| `node_image_selection` | [block](#node_image_selection-block-structure) | No | - | A 'node_image_selection' block. |

### `upgrade` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of upgrade to perform. Possible values are 'Full' and 'NodeImageOnly'. |
| `kubernetes_version` | string | No | - | Specifies the Kubernetes version to upgrade the member clusters to. This is required if 'type' is set to 'Full'. |

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
| **id** | string | No  | The ID of the Kubernetes Fleet Update Run. | 

Additionally, all variables are provided as outputs.
