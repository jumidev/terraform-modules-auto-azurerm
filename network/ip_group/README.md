# azurerm_ip_group

Manages an IP group that contains a list of CIDRs and/or IP addresses.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/ip_group" 
}

inputs = {
   name = "name of ip_group" 
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
| **var.name** | string |  Specifies the name of the IP group. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  The name of the resource group in which to create the IP group. Changing this forces a new resource to be created. | 
| **var.location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.cidrs** | list |  A list of CIDRs or IP addresses. | 
| **var.tags** | map |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the IP group. | 
| **firewall_ids** | list | No  | A list of ID of Firewall. | 
| **firewall_policy_ids** | list | No  | A list of ID of Firewall Policy`. | 

Additionally, all variables are provided as outputs.
