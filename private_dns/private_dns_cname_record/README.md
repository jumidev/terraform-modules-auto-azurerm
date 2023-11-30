# azurerm_private_dns_cname_record

Enables you to manage DNS CNAME Records within Azure Private DNS.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "private_dns/private_dns_cname_record" 
}

inputs = {
   name = "name of private_dns_cname_record" 
   resource_group_name = "${resource_group}" 
   zone_name = "zone_name of private_dns_cname_record" 
   ttl = "ttl of private_dns_cname_record" 
   record = "record of private_dns_cname_record" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.name** | string |  -  |  The name of the DNS CNAME Record. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  -  |  Specifies the resource group where the resource exists. Changing this forces a new resource to be created. | 
| **var.zone_name** | string |  -  |  Specifies the Private DNS Zone where the resource exists. Changing this forces a new resource to be created. | 
| **var.ttl** | string |  `0`, `2147483647`  |  The Time To Live (TTL) of the DNS record in seconds. Possible values are between `0` and `2147483647`. | 
| **var.record** | string |  -  |  The target of the CNAME. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.tags** | map |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Private DNS CNAME Record ID. | 
| **fqdn** | string | No  | The FQDN of the DNS CNAME Record. | 

Additionally, all variables are provided as outputs.
