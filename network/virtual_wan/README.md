# azurerm_virtual_wan

Manages a Virtual WAN.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/virtual_wan"   
}

inputs = {
   name = "Specifies the name of the Virtual WAN"   
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
| **name** | string |  Specifies the name of the Virtual WAN. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which to create the Virtual WAN. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **disable_vpn_encryption** | bool |  `False`  |  -  |  Boolean flag to specify whether VPN encryption is disabled. Defaults to `false`. | 
| **allow_branch_to_branch_traffic** | bool |  `True`  |  -  |  Boolean flag to specify whether branch to branch traffic is allowed. Defaults to `true`. | 
| **office365_local_breakout_category** | string |  `None`  |  `Optimize`, `OptimizeAndAllow`, `All`, `None`  |  Specifies the Office365 local breakout category. Possible values include: `Optimize`, `OptimizeAndAllow`, `All`, `None`. Defaults to `None`. | 
| **type** | string |  `Standard`  |  -  |  Specifies the Virtual WAN type. Possible Values include: `Basic` and `Standard`. Defaults to `Standard`. | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the Virtual WAN. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Virtual WAN. | 

Additionally, all variables are provided as outputs.
