# azurerm_lb_outbound_rule

Manages a Load Balancer Outbound Rule.~> **NOTE** When using this resource, the Load Balancer needs to have a FrontEnd IP Configuration and a Backend Address Pool Attached.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the Outbound Rule. Changing this forces a new resource to be created. | 
| **var.loadbalancer_id** | string | True | -  |  -  | The ID of the Load Balancer in which to create the Outbound Rule. Changing this forces a new resource to be created. | 
| **var.frontend_ip_configuration** | block | False | -  |  -  | One or more `frontend_ip_configuration` blocks. | 
| **var.backend_address_pool_id** | string | True | -  |  -  | The ID of the Backend Address Pool. Outbound traffic is randomly load balanced across IPs in the backend IPs. | 
| **var.protocol** | string | True | -  |  `Udp`, `Tcp`, `All`  | The transport protocol for the external endpoint. Possible values are `Udp`, `Tcp` or `All`. | 
| **var.enable_tcp_reset** | bool | False | -  |  -  | Receive bidirectional TCP Reset on TCP flow idle timeout or unexpected connection termination. This element is only used when the protocol is set to TCP. | 
| **var.allocated_outbound_ports** | int | False | `1024`  |  -  | The number of outbound ports to be used for NAT. Defaults to `1024`. | 
| **var.idle_timeout_in_minutes** | int | False | `4`  |  -  | The timeout for the TCP idle connection Defaults to `4`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **loadbalancer_id** | string  | - | 
| **frontend_ip_configuration** | block  | - | 
| **backend_address_pool_id** | string  | - | 
| **protocol** | string  | - | 
| **enable_tcp_reset** | bool  | - | 
| **allocated_outbound_ports** | int  | - | 
| **idle_timeout_in_minutes** | int  | - | 
| **id** | string  | The ID of the Load Balancer Outbound Rule. | 