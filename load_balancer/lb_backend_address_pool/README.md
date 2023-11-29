# azurerm_lb_backend_address_pool

Manages a Load Balancer Backend Address Pool.~> **NOTE:** When using this resource, the Load Balancer needs to have a FrontEnd IP Configuration Attached

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Backend Address Pool. Changing this forces a new resource to be created. | 
| **loadbalancer_id** | string | True | -  |  -  | The ID of the Load Balancer in which to create the Backend Address Pool. Changing this forces a new resource to be created. | 
| **tunnel_interface** | block | False | -  |  -  | One or more `tunnel_interface` blocks. | 
| **virtual_network_id** | string | False | -  |  -  | The ID of the Virtual Network within which the Backend Address Pool should exist. | 

