# azurerm_virtual_wan

Manages a Virtual WAN.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/virtual_wan" 
}

inputs = {
   name = "name of virtual_wan" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  Specifies the name of the Virtual WAN. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the resource group in which to create the Virtual WAN. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.disable_vpn_encryption** | bool | False | `False`  |  -  |  Boolean flag to specify whether VPN encryption is disabled. Defaults to `false`. | 
| **var.allow_branch_to_branch_traffic** | bool | False | `True`  |  -  |  Boolean flag to specify whether branch to branch traffic is allowed. Defaults to `true`. | 
| **var.office365_local_breakout_category** | string | False | `None`  |  `Optimize`, `OptimizeAndAllow`, `All`, `None`  |  Specifies the Office365 local breakout category. Possible values include: `Optimize`, `OptimizeAndAllow`, `All`, `None`. Defaults to `None`. | 
| **var.type** | string | False | `Standard`  |  -  |  Specifies the Virtual WAN type. Possible Values include: `Basic` and `Standard`. Defaults to `Standard`. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the Virtual WAN. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Virtual WAN. | 

Additionally, all variables are provided as outputs.
