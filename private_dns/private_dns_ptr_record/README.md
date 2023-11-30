# azurerm_private_dns_ptr_record

Enables you to manage DNS PTR Records within Azure Private DNS.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "private_dns/private_dns_ptr_record" 
}

inputs = {
   name = "name of private_dns_ptr_record" 
   resource_group_name = "${resource_group}" 
   zone_name = "zone_name of private_dns_ptr_record" 
   ttl = "ttl of private_dns_ptr_record" 
   records = "records of private_dns_ptr_record" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name of the DNS PTR Record. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | Specifies the resource group where the resource exists. Changing this forces a new resource to be created. | 
| **var.zone_name** | string | True | Specifies the Private DNS Zone where the resource exists. Changing this forces a new resource to be created. | 
| **var.ttl** | int | True | The Time To Live (TTL) of the DNS record in seconds. | 
| **var.records** | string | True | List of Fully Qualified Domain Names. | 
| **var.tags** | map | False | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Private DNS PTR Record ID. | 
| **fqdn** | string | No  | The FQDN of the DNS PTR Record. | 

Additionally, all variables are provided as outputs.
