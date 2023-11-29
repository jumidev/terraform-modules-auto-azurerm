# azurerm_bastion_host

Manages a Bastion Host.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Bastion Host. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the Bastion Host. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. Review [Azure Bastion Host FAQ](https://docs.microsoft.com/azure/bastion/bastion-faq) for supported locations. | 
| **copy_paste_enabled** | bool | False | `True`  |  -  | Is Copy/Paste feature enabled for the Bastion Host. Defaults to `true`. | 
| **file_copy_enabled** | bool | False | `False`  |  -  | Is File Copy feature enabled for the Bastion Host. Defaults to `false`. | 
| **sku** | string | False | `Basic`  |  -  | The SKU of the Bastion Host. Accepted values are `Basic` and `Standard`. Defaults to `Basic`. | 
| **ip_configuration** | block | True | -  |  -  | A `ip_configuration` block. Changing this forces a new resource to be created. | 
| **ip_connect_enabled** | bool | False | `False`  |  -  | Is IP Connect feature enabled for the Bastion Host. Defaults to `false`. | 
| **scale_units** | string | False | `2`  |  `2`, `50`  | The number of scale units with which to provision the Bastion Host. Possible values are between `2` and `50`. Defaults to `2`. | 
| **shareable_link_enabled** | bool | False | `False`  |  -  | Is Shareable Link feature enabled for the Bastion Host. Defaults to `false`. | 
| **tunneling_enabled** | bool | False | `False`  |  -  | Is Tunneling feature enabled for the Bastion Host. Defaults to `false`. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

