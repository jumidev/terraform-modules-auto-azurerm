# azurerm_lb_nat_pool

Manages a Load Balancer NAT pool.-> **NOTE:** This resource cannot be used with with virtual machines, instead use the `azurerm_lb_nat_rule` resource.~> **NOTE** When using this resource, the Load Balancer needs to have a FrontEnd IP Configuration Attached

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "load_balancer/lb_nat_pool" 
}

inputs = {
   name = "name of lb_nat_pool" 
   resource_group_name = "${resource_group}" 
   loadbalancer_id = "loadbalancer_id of lb_nat_pool" 
   frontend_ip_configuration_name = "frontend_ip_configuration_name of lb_nat_pool" 
   protocol = "protocol of lb_nat_pool" 
   frontend_port_start = "frontend_port_start of lb_nat_pool" 
   frontend_port_end = "frontend_port_end of lb_nat_pool" 
   backend_port = "backend_port of lb_nat_pool" 
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
| **var.name** | string |  -  |  Specifies the name of the NAT pool. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  -  |  The name of the resource group in which to create the resource. Changing this forces a new resource to be created. | 
| **var.loadbalancer_id** | string |  -  |  The ID of the Load Balancer in which to create the NAT pool. Changing this forces a new resource to be created. | 
| **var.frontend_ip_configuration_name** | string |  -  |  The name of the frontend IP configuration exposing this rule. | 
| **var.protocol** | string |  `All`, `Tcp`, `Udp`  |  The transport protocol for the external endpoint. Possible values are `All`, `Tcp` and `Udp`. | 
| **var.frontend_port_start** | string |  -  |  The first port number in the range of external ports that will be used to provide Inbound NAT to NICs associated with this Load Balancer. Possible values range between 1 and 65534, inclusive. | 
| **var.frontend_port_end** | string |  -  |  The last port number in the range of external ports that will be used to provide Inbound NAT to NICs associated with this Load Balancer. Possible values range between 1 and 65534, inclusive. | 
| **var.backend_port** | string |  -  |  The port used for the internal endpoint. Possible values range between 1 and 65535, inclusive. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **var.idle_timeout_in_minutes** | string |  `4`  |  `4`, `30`  |  Specifies the idle timeout in minutes for TCP connections. Valid values are between `4` and `30`. Defaults to `4`. | 
| **var.floating_ip_enabled** | bool |  -  |  -  |  Are the floating IPs enabled for this Load Balancer Rule? A floating IP is reassigned to a secondary server in case the primary server fails. Required to configure a SQL AlwaysOn Availability Group. | 
| **var.tcp_reset_enabled** | bool |  -  |  -  |  Is TCP Reset enabled for this Load Balancer Rule? | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Load Balancer NAT pool. | 

Additionally, all variables are provided as outputs.
