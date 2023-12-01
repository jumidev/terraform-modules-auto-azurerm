# azurerm_express_route_connection

Manages an Express Route Connection.~> **NOTE:** The provider status of the Express Route Circuit must be set as provisioned while creating the Express Route Connection. See more details [here](https://docs.microsoft.com/azure/expressroute/expressroute-howto-circuit-portal-resource-manager#send-the-service-key-to-your-connectivity-provider-for-provisioning).

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/express_route_connection" 
}

inputs = {
   name = "name of express_route_connection" 
   express_route_circuit_peering_id = "express_route_circuit_peering_id of express_route_connection" 
   express_route_gateway_id = "express_route_gateway_id of express_route_connection" 
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
| **name** | string |  The name which should be used for this Express Route Connection. Changing this forces a new resource to be created. | 
| **express_route_circuit_peering_id** | string |  The ID of the Express Route Circuit Peering that this Express Route Connection connects with. Changing this forces a new resource to be created. | 
| **express_route_gateway_id** | string |  The ID of the Express Route Gateway that this Express Route Connection connects with. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **authorization_key** | string |  -  |  The authorization key to establish the Express Route Connection. | 
| **enable_internet_security** | bool |  -  |  Is Internet security enabled for this Express Route Connection? | 
| **express_route_gateway_bypass_enabled** | bool |  `False`  |  Specified whether Fast Path is enabled for Virtual Wan Firewall Hub. Defaults to `false`. | 
| **routing** | [block](#routing-block-structure) |  -  |  A `routing` block. | 
| **routing_weight** | string |  `0`  |  The routing weight associated to the Express Route Connection. Possible value is between `0` and `32000`. Defaults to `0`. | 

### `propagated_route_table` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `labels` | string | No | - | The list of labels to logically group route tables. |
| `route_table_ids` | list | No | - | A list of IDs of the Virtual Hub Route Table to propagate routes from Express Route Connection to the route table. |

### `routing` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `associated_route_table_id` | string | No | - | The ID of the Virtual Hub Route Table associated with this Express Route Connection. |
| `inbound_route_map_id` | string | No | - | The ID of the Route Map associated with this Express Route Connection for inbound routes. |
| `outbound_route_map_id` | string | No | - | The ID of the Route Map associated with this Express Route Connection for outbound routes. |
| `propagated_route_table` | [block](#routing-block-structure) | No | - | A 'propagated_route_table' block. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Express Route Connection. | 

Additionally, all variables are provided as outputs.
