# azurerm_private_dns_ptr_record

Enables you to manage DNS PTR Records within Azure Private DNS.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name of the DNS PTR Record. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | Specifies the resource group where the resource exists. Changing this forces a new resource to be created. | 
| **var.zone_name** | string | True | -  |  -  | Specifies the Private DNS Zone where the resource exists. Changing this forces a new resource to be created. | 
| **var.ttl** | int | True | -  |  -  | The Time To Live (TTL) of the DNS record in seconds. | 
| **var.records** | string | True | -  |  -  | List of Fully Qualified Domain Names. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **zone_name** | string  | - | 
| **ttl** | int  | - | 
| **records** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The Private DNS PTR Record ID. | 
| **fqdn** | string  | The FQDN of the DNS PTR Record. | 