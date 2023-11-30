# azurerm_dev_test_linux_virtual_machine

Manages a Linux Virtual Machine within a Dev Test Lab.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "dev_test/dev_test_linux_virtual_machine" 
}

inputs = {
   name = "name of dev_test_linux_virtual_machine" 
   lab_name = "lab_name of dev_test_linux_virtual_machine" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   gallery_image_reference = {
      example_gallery_image_reference = {
         offer = "..."   
         publisher = "..."   
         sku = "..."   
         version = "..."   
      }
  
   }
 
   lab_subnet_name = "lab_subnet_name of dev_test_linux_virtual_machine" 
   lab_virtual_network_id = "lab_virtual_network_id of dev_test_linux_virtual_machine" 
   size = "size of dev_test_linux_virtual_machine" 
   storage_type = "storage_type of dev_test_linux_virtual_machine" 
   username = "username of dev_test_linux_virtual_machine" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.name** | string |  -  |  Specifies the name of the Dev Test Machine. Changing this forces a new resource to be created. | 
| **var.lab_name** | string |  -  |  Specifies the name of the Dev Test Lab in which the Virtual Machine should be created. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  -  |  The name of the resource group in which the Dev Test Lab resource exists. Changing this forces a new resource to be created. | 
| **var.location** | string |  -  |  Specifies the supported Azure location where the Dev Test Lab exists. Changing this forces a new resource to be created. | 
| **var.gallery_image_reference** | block |  -  |  A `gallery_image_reference` block. | 
| **var.lab_subnet_name** | string |  -  |  The name of a Subnet within the Dev Test Virtual Network where this machine should exist. Changing this forces a new resource to be created. | 
| **var.lab_virtual_network_id** | string |  -  |  The ID of the Dev Test Virtual Network where this Virtual Machine should be created. Changing this forces a new resource to be created. | 
| **var.size** | string |  -  |  The Machine Size to use for this Virtual Machine, such as `Standard_F2`. Changing this forces a new resource to be created. | 
| **var.storage_type** | string |  `Standard`, `Premium`  |  The type of Storage to use on this Virtual Machine. Possible values are `Standard` and `Premium`. Chaning this forces a new resource to be created. | 
| **var.username** | string |  -  |  The Username associated with the local administrator on this Virtual Machine. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.allow_claim** | bool |  `True`  |  Can this Virtual Machine be claimed by users? Defaults to `true`. | 
| **var.disallow_public_ip_address** | string |  -  |  Should the Virtual Machine be created without a Public IP Address? Changing this forces a new resource to be created. | 
| **var.inbound_nat_rule** | block |  -  |  One or more `inbound_nat_rule` blocks. Changing this forces a new resource to be created. | 
| **var.notes** | string |  -  |  Any notes about the Virtual Machine. | 
| **var.password** | string |  -  |  The Password associated with the `username` used to login to this Virtual Machine. Changing this forces a new resource to be created. | 
| **var.ssh_key** | string |  -  |  The SSH Key associated with the `username` used to login to this Virtual Machine. Changing this forces a new resource to be created. | 
| **var.tags** | map |  -  |  A mapping of tags to assign to the resource. | 

### `gallery_image_reference` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `offer` | string | Yes | - | The Offer of the Gallery Image. Changing this forces a new resource to be created. |
| `publisher` | string | Yes | - | The Publisher of the Gallery Image. Changing this forces a new resource to be created. |
| `sku` | string | Yes | - | The SKU of the Gallery Image. Changing this forces a new resource to be created. |
| `version` | string | Yes | - | The Version of the Gallery Image. Changing this forces a new resource to be created. |

### `inbound_nat_rule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `protocol` | string | Yes | - | The Protocol used for this NAT Rule. Possible values are 'Tcp' and 'Udp'. |
| `backend_port` | string | Yes | - | The Backend Port associated with this NAT Rule. Changing this forces a new resource to be created. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Virtual Machine. | 
| **fqdn** | string | No  | The FQDN of the Virtual Machine. | 
| **inbound_nat_rule** | block | No  | One or more `inbound_nat_rule` blocks. | 
| **unique_identifier** | string | No  | The unique immutable identifier of the Virtual Machine. | 
| **frontend_port** | string | No  | The frontend port associated with this Inbound NAT Rule. | 

Additionally, all variables are provided as outputs.
