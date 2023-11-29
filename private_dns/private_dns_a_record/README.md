# azurerm_private_dns_a_record

Enables you to manage DNS A Records within Azure Private DNS.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the DNS A Record. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | Specifies the resource group where the Private DNS Zone exists. Changing this forces a new resource to be created. | 
| **zone_name** | string | True | -  |  -  | Specifies the Private DNS Zone where the resource exists. Changing this forces a new resource to be created. | 
| **ttl** | int | True | -  |  -  | The Time To Live (TTL) of the DNS record in seconds. | 
| **records** | string | True | -  |  -  | List of IPv4 Addresses. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

