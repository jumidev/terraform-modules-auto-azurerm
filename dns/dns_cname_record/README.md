# azurerm_dns_cname_record

Enables you to manage DNS CNAME Records within Azure DNS.~> **Note:** [The Azure DNS API has a throttle limit of 500 read (GET) operations per 5 minutes](https://docs.microsoft.com/azure/azure-resource-manager/management/request-limits-and-throttling#network-throttling) - whilst the default read timeouts will work for most cases - in larger configurations you may need to set a larger [read timeout](https://www.terraform.io/language/resources/syntax#operation-timeouts) then the default 5min. Although, we'd generally recommend that you split the resources out into smaller Terraform configurations to avoid the problem entirely.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "dns/dns_cname_record"   
}

inputs = {
   name = "The name of the DNS CNAME Record"   
   resource_group_name = "${resource_group}"   
   # zone_name → set in component_inputs
   ttl = "The Time To Live (TTL) of the DNS record in seconds..."   
}

component_inputs = {
   zone_name = "path/to/dns_zone_component:name"   
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
| **name** | string |  The name of the DNS CNAME Record. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  Specifies the resource group where the DNS Zone (parent resource) exists. Changing this forces a new resource to be created. | 
| **zone_name** | string |  Specifies the DNS Zone where the resource exists. Changing this forces a new resource to be created. | 
| **ttl** | number |  The Time To Live (TTL) of the DNS record in seconds. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **record** | string |  The target of the CNAME. | 
| **target_resource_id** | string |  The Azure resource id of the target object. Conflicts with `record`. | 
| **tags** | map |  A mapping of tags to assign to the resource. ~> **Note:** either `record` OR `target_resource_id` must be specified, but not both. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **tags** | map | No  | A mapping of tags to assign to the resource. ~> **Note:** either `record` OR `target_resource_id` must be specified, but not both. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The DNS CName Record ID. | 
| **fqdn** | string | No  | The FQDN of the DNS CName Record. ~> **Note:** The FQDN of the DNS CNAME Record which has a full-stop at the end is by design. Please see the documentation for more information. | 

Additionally, all variables are provided as outputs.
