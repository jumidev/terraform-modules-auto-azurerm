# azurerm_express_route_connection

Manages an Express Route Connection.~> **NOTE:** The provider status of the Express Route Circuit must be set as provisioned while creating the Express Route Connection. See more details [here](https://docs.microsoft.com/azure/expressroute/expressroute-howto-circuit-portal-resource-manager#send-the-service-key-to-your-connectivity-provider-for-provisioning).

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Express Route Connection. Changing this forces a new resource to be created. | 
| **express_route_circuit_peering_id** | string | True | -  |  -  | The ID of the Express Route Circuit Peering that this Express Route Connection connects with. Changing this forces a new resource to be created. | 
| **express_route_gateway_id** | string | True | -  |  -  | The ID of the Express Route Gateway that this Express Route Connection connects with. Changing this forces a new resource to be created. | 
| **authorization_key** | string | False | -  |  -  | The authorization key to establish the Express Route Connection. | 
| **enable_internet_security** | bool | False | -  |  -  | Is Internet security enabled for this Express Route Connection? | 
| **express_route_gateway_bypass_enabled** | bool | False | `False`  |  -  | Specified whether Fast Path is enabled for Virtual Wan Firewall Hub. Defaults to `false`. | 
| **routing** | block | False | -  |  -  | A `routing` block. | 
| **routing_weight** | string | False | `0`  |  -  | The routing weight associated to the Express Route Connection. Possible value is between `0` and `32000`. Defaults to `0`. | 

