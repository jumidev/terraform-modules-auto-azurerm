# azurerm_dev_test_windows_virtual_machine

Manages a Windows Virtual Machine within a Dev Test Lab.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Dev Test Machine. Changing this forces a new resource to be created. | 
| **lab_name** | string | True | -  |  -  | Specifies the name of the Dev Test Lab in which the Virtual Machine should be created. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which the Dev Test Lab resource exists. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the Dev Test Lab exists. Changing this forces a new resource to be created. | 
| **gallery_image_reference** | block | True | -  |  -  | A `gallery_image_reference` block. | 
| **lab_subnet_name** | string | True | -  |  -  | The name of a Subnet within the Dev Test Virtual Network where this machine should exist. Changing this forces a new resource to be created. | 
| **lab_virtual_network_id** | string | True | -  |  -  | The ID of the Dev Test Virtual Network where this Virtual Machine should be created. Changing this forces a new resource to be created. | 
| **password** | string | True | -  |  -  | The Password associated with the `username` used to login to this Virtual Machine. Changing this forces a new resource to be created. | 
| **size** | string | True | -  |  -  | The Machine Size to use for this Virtual Machine, such as `Standard_F2`. Changing this forces a new resource to be created. | 
| **storage_type** | string | True | -  |  `Standard`, `Premium`  | The type of Storage to use on this Virtual Machine. Possible values are `Standard` and `Premium`. Changing this forces a new resource to be created. | 
| **username** | string | True | -  |  -  | The Username associated with the local administrator on this Virtual Machine. Changing this forces a new resource to be created. | 
| **allow_claim** | bool | False | `True`  |  -  | Can this Virtual Machine be claimed by users? Defaults to `true`. | 
| **disallow_public_ip_address** | string | False | -  |  -  | Should the Virtual Machine be created without a Public IP Address? Changing this forces a new resource to be created. | 
| **inbound_nat_rule** | block | False | -  |  -  | One or more `inbound_nat_rule` blocks. Changing this forces a new resource to be created. | 
| **notes** | string | False | -  |  -  | Any notes about the Virtual Machine. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

