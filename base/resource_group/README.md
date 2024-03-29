# azurerm_resource_group

Manages a Resource Group.-> **Note:** Azure automatically deletes any Resources nested within the Resource Group when a Resource Group is deleted.-> Version 2.72 and later of the Azure Provider include a Feature Toggle which can error if there are any Resources left within the Resource Group at deletion time. This Feature Toggle is disabled in 2.x but enabled by default from 3.0 onwards, and is intended to avoid the unintentional destruction of resources managed outside of Terraform (for example, provisioned by an ARM Template). See [the Features block documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/features-block) for more information on Feature Toggles within Terraform.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "base/resource_group"   
}

inputs = {
   location = "${location}"   
   name = "The Name which should be used for this Resource Group..."   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```
## Optional associated resource


### `private_dns_zone_virtual_network_link` 

If set, makes a **azurerm_private_dns_zone_virtual_network_link** - With the following options:

| attribute | type | required? | default |
| --------- | ---- | --------- | ------- |
| `name` | string | True | null |
| `private_dns_zone_name` | string | True | null |
| `virtual_network_id` | string | True | null |
| `registration_enabled` | bool | False | false |
| `tags` | map | False | null |


Example component snippet:

```hcl
inputs = {
   private_dns_zone_virtual_network_link = {
      name = "..."      
      registration_enabled = false      
      tags = "..."      
   }
   
}

component_inputs = {
   private_dns_zone_virtual_network_link.private_dns_zone_name = "path/to/private_dns_zone_component:name"   
   private_dns_zone_virtual_network_link.virtual_network_id = "path/to/virtual_network_component:id"   
}

```


## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **location** | string |  The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created. | 
| **name** | string |  The Name which should be used for this Resource Group. Changing this forces a new Resource Group to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **managed_by** | string |  The ID of the resource or application that manages this Resource Group. | 
| **tags** | map |  A mapping of tags which should be assigned to the Resource Group. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **tags** | map | No  | A mapping of tags which should be assigned to the Resource Group. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Resource Group. | 

Additionally, all variables are provided as outputs.
