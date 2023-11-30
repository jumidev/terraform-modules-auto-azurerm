# azurerm_dns_caa_record

Enables you to manage DNS CAA Records within Azure DNS.~> **Note:** [The Azure DNS API has a throttle limit of 500 read (GET) operations per 5 minutes](https://docs.microsoft.com/azure/azure-resource-manager/management/request-limits-and-throttling#network-throttling) - whilst the default read timeouts will work for most cases - in larger configurations you may need to set a larger [read timeout](https://www.terraform.io/language/resources/syntax#operation-timeouts) then the default 5min. Although, we'd generally recommend that you split the resources out into smaller Terraform configurations to avoid the problem entirely.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "dns/dns_caa_record" 
}

inputs = {
   name = "name of dns_caa_record" 
   resource_group_name = "${resource_group}" 
   zone_name = "zone_name of dns_caa_record" 
   ttl = "ttl of dns_caa_record" 
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
| **var.name** | string |  The name of the DNS CAA Record. If you are creating the record in the apex of the zone use `"@"` as the name. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  Specifies the resource group where the DNS Zone (parent resource) exists. Changing this forces a new resource to be created. | 
| **var.zone_name** | string |  Specifies the DNS Zone where the resource exists. Changing this forces a new resource to be created. | 
| **var.ttl** | int |  The Time To Live (TTL) of the DNS record in seconds. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The DNS CAA Record ID. | 
| **fqdn** | string | No  | The FQDN of the DNS CAA Record. | 

Additionally, all variables are provided as outputs.
