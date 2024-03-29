# azurerm_lb_outbound_rule

Manages a Load Balancer Outbound Rule.~> **NOTE** When using this resource, the Load Balancer needs to have a FrontEnd IP Configuration and a Backend Address Pool Attached.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "load_balancer/lb_outbound_rule"   
}

inputs = {
   name = "Specifies the name of the Outbound Rule"   
   # loadbalancer_id → set in component_inputs
   # backend_address_pool_id → set in component_inputs
   protocol = "The transport protocol for the external endpoint"   
}

component_inputs = {
   loadbalancer_id = "path/to/lb_component:id"   
   backend_address_pool_id = "path/to/lb_backend_address_pool_component:id"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  Specifies the name of the Outbound Rule. Changing this forces a new resource to be created. | 
| **loadbalancer_id** | string |  -  |  The ID of the Load Balancer in which to create the Outbound Rule. Changing this forces a new resource to be created. | 
| **backend_address_pool_id** | string |  -  |  The ID of the Backend Address Pool. Outbound traffic is randomly load balanced across IPs in the backend IPs. | 
| **protocol** | string |  `Udp`, `Tcp`, `All`  |  The transport protocol for the external endpoint. Possible values are `Udp`, `Tcp` or `All`. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **frontend_ip_configuration** | [block](#frontend_ip_configuration-block-structure) |  -  |  One or more `frontend_ip_configuration` blocks. | 
| **enable_tcp_reset** | bool |  -  |  Receive bidirectional TCP Reset on TCP flow idle timeout or unexpected connection termination. This element is only used when the protocol is set to TCP. | 
| **allocated_outbound_ports** | number |  `1024`  |  The number of outbound ports to be used for NAT. Defaults to `1024`. | 
| **idle_timeout_in_minutes** | number |  `4`  |  The timeout for the TCP idle connection Defaults to `4`. | 

### `frontend_ip_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the Frontend IP Configuration. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **name** | string | No  | The name of the Frontend IP Configuration. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Load Balancer Outbound Rule. | 

Additionally, all variables are provided as outputs.
