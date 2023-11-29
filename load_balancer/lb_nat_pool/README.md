# azurerm_lb_nat_pool

Manages a Load Balancer NAT pool.-> **NOTE:** This resource cannot be used with with virtual machines, instead use the `azurerm_lb_nat_rule` resource.~> **NOTE** When using this resource, the Load Balancer needs to have a FrontEnd IP Configuration Attached

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the NAT pool. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the resource. Changing this forces a new resource to be created. | 
| **var.loadbalancer_id** | string | True | -  |  -  | The ID of the Load Balancer in which to create the NAT pool. Changing this forces a new resource to be created. | 
| **var.frontend_ip_configuration_name** | string | True | -  |  -  | The name of the frontend IP configuration exposing this rule. | 
| **var.protocol** | string | True | -  |  `All`, `Tcp`, `Udp`  | The transport protocol for the external endpoint. Possible values are `All`, `Tcp` and `Udp`. | 
| **var.frontend_port_start** | string | True | -  |  -  | The first port number in the range of external ports that will be used to provide Inbound NAT to NICs associated with this Load Balancer. Possible values range between 1 and 65534, inclusive. | 
| **var.frontend_port_end** | string | True | -  |  -  | The last port number in the range of external ports that will be used to provide Inbound NAT to NICs associated with this Load Balancer. Possible values range between 1 and 65534, inclusive. | 
| **var.backend_port** | string | True | -  |  -  | The port used for the internal endpoint. Possible values range between 1 and 65535, inclusive. | 
| **var.idle_timeout_in_minutes** | string | False | `4`  |  `4`, `30`  | Specifies the idle timeout in minutes for TCP connections. Valid values are between `4` and `30`. Defaults to `4`. | 
| **var.floating_ip_enabled** | bool | False | -  |  -  | Are the floating IPs enabled for this Load Balancer Rule? A floating IP is reassigned to a secondary server in case the primary server fails. Required to configure a SQL AlwaysOn Availability Group. | 
| **var.tcp_reset_enabled** | bool | False | -  |  -  | Is TCP Reset enabled for this Load Balancer Rule? | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **loadbalancer_id** | string  | - | 
| **frontend_ip_configuration_name** | string  | - | 
| **protocol** | string  | - | 
| **frontend_port_start** | string  | - | 
| **frontend_port_end** | string  | - | 
| **backend_port** | string  | - | 
| **idle_timeout_in_minutes** | string  | - | 
| **floating_ip_enabled** | bool  | - | 
| **tcp_reset_enabled** | bool  | - | 
| **id** | string  | The ID of the Load Balancer NAT pool. | 