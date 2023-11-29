# azurerm_ip_group

Manages an IP group that contains a list of CIDRs and/or IP addresses.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the IP group. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the IP group. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.cidrs** | list | False | -  |  -  | A list of CIDRs or IP addresses. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **cidrs** | list  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the IP group. | 
| **firewall_ids** | list  | A list of ID of Firewall. | 
| **firewall_policy_ids** | list  | A list of ID of Firewall Policy`. | 