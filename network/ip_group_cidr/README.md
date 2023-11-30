# azurerm_ip_group_cidr

Manages IP Group CIDR records.~> Warning Do not use this resource at the same time as the `cidrs` property of the`azurerm_ip_group` resource for the same IP Group. Doing so will cause a conflict andCIDRS will be removed.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.ip_group_id** | string | True | The ID of the destination IP Group. Changing this forces a new IP Group CIDR to be created. | 
| **var.cidr** | string | True | The `CIDR` that should be added to the IP Group. Changing this forces a new IP Group CIDR to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **ip_group_id** | string  | - | 
| **cidr** | string  | - | 
| **id** | string  | The ID of the IP Group CIDR. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/ip_group_cidr" 
}

inputs = {
   ip_group_id = "ip_group_id of ip_group_cidr" 
   cidr = "cidr of ip_group_cidr" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```