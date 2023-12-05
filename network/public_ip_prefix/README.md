# azurerm_public_ip_prefix

Manages a Public IP Prefix.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/public_ip_prefix"   
}

inputs = {
   name = "Specifies the name of the Public IP Prefix resource ..."   
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
| **name** | string |  Specifies the name of the Public IP Prefix resource . Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which to create the Public IP Prefix. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **sku** | string |  `Standard`  |  The SKU of the Public IP Prefix. Accepted values are `Standard`. Defaults to `Standard`. Changing this forces a new resource to be created. | 
| **ip_version** | string |  `IPv4`  |  The IP Version to use, `IPv6` or `IPv4`. Changing this forces a new resource to be created. Default is `IPv4`. | 
| **prefix_length** | int |  `28`  |  Specifies the number of bits of the prefix. The value can be set between 0 (4,294,967,296 addresses) and 31 (2 addresses). Defaults to `28`(16 addresses). Changing this forces a new resource to be created. | 
| **tags** | map |  -  |  A mapping of tags to assign to the resource. | 
| **zones** | string |  -  |  Specifies a list of Availability Zones in which this Public IP Prefix should be located. Changing this forces a new Public IP Prefix to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Public IP Prefix ID. | 
| **ip_prefix** | string | No  | The IP address prefix value that was allocated. | 

Additionally, all variables are provided as outputs.
