# azurerm_lb_nat_rule

Manages a Load Balancer NAT Rule.-> **NOTE:** This resource cannot be used with with virtual machine scale sets, instead use the `azurerm_lb_nat_pool` resource.~> **NOTE** When using this resource, the Load Balancer needs to have a FrontEnd IP Configuration Attached

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "load_balancer/lb_nat_rule" 
}

inputs = {
   name = "name of lb_nat_rule" 
   resource_group_name = "${resource_group}" 
   loadbalancer_id = "loadbalancer_id of lb_nat_rule" 
   frontend_ip_configuration_name = "frontend_ip_configuration_name of lb_nat_rule" 
   protocol = "protocol of lb_nat_rule" 
   backend_port = "backend_port of lb_nat_rule" 
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
| **var.name** | string  -  |  Specifies the name of the NAT Rule. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string  -  |  The name of the resource group in which to create the resource. Changing this forces a new resource to be created. | 
| **var.loadbalancer_id** | string  -  |  The ID of the Load Balancer in which to create the NAT Rule. Changing this forces a new resource to be created. | 
| **var.frontend_ip_configuration_name** | string  -  |  The name of the frontend IP configuration exposing this rule. | 
| **var.protocol** | string  `Udp`, `Tcp`, `All`  |  The transport protocol for the external endpoint. Possible values are `Udp`, `Tcp` or `All`. | 
| **var.backend_port** | string  -  |  The port used for internal connections on the endpoint. Possible values range between 1 and 65535, inclusive. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **var.frontend_port** | string  -  |  -  |  The port for the external endpoint. Port numbers for each Rule must be unique within the Load Balancer. Possible values range between 1 and 65534, inclusive. | 
| **var.frontend_port_start** | string  -  |  -  |  The port range start for the external endpoint. This property is used together with BackendAddressPool and FrontendPortRangeEnd. Individual inbound NAT rule port mappings will be created for each backend address from BackendAddressPool. Acceptable values range from 1 to 65534, inclusive. | 
| **var.frontend_port_end** | string  -  |  -  |  The port range end for the external endpoint. This property is used together with BackendAddressPool and FrontendPortRangeStart. Individual inbound NAT rule port mappings will be created for each backend address from BackendAddressPool. Acceptable values range from 1 to 65534, inclusive. | 
| **var.backend_address_pool_id** | string  -  |  -  |  Specifies a reference to backendAddressPool resource. | 
| **var.idle_timeout_in_minutes** | string  `4`  |  `4`, `30`  |  Specifies the idle timeout in minutes for TCP connections. Valid values are between `4` and `30` minutes. Defaults to `4` minutes. | 
| **var.enable_floating_ip** | bool  `False`  |  -  |  Are the Floating IPs enabled for this Load Balancer Rule? A "floating” IP is reassigned to a secondary server in case the primary server fails. Required to configure a SQL AlwaysOn Availability Group. Defaults to `false`. | 
| **var.enable_tcp_reset** | bool  -  |  -  |  Is TCP Reset enabled for this Load Balancer Rule? | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Load Balancer NAT Rule. | 

Additionally, all variables are provided as outputs.
