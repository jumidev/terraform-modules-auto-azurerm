# azurerm_route_map

Manages a Route Map.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/route_map"   
}

inputs = {
   name = "The name which should be used for this Route Map"   
   # virtual_hub_id → set in tfstate_inputs
}

tfstate_inputs = {
   virtual_hub_id = "path/to/virtual_hub_component:id"   
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
| **name** | string |  The name which should be used for this Route Map. Changing this forces a new resource to be created. | 
| **virtual_hub_id** | string |  The resource ID of the Virtual Hub. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **rule** | [block](#rule-block-structure) |  A `rule` block. | 

### `parameter` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `as_path` | list | No | - | A list of AS paths. |
| `community` | list | No | - | A list of BGP communities. |
| `route_prefix` | list | No | - | A list of route prefixes. |

### `action` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `parameter` | [block](#parameter-block-structure) | Yes | - | A 'parameter' block. |
| `type` | string | Yes | - | The type of the action to be taken. Possible values are 'Add', 'Drop', 'Remove', 'Replace' and 'Unknown'. |

### `match_criterion` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `match_condition` | string | Yes | - | The match condition to apply the rule of the Route Map. Possible values are 'Contains', 'Equals', 'NotContains', 'NotEquals' and 'Unknown'. |
| `as_path` | list | No | - | A list of AS paths which this criterion matches. |
| `community` | list | No | - | A list of BGP communities which this criterion matches. |
| `route_prefix` | list | No | - | A list of route prefixes which this criterion matches. |

### `rule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The unique name for the rule. |
| `action` | [block](#action-block-structure) | No | - | An 'action' block. |
| `match_criterion` | [block](#match_criterion-block-structure) | No | - | A 'match_criterion' block. |
| `next_step_if_matched` | string | No | Unknown | The next step after the rule is evaluated. Possible values are 'Continue', 'Terminate' and 'Unknown'. Defaults to 'Unknown'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Route Map. | 

Additionally, all variables are provided as outputs.
