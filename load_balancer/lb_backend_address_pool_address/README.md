# azurerm_lb_backend_address_pool_address

Manages a Backend Address within a Backend Address Pool.-> **Note:** Backend Addresses can only be added to a `Standard` SKU Load Balancer.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.backend_address_pool_id** | string | True | -  |  -  | The ID of the Backend Address Pool. Changing this forces a new Backend Address Pool Address to be created. | 
| **var.ip_address** | string | False | -  |  -  | The Static IP Address which should be allocated to this Backend Address Pool. | 
| **var.name** | string | True | -  |  -  | The name which should be used for this Backend Address Pool Address. Changing this forces a new Backend Address Pool Address to be created. | 
| **var.virtual_network_id** | string | False | -  |  -  | The ID of the Virtual Network within which the Backend Address Pool should exist. | 
| **var.backend_address_ip_configuration_id** | string | False | -  |  -  | The ip config ID of the regional load balancer that's added to the global load balancer's backend address pool. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **backend_address_pool_id** | string  | - | 
| **ip_address** | string  | - | 
| **name** | string  | - | 
| **virtual_network_id** | string  | - | 
| **backend_address_ip_configuration_id** | string  | - | 
| **id** | string  | The ID of the Backend Address Pool Address. | 
| **inbound_nat_rule_port_mapping** | block  | A list of `inbound_nat_rule_port_mapping` block. | 
| **inbound_nat_rule_name** | string  | The name of the Load Balancing Inbound NAT Rules associated with this Backend Address Pool Address. | 
| **frontend_port** | string  | The Frontend Port of the Load Balancing Inbound NAT Rules associated with this Backend Address Pool Address. | 
| **backend_port** | string  | The Backend Port of the Load Balancing Inbound NAT Rules associated with this Backend Address Pool Address. | 