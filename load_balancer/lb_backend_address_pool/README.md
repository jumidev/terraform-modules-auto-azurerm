# azurerm_lb_backend_address_pool

Manages a Load Balancer Backend Address Pool.~> **NOTE:** When using this resource, the Load Balancer needs to have a FrontEnd IP Configuration Attached

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "load_balancer/lb_backend_address_pool"   
}

inputs = {
   name = "Specifies the name of the Backend Address Pool"   
   # loadbalancer_id → set in tfstate_inputs
}

tfstate_inputs = {
   loadbalancer_id = "path/to/lb_component:id"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```
## Optional associated resources


### `network_interface_backend_address_pool_association` 

If set, makes a **azurerm_network_interface_backend_address_pool_association** - With the following options:

| attribute | type | required? | default |
| --------- | ---- | --------- | ------- |
| `network_interface_id` | string | True | null |
| `ip_configuration_name` | string | True | "primary" |


Example component snippet:

```hcl
inputs = {
   network_interface_backend_address_pool_association = {
      ip_configuration_name = "primary"      
   }
   
}

tfstate_inputs = {
   network_interface_backend_address_pool_association.network_interface.id = "path/to/network_interface_component:id"   
}

```

### `network_interface_application_gateway_backend_address_pool_association` 

If set, makes a **azurerm_network_interface_application_gateway_backend_address_pool_association** - With the following options:

| attribute | type | required? | default |
| --------- | ---- | --------- | ------- |
| `network_interface_id` | string | True | null |
| `ip_configuration_name` | string | True | "primary" |


Example component snippet:

```hcl
inputs = {
   network_interface_application_gateway_backend_address_pool_association = {
      ip_configuration_name = "primary"      
   }
   
}

tfstate_inputs = {
   network_interface_application_gateway_backend_address_pool_association.network_interface.id = "path/to/network_interface_component:id"   
}

```


## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  Specifies the name of the Backend Address Pool. Changing this forces a new resource to be created. | 
| **loadbalancer_id** | string |  The ID of the Load Balancer in which to create the Backend Address Pool. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **tunnel_interface** | [block](#tunnel_interface-block-structure) |  One or more `tunnel_interface` blocks. | 
| **virtual_network_id** | string |  The ID of the Virtual Network within which the Backend Address Pool should exist. | 

### `tunnel_interface` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `identifier` | string | Yes | - | The unique identifier of this Gateway Lodbalancer Tunnel Interface. |
| `type` | string | Yes | - | The traffic type of this Gateway Lodbalancer Tunnel Interface. Possible values are 'None', 'Internal' and 'External'. |
| `protocol` | string | Yes | - | The protocol used for this Gateway Lodbalancer Tunnel Interface. Possible values are 'None', 'Native' and 'VXLAN'. |
| `port` | string | Yes | - | The port number that this Gateway Lodbalancer Tunnel Interface listens to. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Backend Address Pool. | 
| **backend_ip_configurations** | string | No  | The Backend IP Configurations associated with this Backend Address Pool. | 
| **load_balancing_rules** | string | No  | The Load Balancing Rules associated with this Backend Address Pool. | 
| **inbound_nat_rules** | string | No  | An array of the Load Balancing Inbound NAT Rules associated with this Backend Address Pool. | 
| **outbound_rules** | string | No  | An array of the Load Balancing Outbound Rules associated with this Backend Address Pool. | 

Additionally, all variables are provided as outputs.
