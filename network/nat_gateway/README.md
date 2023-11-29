# azurerm_nat_gateway

Manages an Azure NAT Gateway.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the NAT Gateway. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | Specifies the name of the Resource Group in which the NAT Gateway should exist. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the NAT Gateway should exist. Changing this forces a new resource to be created. | 
| **idle_timeout_in_minutes** | int | False | `4`  |  -  | The idle timeout which should be used in minutes. Defaults to `4`. | 
| **sku_name** | string | False | `Standard`  |  -  | The SKU which should be used. At this time the only supported value is `Standard`. Defaults to `Standard`. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 
| **zones** | list | False | -  |  -  | A list of Availability Zones in which this NAT Gateway should be located. Changing this forces a new NAT Gateway to be created. | 

# azurerm_nat_gateway_public_ip_association

Manages the association between a NAT Gateway and a Public IP.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **nat_gateway_id** | string | False | -  |  -  | The ID of the NAT Gateway. Changing this forces a new resource to be created. | 
| **public_ip_address_id** | string | False | -  |  -  | The ID of the Public IP which this NAT Gateway which should be connected to. Changing this forces a new resource to be created. | 

# azurerm_subnet_nat_gateway_association

Associates a [NAT Gateway](nat_gateway.html) with a [Subnet](subnet.html) within a [Virtual Network](virtual_network.html).

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **nat_gateway_id** | string | False | -  |  -  | The ID of the NAT Gateway which should be associated with the Subnet. Changing this forces a new resource to be created. | 
| **subnet_id** | string | False | -  |  -  | The ID of the Subnet. Changing this forces a new resource to be created. | 

# azurerm_nat_gateway_public_ip_prefix_association

Manages the association between a NAT Gateway and a Public IP Prefix.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **nat_gateway_id** | string | False | -  |  -  | The ID of the NAT Gateway. Changing this forces a new resource to be created. | 
| **public_ip_prefix_id** | string | False | -  |  -  | The ID of the Public IP Prefix which this NAT Gateway which should be connected to. Changing this forces a new resource to be created. | 

