# azurerm_express_route_circuit

Manages an ExpressRoute circuit.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the ExpressRoute circuit. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the ExpressRoute circuit. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **sku** | block | True | -  |  -  | A `sku` block for the ExpressRoute circuit as documented below. | 
| **service_provider_name** | string | False | -  |  -  | The name of the ExpressRoute Service Provider. Changing this forces a new resource to be created. | 
| **peering_location** | string | False | -  |  -  | The name of the peering location and **not** the Azure resource location. Changing this forces a new resource to be created. | 
| **bandwidth_in_mbps** | int | False | -  |  -  | The bandwidth in Mbps of the circuit being created on the Service Provider. | 
| **allow_classic_operations** | bool | False | `False`  |  -  | Allow the circuit to interact with classic (RDFE) resources. Defaults to `false`. | 
| **express_route_port_id** | string | False | -  |  -  | The ID of the Express Route Port this Express Route Circuit is based on. Changing this forces a new resource to be created. | 
| **bandwidth_in_gbps** | int | False | -  |  -  | The bandwidth in Gbps of the circuit being created on the Express Route Port. | 
| **authorization_key** | string | False | -  |  -  | The authorization key. This can be used to set up an ExpressRoute Circuit with an ExpressRoute Port from another subscription. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

