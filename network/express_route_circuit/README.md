# azurerm_express_route_circuit

Manages an ExpressRoute circuit.

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name of the ExpressRoute circuit. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the resource group in which to create the ExpressRoute circuit. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.sku** | block | True | -  |  A `sku` block for the ExpressRoute circuit as documented below. | 
| **var.service_provider_name** | string | False | -  |  The name of the ExpressRoute Service Provider. Changing this forces a new resource to be created. | 
| **var.peering_location** | string | False | -  |  The name of the peering location and **not** the Azure resource location. Changing this forces a new resource to be created. | 
| **var.bandwidth_in_mbps** | int | False | -  |  The bandwidth in Mbps of the circuit being created on the Service Provider. | 
| **var.allow_classic_operations** | bool | False | `False`  |  Allow the circuit to interact with classic (RDFE) resources. Defaults to `false`. | 
| **var.express_route_port_id** | string | False | -  |  The ID of the Express Route Port this Express Route Circuit is based on. Changing this forces a new resource to be created. | 
| **var.bandwidth_in_gbps** | int | False | -  |  The bandwidth in Gbps of the circuit being created on the Express Route Port. | 
| **var.authorization_key** | string | False | -  |  The authorization key. This can be used to set up an ExpressRoute Circuit with an ExpressRoute Port from another subscription. | 
| **var.tags** | map | False | -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **sku** | block  | - | 
| **service_provider_name** | string  | - | 
| **peering_location** | string  | - | 
| **bandwidth_in_mbps** | int  | - | 
| **allow_classic_operations** | bool  | - | 
| **express_route_port_id** | string  | - | 
| **bandwidth_in_gbps** | int  | - | 
| **authorization_key** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the ExpressRoute circuit. | 
| **service_provider_provisioning_state** | string  | The ExpressRoute circuit provisioning state from your chosen service provider. Possible values are `NotProvisioned`, `Provisioning`, `Provisioned`, and `Deprovisioning`. | 
| **service_key** | string  | The string needed by the service provider to provision the ExpressRoute circuit. | 