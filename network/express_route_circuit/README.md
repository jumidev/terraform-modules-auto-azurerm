# azurerm_express_route_circuit

Manages an ExpressRoute circuit.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/express_route_circuit" 
}

inputs = {
   name = "name of express_route_circuit" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   sku = {
      example_sku = {
         tier = "..."   
         family = "..."   
      }
  
   }
 
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
| **name** | string |  The name of the ExpressRoute circuit. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which to create the ExpressRoute circuit. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **sku** | [block](#sku-block-structure) |  A `sku` block for the ExpressRoute circuit as documented below. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **service_provider_name** | string |  -  |  The name of the ExpressRoute Service Provider. Changing this forces a new resource to be created. | 
| **peering_location** | string |  -  |  The name of the peering location and **not** the Azure resource location. Changing this forces a new resource to be created. | 
| **bandwidth_in_mbps** | int |  -  |  The bandwidth in Mbps of the circuit being created on the Service Provider. | 
| **allow_classic_operations** | bool |  `False`  |  Allow the circuit to interact with classic (RDFE) resources. Defaults to `false`. | 
| **express_route_port_id** | string |  -  |  The ID of the Express Route Port this Express Route Circuit is based on. Changing this forces a new resource to be created. | 
| **bandwidth_in_gbps** | int |  -  |  The bandwidth in Gbps of the circuit being created on the Express Route Port. | 
| **authorization_key** | string |  -  |  The authorization key. This can be used to set up an ExpressRoute Circuit with an ExpressRoute Port from another subscription. | 
| **tags** | map |  -  |  A mapping of tags to assign to the resource. | 

### `sku` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `tier` | string | Yes | - | The service tier. Possible values are 'Basic', 'Local', 'Standard' or 'Premium'. |
| `family` | string | Yes | - | The billing mode for bandwidth. Possible values are 'MeteredData' or 'UnlimitedData'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the ExpressRoute circuit. | 
| **service_provider_provisioning_state** | string | No  | The ExpressRoute circuit provisioning state from your chosen service provider. Possible values are `NotProvisioned`, `Provisioning`, `Provisioned`, and `Deprovisioning`. | 
| **service_key** | string | No  | The string needed by the service provider to provision the ExpressRoute circuit. | 

Additionally, all variables are provided as outputs.
