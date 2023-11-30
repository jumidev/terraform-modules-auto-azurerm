# azurerm_lb_outbound_rule

Manages a Load Balancer Outbound Rule.~> **NOTE** When using this resource, the Load Balancer needs to have a FrontEnd IP Configuration and a Backend Address Pool Attached.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "load_balancer/lb_outbound_rule" 
}

inputs = {
   name = "name of lb_outbound_rule" 
   loadbalancer_id = "loadbalancer_id of lb_outbound_rule" 
   backend_address_pool_id = "backend_address_pool_id of lb_outbound_rule" 
   protocol = "protocol of lb_outbound_rule" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  Specifies the name of the Outbound Rule. Changing this forces a new resource to be created. | 
| **var.loadbalancer_id** | string | True | -  |  -  |  The ID of the Load Balancer in which to create the Outbound Rule. Changing this forces a new resource to be created. | 
| **var.frontend_ip_configuration** | block | False | -  |  -  |  One or more `frontend_ip_configuration` blocks. | 
| **var.backend_address_pool_id** | string | True | -  |  -  |  The ID of the Backend Address Pool. Outbound traffic is randomly load balanced across IPs in the backend IPs. | 
| **var.protocol** | string | True | -  |  `Udp`, `Tcp`, `All`  |  The transport protocol for the external endpoint. Possible values are `Udp`, `Tcp` or `All`. | 
| **var.enable_tcp_reset** | bool | False | -  |  -  |  Receive bidirectional TCP Reset on TCP flow idle timeout or unexpected connection termination. This element is only used when the protocol is set to TCP. | 
| **var.allocated_outbound_ports** | int | False | `1024`  |  -  |  The number of outbound ports to be used for NAT. Defaults to `1024`. | 
| **var.idle_timeout_in_minutes** | int | False | `4`  |  -  |  The timeout for the TCP idle connection Defaults to `4`. | 

### `frontend_ip_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the Frontend IP Configuration. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Load Balancer Outbound Rule. | 

Additionally, all variables are provided as outputs.
