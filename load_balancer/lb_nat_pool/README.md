# azurerm_lb_nat_pool

Manages a Load Balancer NAT pool.-> **NOTE:** This resource cannot be used with with virtual machines, instead use the `azurerm_lb_nat_rule` resource.~> **NOTE** When using this resource, the Load Balancer needs to have a FrontEnd IP Configuration Attached

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "load_balancer/lb_nat_pool"   
}

inputs = {
   name = "Specifies the name of the NAT pool"   
   resource_group_name = "${resource_group}"   
   # loadbalancer_id → set in component_inputs
   # frontend_ip_configuration_name → set in component_inputs
   protocol = "The transport protocol for the external endpoint"   
   frontend_port_start = "The first port number in the range of external ports that will be used to provid..."   
   frontend_port_end = "The last port number in the range of external ports that will be used to provide..."   
   backend_port = "The port used for the internal endpoint"   
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

## Required Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **name** | string |  -  |  -  |  Specifies the name of the NAT pool. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  -  |  The name of the resource group in which to create the resource. Changing this forces a new resource to be created. | 
| **loadbalancer_id** | string |  -  |  -  |  The ID of the Load Balancer in which to create the NAT pool. Changing this forces a new resource to be created. | 
| **frontend_ip_configuration_name** | string |  `primary`  |  -  |  The name of the frontend IP configuration exposing this rule. | 
| **protocol** | string |  -  |  `All`, `Tcp`, `Udp`  |  The transport protocol for the external endpoint. Possible values are `All`, `Tcp` and `Udp`. | 
| **frontend_port_start** | string |  -  |  -  |  The first port number in the range of external ports that will be used to provide Inbound NAT to NICs associated with this Load Balancer. Possible values range between 1 and 65534, inclusive. | 
| **frontend_port_end** | string |  -  |  -  |  The last port number in the range of external ports that will be used to provide Inbound NAT to NICs associated with this Load Balancer. Possible values range between 1 and 65534, inclusive. | 
| **backend_port** | string |  -  |  -  |  The port used for the internal endpoint. Possible values range between 1 and 65535, inclusive. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **idle_timeout_in_minutes** | number |  `4`  |  `4`, `30`  |  Specifies the idle timeout in minutes for TCP connections. Valid values are between `4` and `30`. Defaults to `4`. | 
| **floating_ip_enabled** | bool |  -  |  -  |  Are the floating IPs enabled for this Load Balancer Rule? A floating IP is reassigned to a secondary server in case the primary server fails. Required to configure a SQL AlwaysOn Availability Group. | 
| **tcp_reset_enabled** | bool |  -  |  -  |  Is TCP Reset enabled for this Load Balancer Rule? | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **tcp_reset_enabled** | bool | No  | Is TCP Reset enabled for this Load Balancer Rule? In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Load Balancer NAT pool. | 

Additionally, all variables are provided as outputs.
