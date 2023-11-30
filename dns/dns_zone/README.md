# azurerm_dns_zone

Enables you to manage DNS zones within Azure DNS. These zones are hosted on Azure's name servers to which you can delegate the zone from the parent domain.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name of the DNS Zone. Must be a valid domain name. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | Specifies the resource group where the resource exists. Changing this forces a new resource to be created. | 
| **var.soa_record** | block | False | An `soa_record` block. | 
| **var.tags** | map | False | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **soa_record** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The DNS Zone ID. | 
| **max_number_of_record_sets** | int  | Maximum number of Records in the zone. Defaults to `1000`. | 
| **number_of_record_sets** | int  | The number of records already in the zone. | 
| **name_servers** | list  | A list of values that make up the NS record for the zone. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "dns/dns_zone" 
}

inputs = {
   name = "name of dns_zone" 
   resource_group_name = "${resource_group}" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```