# azurerm_express_route_circuit



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/express_route_circuit"   
}
inputs = {
   name = "The name of the ExpressRoute circuit"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   sku = {
      tier = "..."      
      family = "..."      
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
| **bandwidth_in_mbps** | number |  -  |  The bandwidth in Mbps of the circuit being created on the Service Provider. ~> **NOTE:** Once you increase your bandwidth, you will not be able to decrease it to its previous value. ~> **NOTE:** The `service_provider_name`, the `peering_location` and the `bandwidth_in_mbps` should be set together and they conflict with `express_route_port_id` and `bandwidth_in_gbps`. | 
| **allow_classic_operations** | bool |  `False`  |  Allow the circuit to interact with classic (RDFE) resources. Defaults to `false`. | 
| **express_route_port_id** | string |  -  |  The ID of the Express Route Port this Express Route Circuit is based on. Changing this forces a new resource to be created. | 
| **bandwidth_in_gbps** | number |  -  |  The bandwidth in Gbps of the circuit being created on the Express Route Port. ~> **NOTE:** The `express_route_port_id` and the `bandwidth_in_gbps` should be set together and they conflict with `service_provider_name`, `peering_location` and `bandwidth_in_mbps`. | 
| **authorization_key** | string |  -  |  The authorization key. This can be used to set up an ExpressRoute Circuit with an ExpressRoute Port from another subscription. | 
| **tags** | map |  -  |  A mapping of tags to assign to the resource. | 

### `sku` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `tier` | string | Yes | - | The service tier. Possible values are 'Basic', 'Local', 'Standard' or 'Premium'. |
| `family` | string | Yes | - | The billing mode for bandwidth. Possible values are 'MeteredData' or 'UnlimitedData'. ~> **NOTE:** You can migrate from 'MeteredData' to 'UnlimitedData', but not the other way around. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **family** | string | No  | The billing mode for bandwidth. Possible values are `MeteredData` or `UnlimitedData`. ~> **NOTE:** You can migrate from `MeteredData` to `UnlimitedData`, but not the other way around. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the ExpressRoute circuit. | 
| **service_provider_provisioning_state** | string | No  | The ExpressRoute circuit provisioning state from your chosen service provider. Possible values are `NotProvisioned`, `Provisioning`, `Provisioned`, and `Deprovisioning`. | 
| **service_key** | string | No  | The string needed by the service provider to provision the ExpressRoute circuit. | 

Additionally, all variables are provided as outputs.
