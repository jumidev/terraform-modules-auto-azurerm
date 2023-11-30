# azurerm_nat_gateway

Manages an Azure NAT Gateway.

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name of the NAT Gateway. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  Specifies the name of the Resource Group in which the NAT Gateway should exist. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  Specifies the supported Azure location where the NAT Gateway should exist. Changing this forces a new resource to be created. | 
| **var.idle_timeout_in_minutes** | int | False | `4`  |  The idle timeout which should be used in minutes. Defaults to `4`. | 
| **var.sku_name** | string | False | `Standard`  |  The SKU which should be used. At this time the only supported value is `Standard`. Defaults to `Standard`. | 
| **var.tags** | map | False | -  |  A mapping of tags to assign to the resource. | 
| **var.zones** | list | False | -  |  A list of Availability Zones in which this NAT Gateway should be located. Changing this forces a new NAT Gateway to be created. | 


### 3 optional associated resources

| Variable | Information |
| -------- | ----------- |
| **var.public_ip_address_id** | If set to a valid `azurerm_public_ip` `id`, makes a **azurerm_nat_gateway_public_ip_association** - Manages the association between a NAT Gateway and a Public IP. | 
| **var.subnet_id** | If set to a valid `azurerm_subnet` `id`, makes a **azurerm_subnet_nat_gateway_association** - Associates a [NAT Gateway](nat_gateway.html) with a [Subnet](subnet.html) within a [Virtual Network](virtual_network.html). | 
| **var.public_ip_prefix_id** | If set to a valid `azurerm_public_ip_prefix` `id`, makes a **azurerm_nat_gateway_public_ip_prefix_association** - Manages the association between a NAT Gateway and a Public IP Prefix. | 

## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **idle_timeout_in_minutes** | int  | - | 
| **sku_name** | string  | - | 
| **tags** | map  | - | 
| **zones** | list  | - | 
| **id** | string  | The ID of the NAT Gateway. | 
| **resource_guid** | string  | The resource GUID property of the NAT Gateway. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/nat_gateway" 
}

inputs = {
   name = "name of nat_gateway" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```