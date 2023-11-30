# azurerm_express_route_connection

Manages an Express Route Connection.~> **NOTE:** The provider status of the Express Route Circuit must be set as provisioned while creating the Express Route Connection. See more details [here](https://docs.microsoft.com/azure/expressroute/expressroute-howto-circuit-portal-resource-manager#send-the-service-key-to-your-connectivity-provider-for-provisioning).

## Example minimal component.hclt

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

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name which should be used for this Express Route Connection. Changing this forces a new resource to be created. | 
| **var.express_route_circuit_peering_id** | string | True | -  |  The ID of the Express Route Circuit Peering that this Express Route Connection connects with. Changing this forces a new resource to be created. | 
| **var.express_route_gateway_id** | string | True | -  |  The ID of the Express Route Gateway that this Express Route Connection connects with. Changing this forces a new resource to be created. | 
| **var.authorization_key** | string | False | -  |  The authorization key to establish the Express Route Connection. | 
| **var.enable_internet_security** | bool | False | -  |  Is Internet security enabled for this Express Route Connection? | 
| **var.express_route_gateway_bypass_enabled** | bool | False | `False`  |  Specified whether Fast Path is enabled for Virtual Wan Firewall Hub. Defaults to `false`. | 
| **var.routing** | block | False | -  |  A `routing` block. | | `routing` block structure: || 
|   associated_route_table_id (string): The ID of the Virtual Hub Route Table associated with this Express Route Connection. ||
|   inbound_route_map_id (string): The ID of the Route Map associated with this Express Route Connection for inbound routes. ||
|   outbound_route_map_id (string): The ID of the Route Map associated with this Express Route Connection for outbound routes. ||
|   propagated_route_table (block): A 'propagated_route_table' block. ||

| **var.routing_weight** | string | False | `0`  |  The routing weight associated to the Express Route Connection. Possible value is between `0` and `32000`. Defaults to `0`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Express Route Connection. | 

Additionally, all variables are provided as outputs.
