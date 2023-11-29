# azurerm_ip_group

Manages an IP group that contains a list of CIDRs and/or IP addresses.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the IP group. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the IP group. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **cidrs** | list | False | -  |  -  | A list of CIDRs or IP addresses. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

