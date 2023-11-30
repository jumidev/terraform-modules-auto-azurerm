# azurerm_lb_rule

Manages a Load Balancer Rule.~> **NOTE** When using this resource, the Load Balancer needs to have a FrontEnd IP Configuration Attached

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "load_balancer/lb_rule" 
}

inputs = {
   name = "name of lb_rule" 
   loadbalancer_id = "loadbalancer_id of lb_rule" 
   frontend_ip_configuration_name = "frontend_ip_configuration_name of lb_rule" 
   protocol = "protocol of lb_rule" 
   frontend_port = "frontend_port of lb_rule" 
   backend_port = "backend_port of lb_rule" 
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
| **var.name** | string |  -  |  Specifies the name of the LB Rule. Changing this forces a new resource to be created. | 
| **var.loadbalancer_id** | string |  -  |  The ID of the Load Balancer in which to create the Rule. Changing this forces a new resource to be created. | 
| **var.frontend_ip_configuration_name** | string |  -  |  The name of the frontend IP configuration to which the rule is associated. | 
| **var.protocol** | string |  `Tcp`, `Udp`, `All`  |  The transport protocol for the external endpoint. Possible values are `Tcp`, `Udp` or `All`. | 
| **var.frontend_port** | string |  -  |  The port for the external endpoint. Port numbers for each Rule must be unique within the Load Balancer. Possible values range between 0 and 65534, inclusive. | 
| **var.backend_port** | string |  -  |  The port used for internal connections on the endpoint. Possible values range between 0 and 65535, inclusive. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **var.backend_address_pool_ids** | list |  -  |  -  |  A list of reference to a Backend Address Pool over which this Load Balancing Rule operates. | 
| **var.probe_id** | string |  -  |  -  |  A reference to a Probe used by this Load Balancing Rule. | 
| **var.enable_floating_ip** | bool |  `False`  |  -  |  Are the Floating IPs enabled for this Load Balncer Rule? A "floating” IP is reassigned to a secondary server in case the primary server fails. Required to configure a SQL AlwaysOn Availability Group. Defaults to `false`. | 
| **var.idle_timeout_in_minutes** | string |  `4`  |  `4`, `30`  |  Specifies the idle timeout in minutes for TCP connections. Valid values are between `4` and `30` minutes. Defaults to `4` minutes. | 
| **var.load_distribution** | string |  -  |  `Default`, `SourceIP`, `SourceIPProtocol`, `None`, `Client IP`, `Client IP and Protocol`  |  Specifies the load balancing distribution type to be used by the Load Balancer. Possible values are: `Default` – The load balancer is configured to use a 5 tuple hash to map traffic to available servers. `SourceIP` – The load balancer is configured to use a 2 tuple hash to map traffic to available servers. `SourceIPProtocol` – The load balancer is configured to use a 3 tuple hash to map traffic to available servers. Also known as Session Persistence, where the options are called `None`, `Client IP` and `Client IP and Protocol` respectively. | 
| **var.disable_outbound_snat** | bool |  -  |  -  |  Is snat enabled for this Load Balancer Rule? Default `false`. | 
| **var.enable_tcp_reset** | bool |  -  |  -  |  Is TCP Reset enabled for this Load Balancer Rule? | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Load Balancer Rule. | 

Additionally, all variables are provided as outputs.
