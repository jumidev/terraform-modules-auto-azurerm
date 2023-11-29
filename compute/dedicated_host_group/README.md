# azurerm_dedicated_host_group

Manage a Dedicated Host Group.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Dedicated Host Group. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | Specifies the name of the resource group the Dedicated Host Group is located in. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | The Azure location where the Dedicated Host Group exists. Changing this forces a new resource to be created. | 
| **platform_fault_domain_count** | int | True | -  |  -  | The number of fault domains that the Dedicated Host Group spans. Changing this forces a new resource to be created. | 
| **automatic_placement_enabled** | bool | False | `False`  |  -  | Would virtual machines or virtual machine scale sets be placed automatically on this Dedicated Host Group? Defaults to `false`. Changing this forces a new resource to be created. | 
| **zone** | string | False | -  |  -  | Specifies the Availability Zone in which this Dedicated Host Group should be located. Changing this forces a new Dedicated Host Group to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

