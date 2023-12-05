# azurerm_lb

Manages a Load Balancer Resource.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "load_balancer/lb"   
}

inputs = {
   name = "name of lb"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  Specifies the name of the Load Balancer. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the Resource Group in which to create the Load Balancer. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the supported Azure Region where the Load Balancer should be created. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **edge_zone** | string |  -  |  -  |  Specifies the Edge Zone within the Azure Region where this Load Balancer should exist. Changing this forces a new Load Balancer to be created. | 
| **frontend_ip_configuration** | list |  -  |  -  |  One or more `frontend_ip_configuration` blocks. | 
| **sku** | string |  `Basic`  |  -  |  The SKU of the Azure Load Balancer. Accepted values are `Basic`, `Standard` and `Gateway`. Defaults to `Basic`. Changing this forces a new resource to be created. | 
| **sku_tier** | string |  `Regional`  |  `Global`, `Regional`  |  `sku_tier` -  The SKU tier of this Load Balancer. Possible values are `Global` and `Regional`. Defaults to `Regional`. Changing this forces a new resource to be created. | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The id of the Frontend IP Configuration. | 
| **frontend_ip_configuration** | block | No  | A `frontend_ip_configuration` block. | 
| **private_ip_address** | string | No  | Private IP Address to assign to the Load Balancer. | 
| **private_ip_addresses** | string | No  | The list of private IP address assigned to the load balancer in `frontend_ip_configuration` blocks, if any. | 
| **gateway_load_balancer_frontend_ip_configuration_id** | string | No  | The id of the Frontend IP Configuration of a Gateway Load Balancer that this Load Balancer points to. | 
| **inbound_nat_rules** | string | No  | The list of IDs of inbound rules that use this frontend IP. | 
| **load_balancer_rules** | string | No  | The list of IDs of load balancing rules that use this frontend IP. | 
| **outbound_rules** | string | No  | The list of IDs outbound rules that use this frontend IP. | 
| **private_ip_address_allocation** | string | No  | The allocation method for the Private IP Address used by this Load Balancer. Possible values are `Dynamic` and `Static`. | 
| **public_ip_address_id** | string | No  | The ID of a Public IP Address which is associated with this Load Balancer. | 
| **public_ip_prefix_id** | string | No  | The ID of a Public IP Prefix which is associated with the Load Balancer. | 
| **subnet_id** | string | No  | The ID of the Subnet which is associated with the IP Configuration. | 

Additionally, all variables are provided as outputs.
