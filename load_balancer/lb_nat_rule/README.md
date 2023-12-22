# azurerm_lb_nat_rule

Manages a Load Balancer NAT Rule.-> **NOTE:** This resource cannot be used with with virtual machine scale sets, instead use the `azurerm_lb_nat_pool` resource.~> **NOTE** When using this resource, the Load Balancer needs to have a FrontEnd IP Configuration Attached

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "load_balancer/lb_nat_rule"   
}

inputs = {
   name = "Specifies the name of the NAT Rule"   
   resource_group_name = "${resource_group}"   
   # loadbalancer_id → set in component_inputs
   # frontend_ip_configuration_name → set in component_inputs
   protocol = "The transport protocol for the external endpoint"   
   backend_port = "The port used for internal connections on the endpoint..."   
}

component_inputs = {
   loadbalancer_id = "path/to/lb_component:id"   
   frontend_ip_configuration_name = "path/to/lb_outbound_rule_component:frontend_ip_configuration"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```
## Optional associated resource


### `network_interface_nat_rule_association` 

If set, makes a **azurerm_network_interface_nat_rule_association** - With the following options:

| attribute | type | required? | default |
| --------- | ---- | --------- | ------- |
| `network_interface_id` | string | True | null |
| `ip_configuration_name` | string | True | "primary" |


Example component snippet:

```hcl
inputs = {
   network_interface_nat_rule_association = {
      ip_configuration_name = "primary"      
   }
   
}

component_inputs = {
   network_interface_nat_rule_association.network_interface_id = "path/to/network_interface_component:id"   
}

```


## Required Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **name** | string |  -  |  -  |  Specifies the name of the NAT Rule. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  -  |  The name of the resource group in which to create the resource. Changing this forces a new resource to be created. | 
| **loadbalancer_id** | string |  -  |  -  |  The ID of the Load Balancer in which to create the NAT Rule. Changing this forces a new resource to be created. | 
| **frontend_ip_configuration_name** | string |  `primary`  |  -  |  The name of the frontend IP configuration exposing this rule. | 
| **protocol** | string |  -  |  `Udp`, `Tcp`, `All`  |  The transport protocol for the external endpoint. Possible values are `Udp`, `Tcp` or `All`. | 
| **backend_port** | string |  -  |  -  |  The port used for internal connections on the endpoint. Possible values range between 1 and 65535, inclusive. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **frontend_port** | string |  -  |  -  |  The port for the external endpoint. Port numbers for each Rule must be unique within the Load Balancer. Possible values range between 1 and 65534, inclusive. | 
| **frontend_port_start** | string |  -  |  -  |  The port range start for the external endpoint. This property is used together with BackendAddressPool and FrontendPortRangeEnd. Individual inbound NAT rule port mappings will be created for each backend address from BackendAddressPool. Acceptable values range from 1 to 65534, inclusive. | 
| **frontend_port_end** | string |  -  |  -  |  The port range end for the external endpoint. This property is used together with BackendAddressPool and FrontendPortRangeStart. Individual inbound NAT rule port mappings will be created for each backend address from BackendAddressPool. Acceptable values range from 1 to 65534, inclusive. | 
| **backend_address_pool_id** | string |  -  |  -  |  Specifies a reference to backendAddressPool resource. | 
| **idle_timeout_in_minutes** | number |  `4`  |  `4`, `30`  |  Specifies the idle timeout in minutes for TCP connections. Valid values are between `4` and `30` minutes. Defaults to `4` minutes. | 
| **enable_floating_ip** | bool |  `False`  |  -  |  Are the Floating IPs enabled for this Load Balancer Rule? A "floating” IP is reassigned to a secondary server in case the primary server fails. Required to configure a SQL AlwaysOn Availability Group. Defaults to `false`. | 
| **enable_tcp_reset** | bool |  -  |  -  |  Is TCP Reset enabled for this Load Balancer Rule? | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Load Balancer NAT Rule. | 

Additionally, all variables are provided as outputs.
