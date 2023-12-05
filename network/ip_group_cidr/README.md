# azurerm_ip_group_cidr

Manages IP Group CIDR records.~> Warning Do not use this resource at the same time as the `cidrs` property of the`azurerm_ip_group` resource for the same IP Group. Doing so will cause a conflict andCIDRS will be removed.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/ip_group_cidr"   
}

inputs = {
   # ip_group_id → set in tfstate_inputs
   cidr = "The `CIDR` that should be added to the IP Group"   
}

tfstate_inputs = {
   ip_group_id = "path/to/ip_group_component:id"   
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
| **ip_group_id** | string |  The ID of the destination IP Group. Changing this forces a new IP Group CIDR to be created. | 
| **cidr** | string |  The `CIDR` that should be added to the IP Group. Changing this forces a new IP Group CIDR to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the IP Group CIDR. | 

Additionally, all variables are provided as outputs.
