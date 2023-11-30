# azurerm_dns_mx_record

Enables you to manage DNS MX Records within Azure DNS.~> **Note:** [The Azure DNS API has a throttle limit of 500 read (GET) operations per 5 minutes](https://docs.microsoft.com/azure/azure-resource-manager/management/request-limits-and-throttling#network-throttling) - whilst the default read timeouts will work for most cases - in larger configurations you may need to set a larger [read timeout](https://www.terraform.io/language/resources/syntax#operation-timeouts) then the default 5min. Although, we'd generally recommend that you split the resources out into smaller Terraform configurations to avoid the problem entirely.

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | False | `@`  |  The name of the DNS MX Record. Defaults to `@` (root). Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  Specifies the resource group where the DNS Zone (parent resource) exists. Changing this forces a new resource to be created. | 
| **var.zone_name** | string | True | -  |  Specifies the DNS Zone where the resource exists. Changing this forces a new resource to be created. | 
| **var.ttl** | int | True | -  |  The Time To Live (TTL) of the DNS record in seconds. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **zone_name** | string  | - | 
| **ttl** | int  | - | 
| **id** | string  | The DNS MX Record ID. | 
| **fqdn** | string  | The FQDN of the DNS MX Record. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "dns/dns_mx_record" 
}

inputs = {
   resource_group_name = "${resource_group}" 
   zone_name = "zone_name of dns_mx_record" 
   ttl = "ttl of dns_mx_record" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```