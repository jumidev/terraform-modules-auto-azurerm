# azurerm_private_dns_cname_record

Enables you to manage DNS CNAME Records within Azure Private DNS.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the DNS CNAME Record. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | Specifies the resource group where the resource exists. Changing this forces a new resource to be created. | 
| **zone_name** | string | True | -  |  -  | Specifies the Private DNS Zone where the resource exists. Changing this forces a new resource to be created. | 
| **ttl** | string | True | -  |  `0`, `2147483647`  | The Time To Live (TTL) of the DNS record in seconds. Possible values are between `0` and `2147483647`. | 
| **record** | string | True | -  |  -  | The target of the CNAME. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

