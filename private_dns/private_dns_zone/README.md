# azurerm_private_dns_zone

Enables you to manage Private DNS zones within Azure DNS. These zones are hosted on Azure's name servers.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name of the Private DNS Zone. Must be a valid domain name. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | Specifies the resource group where the resource exists. Changing this forces a new resource to be created. | 
| **var.soa_record** | block | False | An `soa_record` block. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **soa_record** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The Private DNS Zone ID. | 
| **soa_record** | block  | A `soa_record` block. | 
| **number_of_record_sets** | int  | The current number of record sets in this Private DNS zone. | 
| **max_number_of_record_sets** | int  | The maximum number of record sets that can be created in this Private DNS zone. | 
| **max_number_of_virtual_network_links** | int  | The maximum number of virtual networks that can be linked to this Private DNS zone. | 
| **max_number_of_virtual_network_links_with_registration** | int  | The maximum number of virtual networks that can be linked to this Private DNS zone with registration enabled. | 
| **fqdn** | string  | The fully qualified domain name of the Record Set. | 
| **host_name** | string  | The domain name of the authoritative name server for the SOA record. | 
| **serial_number** | string  | The serial number for the SOA record. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "private_dns/private_dns_zone" 
}

inputs = {
   name = "name of private_dns_zone" 
   resource_group_name = "${resource_group}" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```