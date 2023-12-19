# azurerm_private_dns_cname_record

Enables you to manage DNS CNAME Records within Azure Private DNS.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "private_dns/private_dns_cname_record"   
}

inputs = {
   name = "The name of the DNS CNAME Record"   
   resource_group_name = "${resource_group}"   
   # zone_name → set in component_inputs
   ttl = "The Time To Live (TTL) of the DNS record in seconds..."   
   record = "The target of the CNAME"   
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

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  The name of the DNS CNAME Record. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  Specifies the resource group where the resource exists. Changing this forces a new resource to be created. | 
| **zone_name** | string |  -  |  Specifies the Private DNS Zone where the resource exists. Changing this forces a new resource to be created. | 
| **ttl** | string |  `0`, `2147483647`  |  The Time To Live (TTL) of the DNS record in seconds. Possible values are between `0` and `2147483647`. | 
| **record** | string |  -  |  The target of the CNAME. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **tags** | map |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Private DNS CNAME Record ID. | 
| **fqdn** | string | No  | The FQDN of the DNS CNAME Record. | 

Additionally, all variables are provided as outputs.
