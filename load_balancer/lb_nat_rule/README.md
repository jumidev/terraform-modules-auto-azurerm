# azurerm_lb_nat_rule

Manages a Load Balancer NAT Rule.-> **NOTE:** This resource cannot be used with with virtual machine scale sets, instead use the `azurerm_lb_nat_pool` resource.~> **NOTE** When using this resource, the Load Balancer needs to have a FrontEnd IP Configuration Attached

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the NAT Rule. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the resource. Changing this forces a new resource to be created. | 
| **var.loadbalancer_id** | string | True | -  |  -  | The ID of the Load Balancer in which to create the NAT Rule. Changing this forces a new resource to be created. | 
| **var.frontend_ip_configuration_name** | string | True | -  |  -  | The name of the frontend IP configuration exposing this rule. | 
| **var.protocol** | string | True | -  |  `Udp`, `Tcp`, `All`  | The transport protocol for the external endpoint. Possible values are `Udp`, `Tcp` or `All`. | 
| **var.frontend_port** | string | False | -  |  -  | The port for the external endpoint. Port numbers for each Rule must be unique within the Load Balancer. Possible values range between 1 and 65534, inclusive. | 
| **var.backend_port** | string | True | -  |  -  | The port used for internal connections on the endpoint. Possible values range between 1 and 65535, inclusive. | 
| **var.frontend_port_start** | string | False | -  |  -  | The port range start for the external endpoint. This property is used together with BackendAddressPool and FrontendPortRangeEnd. Individual inbound NAT rule port mappings will be created for each backend address from BackendAddressPool. Acceptable values range from 1 to 65534, inclusive. | 
| **var.frontend_port_end** | string | False | -  |  -  | The port range end for the external endpoint. This property is used together with BackendAddressPool and FrontendPortRangeStart. Individual inbound NAT rule port mappings will be created for each backend address from BackendAddressPool. Acceptable values range from 1 to 65534, inclusive. | 
| **var.backend_address_pool_id** | string | False | -  |  -  | Specifies a reference to backendAddressPool resource. | 
| **var.idle_timeout_in_minutes** | string | False | `4`  |  `4`, `30`  | Specifies the idle timeout in minutes for TCP connections. Valid values are between `4` and `30` minutes. Defaults to `4` minutes. | 
| **var.enable_floating_ip** | bool | False | `False`  |  -  | Are the Floating IPs enabled for this Load Balancer Rule? A "floating” IP is reassigned to a secondary server in case the primary server fails. Required to configure a SQL AlwaysOn Availability Group. Defaults to `false`. | 
| **var.enable_tcp_reset** | bool | False | -  |  -  | Is TCP Reset enabled for this Load Balancer Rule? | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **loadbalancer_id** | string  | - | 
| **frontend_ip_configuration_name** | string  | - | 
| **protocol** | string  | - | 
| **frontend_port** | string  | - | 
| **backend_port** | string  | - | 
| **frontend_port_start** | string  | - | 
| **frontend_port_end** | string  | - | 
| **backend_address_pool_id** | string  | - | 
| **idle_timeout_in_minutes** | string  | - | 
| **enable_floating_ip** | bool  | - | 
| **enable_tcp_reset** | bool  | - | 
| **id** | string  | The ID of the Load Balancer NAT Rule. | 