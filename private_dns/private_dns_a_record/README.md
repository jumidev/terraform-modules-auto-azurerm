# azurerm_private_dns_a_record

Enables you to manage DNS A Records within Azure Private DNS.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "private_dns/private_dns_a_record" 
}

inputs = {
   name = "name of private_dns_a_record" 
   resource_group_name = "${resource_group}" 
   zone_name = "zone_name of private_dns_a_record" 
   ttl = "ttl of private_dns_a_record" 
   records = "records of private_dns_a_record" 
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
| **var.name** | string |  The name of the DNS A Record. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  Specifies the resource group where the Private DNS Zone exists. Changing this forces a new resource to be created. | 
| **var.zone_name** | string |  Specifies the Private DNS Zone where the resource exists. Changing this forces a new resource to be created. | 
| **var.ttl** | int |  The Time To Live (TTL) of the DNS record in seconds. | 
| **var.records** | string |  List of IPv4 Addresses. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.tags** | map |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Private DNS A Record ID. | 
| **fqdn** | string | No  | The FQDN of the DNS A Record. | 

Additionally, all variables are provided as outputs.
