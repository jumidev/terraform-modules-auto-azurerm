# azurerm_lb_backend_address_pool_address

Manages a Backend Address within a Backend Address Pool.-> **Note:** Backend Addresses can only be added to a `Standard` SKU Load Balancer.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **backend_address_pool_id** | string | True | -  |  -  | The ID of the Backend Address Pool. Changing this forces a new Backend Address Pool Address to be created. | 
| **ip_address** | string | False | -  |  -  | The Static IP Address which should be allocated to this Backend Address Pool. | 
| **name** | string | True | -  |  -  | The name which should be used for this Backend Address Pool Address. Changing this forces a new Backend Address Pool Address to be created. | 
| **virtual_network_id** | string | False | -  |  -  | The ID of the Virtual Network within which the Backend Address Pool should exist. | 
| **backend_address_ip_configuration_id** | string | False | -  |  -  | The ip config ID of the regional load balancer that's added to the global load balancer's backend address pool. | 

