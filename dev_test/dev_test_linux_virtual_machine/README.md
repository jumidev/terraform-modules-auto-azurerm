# azurerm_dev_test_linux_virtual_machine

Manages a Linux Virtual Machine within a Dev Test Lab.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the Dev Test Machine. Changing this forces a new resource to be created. | 
| **var.lab_name** | string | True | -  |  -  | Specifies the name of the Dev Test Lab in which the Virtual Machine should be created. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the resource group in which the Dev Test Lab resource exists. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  | Specifies the supported Azure location where the Dev Test Lab exists. Changing this forces a new resource to be created. | 
| **var.gallery_image_reference** | block | True | -  |  -  | A `gallery_image_reference` block. | 
| **var.lab_subnet_name** | string | True | -  |  -  | The name of a Subnet within the Dev Test Virtual Network where this machine should exist. Changing this forces a new resource to be created. | 
| **var.lab_virtual_network_id** | string | True | -  |  -  | The ID of the Dev Test Virtual Network where this Virtual Machine should be created. Changing this forces a new resource to be created. | 
| **var.size** | string | True | -  |  -  | The Machine Size to use for this Virtual Machine, such as `Standard_F2`. Changing this forces a new resource to be created. | 
| **var.storage_type** | string | True | -  |  `Standard`, `Premium`  | The type of Storage to use on this Virtual Machine. Possible values are `Standard` and `Premium`. Chaning this forces a new resource to be created. | 
| **var.username** | string | True | -  |  -  | The Username associated with the local administrator on this Virtual Machine. Changing this forces a new resource to be created. | 
| **var.allow_claim** | bool | False | `True`  |  -  | Can this Virtual Machine be claimed by users? Defaults to `true`. | 
| **var.disallow_public_ip_address** | string | False | -  |  -  | Should the Virtual Machine be created without a Public IP Address? Changing this forces a new resource to be created. | 
| **var.inbound_nat_rule** | block | False | -  |  -  | One or more `inbound_nat_rule` blocks. Changing this forces a new resource to be created. | 
| **var.notes** | string | False | -  |  -  | Any notes about the Virtual Machine. | 
| **var.password** | string | False | -  |  -  | The Password associated with the `username` used to login to this Virtual Machine. Changing this forces a new resource to be created. | 
| **var.ssh_key** | string | False | -  |  -  | The SSH Key associated with the `username` used to login to this Virtual Machine. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **lab_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **gallery_image_reference** | block  | - | 
| **lab_subnet_name** | string  | - | 
| **lab_virtual_network_id** | string  | - | 
| **size** | string  | - | 
| **storage_type** | string  | - | 
| **username** | string  | - | 
| **allow_claim** | bool  | - | 
| **disallow_public_ip_address** | string  | - | 
| **inbound_nat_rule** | block  | - | 
| **notes** | string  | - | 
| **password** | string  | - | 
| **ssh_key** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Virtual Machine. | 
| **fqdn** | string  | The FQDN of the Virtual Machine. | 
| **inbound_nat_rule** | block  | One or more `inbound_nat_rule` blocks. | 
| **unique_identifier** | string  | The unique immutable identifier of the Virtual Machine. | 
| **frontend_port** | string  | The frontend port associated with this Inbound NAT Rule. | 