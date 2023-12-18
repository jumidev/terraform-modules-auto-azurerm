# azurerm_nat_gateway

Manages an Azure NAT Gateway.

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
| **zones** | list |  -  |  A list of Availability Zones in which this NAT Gateway should be located. Changing this forces a new NAT Gateway to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the NAT Gateway. | 
| **resource_guid** | string | No  | The resource GUID property of the NAT Gateway. | 

Additionally, all variables are provided as outputs.
