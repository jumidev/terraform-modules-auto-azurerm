# azurerm_private_dns_ptr_record

Enables you to manage DNS PTR Records within Azure Private DNS.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "private_dns/private_dns_ptr_record"   
}

inputs = {
   name = "The name of the DNS PTR Record"   
   resource_group_name = "${resource_group}"   
   # zone_name → set in component_inputs
   ttl = "The Time To Live (TTL) of the DNS record in seconds..."   
   records = "List of Fully Qualified Domain Names"   
}

component_inputs = {
   zone_name = "path/to/private_dns_zone_component:name"   
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
| **name** | string |  The name of the DNS PTR Record. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  Specifies the resource group where the resource exists. Changing this forces a new resource to be created. | 
| **zone_name** | string |  Specifies the Private DNS Zone where the resource exists. Changing this forces a new resource to be created. | 
| **ttl** | number |  The Time To Live (TTL) of the DNS record in seconds. | 
| **records** | string |  List of Fully Qualified Domain Names. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **tags** | map |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **tags** | map | No  | A mapping of tags to assign to the resource. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The Private DNS PTR Record ID. | 
| **fqdn** | string | No  | The FQDN of the DNS PTR Record. | 

Additionally, all variables are provided as outputs.
