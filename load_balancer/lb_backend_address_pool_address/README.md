# azurerm_lb_backend_address_pool_address

Manages a Backend Address within a Backend Address Pool.-> **Note:** Backend Addresses can only be added to a `Standard` SKU Load Balancer.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "load_balancer/lb_backend_address_pool_address"   
}

inputs = {
   # backend_address_pool_id → set in component_inputs
   name = "The name which should be used for this Backend Address Pool Address..."   
}

component_inputs = {
   backend_address_pool_id = "path/to/lb_backend_address_pool_component:id"   
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
| **backend_address_pool_id** | string |  The ID of the Backend Address Pool. Changing this forces a new Backend Address Pool Address to be created. | 
| **name** | string |  The name which should be used for this Backend Address Pool Address. Changing this forces a new Backend Address Pool Address to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **ip_address** | string |  The Static IP Address which should be allocated to this Backend Address Pool. | 
| **virtual_network_id** | string |  The ID of the Virtual Network within which the Backend Address Pool should exist. | 
| **backend_address_ip_configuration_id** | string |  The ip config ID of the regional load balancer that's added to the global load balancer's backend address pool. -> **Note:** For cross-region load balancer, please append the name of the load balancers, virtual machines, and other resources in each region with a -R1 and -R2. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **backend_address_ip_configuration_id** | string | No  | The ip config ID of the regional load balancer that's added to the global load balancer's backend address pool. -> **Note:** For cross-region load balancer, please append the name of the load balancers, virtual machines, and other resources in each region with a -R1 and -R2. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Backend Address Pool Address. | 
| **inbound_nat_rule_port_mapping** | block | No  | A list of `inbound_nat_rule_port_mapping` block. | 
| **inbound_nat_rule_name** | string | No  | The name of the Load Balancing Inbound NAT Rules associated with this Backend Address Pool Address. | 
| **frontend_port** | string | No  | The Frontend Port of the Load Balancing Inbound NAT Rules associated with this Backend Address Pool Address. | 
| **backend_port** | string | No  | The Backend Port of the Load Balancing Inbound NAT Rules associated with this Backend Address Pool Address. | 

Additionally, all variables are provided as outputs.
