# azurerm_bastion_host



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/bastion_host"   
}

inputs = {
   name = "Specifies the name of the Bastion Host"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   ip_configuration = {
      name = "..."      
      # subnet_id → set in component_inputs
      # public_ip_address_id → set in component_inputs
   }
   
}

component_inputs = {
   ip_configuration.subnet_id = "path/to/subnet_component:id"   
   ip_configuration.public_ip_address_id = "path/to/public_ip_component:id"   
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
| **name** | string |  Specifies the name of the Bastion Host. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which to create the Bastion Host. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. Review [Azure Bastion Host FAQ](https://docs.microsoft.com/azure/bastion/bastion-faq) for supported locations. | 
| **ip_configuration** | [block](#ip_configuration-block-structure) |  A `ip_configuration` block. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **copy_paste_enabled** | bool |  `True`  |  -  |  Is Copy/Paste feature enabled for the Bastion Host. Defaults to `true`. | 
| **file_copy_enabled** | bool |  `False`  |  -  |  Is File Copy feature enabled for the Bastion Host. Defaults to `false`. ~> **Note:** `file_copy_enabled` is only supported when `sku` is `Standard`. | 
| **sku** | string |  `Basic`  |  -  |  The SKU of the Bastion Host. Accepted values are `Basic` and `Standard`. Defaults to `Basic`. ~> **Note** Downgrading the SKU will force a new resource to be created. | 
| **ip_connect_enabled** | bool |  `False`  |  -  |  Is IP Connect feature enabled for the Bastion Host. Defaults to `false`. ~> **Note:** `ip_connect_enabled` is only supported when `sku` is `Standard`. | 
| **scale_units** | number |  `2`  |  `sku`, `Standard`  |  The number of scale units with which to provision the Bastion Host. Possible values are between `2` and `50`. Defaults to `2`. ~> **Note:** `scale_units` only can be changed when `sku` is `Standard`. `scale_units` is always `2` when `sku` is `Basic`. | 
| **shareable_link_enabled** | bool |  `False`  |  -  |  Is Shareable Link feature enabled for the Bastion Host. Defaults to `false`. ~> **Note:** `shareable_link_enabled` is only supported when `sku` is `Standard`. | 
| **tunneling_enabled** | bool |  `False`  |  -  |  Is Tunneling feature enabled for the Bastion Host. Defaults to `false`. ~> **Note:** `tunneling_enabled` is only supported when `sku` is `Standard`. | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 

### `ip_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the IP configuration. Changing this forces a new resource to be created. |
| `subnet_id` | string | Yes | - | Reference to a subnet in which this Bastion Host has been created. Changing this forces a new resource to be created. ~> **Note:** The Subnet used for the Bastion Host must have the name 'AzureBastionSubnet' and the subnet mask must be at least a '/26'. |
| `public_ip_address_id` | string | Yes | - | Reference to a Public IP Address to associate with this Bastion Host. Changing this forces a new resource to be created. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **public_ip_address_id** | string | No  | Reference to a Public IP Address to associate with this Bastion Host. Changing this forces a new resource to be created. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Bastion Host. | 
| **dns_name** | string | No  | The FQDN for the Bastion Host. | 

Additionally, all variables are provided as outputs.
