# azurerm_route_filter

Manages a Route Filter.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/route_filter" 
}

inputs = {
   location = "${location}" 
   name = "name of route_filter" 
   resource_group_name = "${resource_group}" 
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
| **var.location** | string | True | The Azure Region where the Route Filter should exist. Changing this forces a new Route Filter to be created. | 
| **var.name** | string | True | The Name which should be used for this Route Filter. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the Route Filter should exist. Changing this forces a new Route Filter to be created. | 
| **var.rule** | block | False | A `rule` block. | 
| **var.tags** | map | False | A mapping of tags which should be assigned to the Route Filter. | 

### `rule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `access` | string | Yes | - | The access type of the rule. The only possible value is 'Allow'. |
| `communities` | string | Yes | - | The collection for bgp community values to filter on. e.g. ['12076:5010','12076:5020']. |
| `name` | string | Yes | - | The name of the route filter rule. |
| `rule_type` | string | Yes | - | The rule type of the rule. The only possible value is 'Community'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Route Filter. | 

Additionally, all variables are provided as outputs.
