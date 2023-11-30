# azurerm_route_map

Manages a Route Map.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/route_map" 
}

inputs = {
   name = "name of route_map" 
   virtual_hub_id = "virtual_hub_id of route_map" 
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
| **var.name** | string |  The name which should be used for this Route Map. Changing this forces a new resource to be created. | 
| **var.virtual_hub_id** | string |  The resource ID of the Virtual Hub. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.rule** | block |  A `rule` block. | 

### `rule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `action` | block | No | - | An 'action' block. |
| `match_criterion` | block | No | - | A 'match_criterion' block. |
| `next_step_if_matched` | string | No | Unknown | The next step after the rule is evaluated. Possible values are 'Continue', 'Terminate' and 'Unknown'. Defaults to 'Unknown'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Route Map. | 

Additionally, all variables are provided as outputs.
