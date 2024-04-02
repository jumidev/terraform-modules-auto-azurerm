# azurerm_dns_a_record



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "dns/dns_a_record"   
}

inputs = {
   name = "The name of the DNS A Record"   
   resource_group_name = "${resource_group}"   
   # zone_name → set in component_inputs
   ttl = "300"   
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

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  The name of the DNS A Record. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  Specifies the resource group where the DNS Zone (parent resource) exists. Changing this forces a new resource to be created. | 
| **zone_name** | string |  -  |  Specifies the DNS Zone where the resource exists. Changing this forces a new resource to be created. ~> **Note:** The `zone_name` should be the name of resource `azurerm_dns_zone` instead of `azurerm_private_dns_zone`. | 
| **ttl** | number |  `300`  |  The Time To Live (TTL) of the DNS record in seconds. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **records** | string |  List of IPv4 Addresses. Conflicts with `target_resource_id`. | 
| **target_resource_id** | string |  The Azure resource id of the target object. Conflicts with `records`. | 
| **tags** | map |  A mapping of tags to assign to the resource. ~> **Note:** either `records` OR `target_resource_id` must be specified, but not both. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **tags** | map | No  | A mapping of tags to assign to the resource. ~> **Note:** either `records` OR `target_resource_id` must be specified, but not both. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The DNS A Record ID. | 
| **fqdn** | string | No  | The FQDN of the DNS A Record. ~> **Note:** The FQDN of the DNS A Record which has a full-stop at the end is by design. Please [see the documentation](https://en.wikipedia.org/wiki/Fully_qualified_domain_name) for more information. | 

Additionally, all variables are provided as outputs.
