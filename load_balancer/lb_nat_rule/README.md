# azurerm_lb_nat_rule

Manages a Load Balancer NAT Rule.-> **NOTE:** This resource cannot be used with with virtual machine scale sets, instead use the `azurerm_lb_nat_pool` resource.~> **NOTE** When using this resource, the Load Balancer needs to have a FrontEnd IP Configuration Attached

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the NAT Rule. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the resource. Changing this forces a new resource to be created. | 
| **loadbalancer_id** | string | True | -  |  -  | The ID of the Load Balancer in which to create the NAT Rule. Changing this forces a new resource to be created. | 
| **frontend_ip_configuration_name** | string | True | -  |  -  | The name of the frontend IP configuration exposing this rule. | 
| **protocol** | string | True | -  |  `Udp`, `Tcp`, `All`  | The transport protocol for the external endpoint. Possible values are `Udp`, `Tcp` or `All`. | 
| **frontend_port** | string | False | -  |  -  | The port for the external endpoint. Port numbers for each Rule must be unique within the Load Balancer. Possible values range between 1 and 65534, inclusive. | 
| **backend_port** | string | True | -  |  -  | The port used for internal connections on the endpoint. Possible values range between 1 and 65535, inclusive. | 
| **frontend_port_start** | string | False | -  |  -  | The port range start for the external endpoint. This property is used together with BackendAddressPool and FrontendPortRangeEnd. Individual inbound NAT rule port mappings will be created for each backend address from BackendAddressPool. Acceptable values range from 1 to 65534, inclusive. | 
| **frontend_port_end** | string | False | -  |  -  | The port range end for the external endpoint. This property is used together with BackendAddressPool and FrontendPortRangeStart. Individual inbound NAT rule port mappings will be created for each backend address from BackendAddressPool. Acceptable values range from 1 to 65534, inclusive. | 
| **backend_address_pool_id** | string | False | -  |  -  | Specifies a reference to backendAddressPool resource. | 
| **idle_timeout_in_minutes** | string | False | `4`  |  `4`, `30`  | Specifies the idle timeout in minutes for TCP connections. Valid values are between `4` and `30` minutes. Defaults to `4` minutes. | 
| **enable_floating_ip** | bool | False | `False`  |  -  | Are the Floating IPs enabled for this Load Balancer Rule? A "floating” IP is reassigned to a secondary server in case the primary server fails. Required to configure a SQL AlwaysOn Availability Group. Defaults to `false`. | 
| **enable_tcp_reset** | bool | False | -  |  -  | Is TCP Reset enabled for this Load Balancer Rule? | 

