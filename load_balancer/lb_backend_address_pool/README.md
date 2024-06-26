# azurerm_lb_backend_address_pool



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "load_balancer/lb_backend_address_pool"   
}
inputs = {
   name = "Specifies the name of the Backend Address Pool"   
   # loadbalancer_id → set in component_inputs
}
component_inputs = {
   loadbalancer_id = "path/to/lb_component:id"   
}
tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}
```
## Associated components


### `network_interface_backend_address_pool_association` 

If set, makes a **azurerm_network_interface_backend_address_pool_association** - With the following options:

| attribute | type | required? | default |
| --------- | ---- | --------- | ------- |
| `network_interface_id` | string | True | null |
| `ip_configuration_name` | string | True | "primary" |


Example component snippet

**See also** [network/network_interface](https://github.com/jumidev/terraform-modules-auto-azurerm/tree/master/network/network_interface)

```hcl
inputs = {
   network_interface_backend_address_pool_association = {
      ip_configuration_name = "primary"      
   }   
}
component_inputs = {
   network_interface_backend_address_pool_association.network_interface_id = "path/to/network_interface_component:id"   
}
```

### `network_interface_application_gateway_backend_address_pool_association` 

If set, makes a **azurerm_network_interface_application_gateway_backend_address_pool_association** - With the following options:

| attribute | type | required? | default |
| --------- | ---- | --------- | ------- |
| `network_interface_id` | string | True | null |
| `ip_configuration_name` | string | True | "primary" |


Example component snippet

**See also** [network/network_interface](https://github.com/jumidev/terraform-modules-auto-azurerm/tree/master/network/network_interface)

```hcl
inputs = {
   network_interface_application_gateway_backend_address_pool_association = {
      ip_configuration_name = "primary"      
   }   
}
component_inputs = {
   network_interface_application_gateway_backend_address_pool_association.network_interface_id = "path/to/network_interface_component:id"   
}
```


## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  Specifies the name of the Backend Address Pool. Changing this forces a new resource to be created. | 
| **loadbalancer_id** | string |  The ID of the Load Balancer in which to create the Backend Address Pool. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **synchronous_mode** | string |  `Automatic`, `Manual`  |  The backend address synchronous mode for the Backend Address Pool. Possible values are `Automatic` and `Manual`. This is required with `virtual_network_id`. Changing this forces a new resource to be created. -> **NOTE:** The `synchronous_mode` can set only for Load Balancer with `Standard` SKU. | 
| **tunnel_interfaces** | [block](#tunnel_interface-block-structure) |  -  |  One or more `tunnel_interface` blocks. | 
| **virtual_network_id** | string |  -  |  The ID of the Virtual Network within which the Backend Address Pool should exist. | 

### `tunnel_interface` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `identifier` | string | Yes | - | The unique identifier of this Gateway Load Balancer Tunnel Interface. |
| `type` | string | Yes | - | The traffic type of this Gateway Load Balancer Tunnel Interface. Possible values are 'None', 'Internal' and 'External'. |
| `protocol` | string | Yes | - | The protocol used for this Gateway Load Balancer Tunnel Interface. Possible values are 'None', 'Native' and 'VXLAN'. |
| `port` | string | Yes | - | The port number that this Gateway Load Balancer Tunnel Interface listens to. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **port** | string | No  | The port number that this Gateway Load Balancer Tunnel Interface listens to. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Backend Address Pool. | 
| **backend_ip_configurations** | string | No  | The Backend IP Configurations associated with this Backend Address Pool. | 
| **load_balancing_rules** | string | No  | The Load Balancing Rules associated with this Backend Address Pool. | 
| **inbound_nat_rules** | string | No  | An array of the Load Balancing Inbound NAT Rules associated with this Backend Address Pool. | 
| **outbound_rules** | string | No  | An array of the Load Balancing Outbound Rules associated with this Backend Address Pool. | 

Additionally, all variables are provided as outputs.
