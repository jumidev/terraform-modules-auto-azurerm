# azurerm_lb_backend_address_pool

Manages a Load Balancer Backend Address Pool.~> **NOTE:** When using this resource, the Load Balancer needs to have a FrontEnd IP Configuration Attached

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "load_balancer/lb_backend_address_pool" 
}

inputs = {
   name = "name of lb_backend_address_pool" 
   loadbalancer_id = "loadbalancer_id of lb_backend_address_pool" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the Backend Address Pool. Changing this forces a new resource to be created. | 
| **var.loadbalancer_id** | string | True | The ID of the Load Balancer in which to create the Backend Address Pool. Changing this forces a new resource to be created. | 
| **var.tunnel_interface** | block | False | One or more `tunnel_interface` blocks. | 
| `tunnel_interface` block structure: || 
|   identifier (string): (REQUIRED) The unique identifier of this Gateway Lodbalancer Tunnel Interface. ||
|   type (string): (REQUIRED) The traffic type of this Gateway Lodbalancer Tunnel Interface. Possible values are 'None', 'Internal' and 'External'. ||
|   protocol (string): (REQUIRED) The protocol used for this Gateway Lodbalancer Tunnel Interface. Possible values are 'None', 'Native' and 'VXLAN'. ||
|   port (string): (REQUIRED) The port number that this Gateway Lodbalancer Tunnel Interface listens to. ||
| **var.virtual_network_id** | string | False | The ID of the Virtual Network within which the Backend Address Pool should exist. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Backend Address Pool. | 
| **backend_ip_configurations** | string | No  | The Backend IP Configurations associated with this Backend Address Pool. | 
| **load_balancing_rules** | string | No  | The Load Balancing Rules associated with this Backend Address Pool. | 
| **inbound_nat_rules** | string | No  | An array of the Load Balancing Inbound NAT Rules associated with this Backend Address Pool. | 
| **outbound_rules** | string | No  | An array of the Load Balancing Outbound Rules associated with this Backend Address Pool. | 

Additionally, all variables are provided as outputs.
