# azurerm_private_dns_srv_record

Enables you to manage DNS SRV Records within Azure Private DNS.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name of the DNS SRV Record. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | Specifies the resource group where the resource exists. Changing this forces a new resource to be created. | 
| **var.zone_name** | string | True | Specifies the Private DNS Zone where the resource exists. Changing this forces a new resource to be created. | 
| **var.record** | block | True | One or more `record` blocks. | 
| **var.ttl** | int | True | The Time To Live (TTL) of the DNS record in seconds. | 
| **var.tags** | map | False | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **zone_name** | string  | - | 
| **record** | block  | - | 
| **ttl** | int  | - | 
| **tags** | map  | - | 
| **id** | string  | The Private DNS SRV Record ID. | 
| **fqdn** | string  | The FQDN of the DNS SRV Record. | 