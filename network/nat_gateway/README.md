# azurerm_nat_gateway



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/nat_gateway"   
}

inputs = {
   name = "Specifies the name of the NAT Gateway"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```
## Associated components


### `public_ip_address_id` 

- If set to a valid `azurerm_public_ip` `id`, makes a **azurerm_nat_gateway_public_ip_association** - 

Example component snippet (**See also** [network/public_ip](https://github.com/jumidev/terraform-modules-auto-azurerm/tree/master/network/public_ip))

```hcl
component_inputs = {
   public_ip_address_id = "path/to/public_ip_component:id"
}
```

### `subnet_id` 

- If set to a valid `azurerm_subnet` `id`, makes a **azurerm_subnet_nat_gateway_association** - 

Example component snippet (**See also** [network/subnet](https://github.com/jumidev/terraform-modules-auto-azurerm/tree/master/network/subnet))

```hcl
component_inputs = {
   subnet_id = "path/to/subnet_component:id"
}
```

### `public_ip_prefix_id` 

- If set to a valid `azurerm_public_ip_prefix` `id`, makes a **azurerm_nat_gateway_public_ip_prefix_association** - 

Example component snippet (**See also** [network/public_ip_prefix](https://github.com/jumidev/terraform-modules-auto-azurerm/tree/master/network/public_ip_prefix))

```hcl
component_inputs = {
   public_ip_prefix_id = "path/to/public_ip_prefix_component:id"
}
```


## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  Specifies the name of the NAT Gateway. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  Specifies the name of the Resource Group in which the NAT Gateway should exist. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the supported Azure location where the NAT Gateway should exist. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **idle_timeout_in_minutes** | number |  `4`  |  The idle timeout which should be used in minutes. Defaults to `4`. | 
| **sku_name** | string |  `Standard`  |  The SKU which should be used. At this time the only supported value is `Standard`. Defaults to `Standard`. | 
| **tags** | map |  -  |  A mapping of tags to assign to the resource. | 
| **zones** | list |  -  |  A list of Availability Zones in which this NAT Gateway should be located. Changing this forces a new NAT Gateway to be created. -> **NOTE:** Only one Availability Zone can be defined. For more information, please check out the [Azure documentation](https://learn.microsoft.com/en-us/azure/nat-gateway/nat-overview#availability-zones) | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **zones** | list | No  | A list of Availability Zones in which this NAT Gateway should be located. Changing this forces a new NAT Gateway to be created. -> **NOTE:** Only one Availability Zone can be defined. For more information, please check out the [Azure documentation](https://learn.microsoft.com/en-us/azure/nat-gateway/nat-overview#availability-zones) In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the NAT Gateway. | 
| **resource_guid** | string | No  | The resource GUID property of the NAT Gateway. | 

Additionally, all variables are provided as outputs.
