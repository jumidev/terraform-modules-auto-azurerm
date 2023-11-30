# azurerm_express_route_circuit

Manages an ExpressRoute circuit.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/express_route_circuit" 
}

inputs = {
   name = "name of express_route_circuit" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   sku = "sku of express_route_circuit" 
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

### `sku` block structure

> `tier` (string): (REQUIRED) The service tier. Possible values are 'Basic', 'Local', 'Standard' or 'Premium'.
> `family` (string): (REQUIRED) The billing mode for bandwidth. Possible values are 'MeteredData' or 'UnlimitedData'.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the ExpressRoute circuit. | 
| **service_provider_provisioning_state** | string | No  | The ExpressRoute circuit provisioning state from your chosen service provider. Possible values are `NotProvisioned`, `Provisioning`, `Provisioned`, and `Deprovisioning`. | 
| **service_key** | string | No  | The string needed by the service provider to provision the ExpressRoute circuit. | 

Additionally, all variables are provided as outputs.
