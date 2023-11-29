# azurerm_private_dns_cname_record

Enables you to manage DNS CNAME Records within Azure Private DNS.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name of the DNS CNAME Record. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | Specifies the resource group where the resource exists. Changing this forces a new resource to be created. | 
| **var.zone_name** | string | True | -  |  -  | Specifies the Private DNS Zone where the resource exists. Changing this forces a new resource to be created. | 
| **var.ttl** | string | True | -  |  `0`, `2147483647`  | The Time To Live (TTL) of the DNS record in seconds. Possible values are between `0` and `2147483647`. | 
| **var.record** | string | True | -  |  -  | The target of the CNAME. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **zone_name** | string  | - | 
| **ttl** | string  | - | 
| **record** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The Private DNS CNAME Record ID. | 
| **fqdn** | string  | The FQDN of the DNS CNAME Record. | 