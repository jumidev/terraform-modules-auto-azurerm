# azurerm_bastion_host

Manages a Bastion Host.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/bastion_host" 
}

inputs = {
   name = "name of bastion_host" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   ip_configuration = "ip_configuration of bastion_host" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  Specifies the name of the Bastion Host. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the resource group in which to create the Bastion Host. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. Review [Azure Bastion Host FAQ](https://docs.microsoft.com/azure/bastion/bastion-faq) for supported locations. | 
| **var.copy_paste_enabled** | bool | False | `True`  |  -  |  Is Copy/Paste feature enabled for the Bastion Host. Defaults to `true`. | 
| **var.file_copy_enabled** | bool | False | `False`  |  -  |  Is File Copy feature enabled for the Bastion Host. Defaults to `false`. | 
| **var.sku** | string | False | `Basic`  |  -  |  The SKU of the Bastion Host. Accepted values are `Basic` and `Standard`. Defaults to `Basic`. | 
| **var.ip_configuration** | block | True | -  |  -  |  A `ip_configuration` block. Changing this forces a new resource to be created. | 
| **var.ip_connect_enabled** | bool | False | `False`  |  -  |  Is IP Connect feature enabled for the Bastion Host. Defaults to `false`. | 
| **var.scale_units** | string | False | `2`  |  `2`, `50`  |  The number of scale units with which to provision the Bastion Host. Possible values are between `2` and `50`. Defaults to `2`. | 
| **var.shareable_link_enabled** | bool | False | `False`  |  -  |  Is Shareable Link feature enabled for the Bastion Host. Defaults to `false`. | 
| **var.tunneling_enabled** | bool | False | `False`  |  -  |  Is Tunneling feature enabled for the Bastion Host. Defaults to `false`. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the resource. | 

### `ip_configuration` block structure

>`name` (string): (REQUIRED) The name of the IP configuration. Changing this forces a new resource to be created.
>`subnet_id` (string): (REQUIRED) Reference to a subnet in which this Bastion Host has been created. Changing this forces a new resource to be created.
>`public_ip_address_id` (string): (REQUIRED) Reference to a Public IP Address to associate with this Bastion Host. Changing this forces a new resource to be created.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Bastion Host. | 
| **dns_name** | string | No  | The FQDN for the Bastion Host. | 

Additionally, all variables are provided as outputs.
