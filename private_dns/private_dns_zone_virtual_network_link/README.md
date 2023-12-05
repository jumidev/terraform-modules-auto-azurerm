# azurerm_private_dns_zone_virtual_network_link

Enables you to manage Private DNS zone Virtual Network Links. These Links enable DNS resolution and registration inside Azure Virtual Networks using Azure Private DNS.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "private_dns/private_dns_zone_virtual_network_link"   
}

inputs = {
   name = "The name of the Private DNS Zone Virtual Network Link..."   
   # private_dns_zone_name → set in tfstate_inputs
   resource_group_name = "${resource_group}"   
   # virtual_network_id → set in tfstate_inputs
}

tfstate_inputs = {
   private_dns_zone_name = "path/to/private_dns_zone_component:name"   
   virtual_network_id = "path/to/virtual_network_component:id"   
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
| **name** | string |  The name of the Private DNS Zone Virtual Network Link. Changing this forces a new resource to be created. | 
| **private_dns_zone_name** | string |  The name of the Private DNS zone (without a terminating dot). Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  Specifies the resource group where the Private DNS Zone exists. Changing this forces a new resource to be created. | 
| **virtual_network_id** | string |  The ID of the Virtual Network that should be linked to the DNS Zone. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **registration_enabled** | bool |  `False`  |  Is auto-registration of virtual machine records in the virtual network in the Private DNS zone enabled? Defaults to `false`. | 
| **tags** | map |  -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Private DNS Zone Virtual Network Link. | 

Additionally, all variables are provided as outputs.
