# azurerm_dns_cname_record

Enables you to manage DNS CNAME Records within Azure DNS.~> **Note:** [The Azure DNS API has a throttle limit of 500 read (GET) operations per 5 minutes](https://docs.microsoft.com/azure/azure-resource-manager/management/request-limits-and-throttling#network-throttling) - whilst the default read timeouts will work for most cases - in larger configurations you may need to set a larger [read timeout](https://www.terraform.io/language/resources/syntax#operation-timeouts) then the default 5min. Although, we'd generally recommend that you split the resources out into smaller Terraform configurations to avoid the problem entirely.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the DNS CNAME Record. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | Specifies the resource group where the DNS Zone (parent resource) exists. Changing this forces a new resource to be created. | 
| **zone_name** | string | True | -  |  -  | Specifies the DNS Zone where the resource exists. Changing this forces a new resource to be created. | 
| **ttl** | int | True | -  |  -  | The Time To Live (TTL) of the DNS record in seconds. | 
| **record** | string | False | -  |  -  | The target of the CNAME. | 
| **target_resource_id** | string | False | -  |  -  | The Azure resource id of the target object. Conflicts with `record`. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

