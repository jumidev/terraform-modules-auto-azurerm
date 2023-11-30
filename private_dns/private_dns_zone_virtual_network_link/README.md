# azurerm_private_dns_zone_virtual_network_link

Enables you to manage Private DNS zone Virtual Network Links. These Links enable DNS resolution and registration inside Azure Virtual Networks using Azure Private DNS.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "private_dns/private_dns_zone_virtual_network_link" 
}

inputs = {
   name = "name of private_dns_zone_virtual_network_link" 
   private_dns_zone_name = "private_dns_zone_name of private_dns_zone_virtual_network_link" 
   resource_group_name = "${resource_group}" 
   virtual_network_id = "virtual_network_id of private_dns_zone_virtual_network_link" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name of the Private DNS Zone Virtual Network Link. Changing this forces a new resource to be created. | 
| **var.private_dns_zone_name** | string | True | -  |  The name of the Private DNS zone (without a terminating dot). Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  Specifies the resource group where the Private DNS Zone exists. Changing this forces a new resource to be created. | 
| **var.virtual_network_id** | string | True | -  |  The ID of the Virtual Network that should be linked to the DNS Zone. Changing this forces a new resource to be created. | 
| **var.registration_enabled** | bool | False | `False`  |  Is auto-registration of virtual machine records in the virtual network in the Private DNS zone enabled? Defaults to `false`. | 
| **var.tags** | map | False | -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Private DNS Zone Virtual Network Link. | 

Additionally, all variables are provided as outputs.
