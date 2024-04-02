# azurerm_dns_caa_record



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "dns/dns_caa_record"   
}

inputs = {
   name = "The name of the DNS CAA Record"   
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
| **name** | string |  The name of the DNS CAA Record. If you are creating the record in the apex of the zone use `"@"` as the name. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  Specifies the resource group where the DNS Zone (parent resource) exists. Changing this forces a new resource to be created. | 
| **zone_name** | string |  Specifies the DNS Zone where the resource exists. Changing this forces a new resource to be created. | 
| **ttl** | number |  The Time To Live (TTL) of the DNS record in seconds. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **value** | string | No  | A property value such as a registrar domain. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The DNS CAA Record ID. | 
| **fqdn** | string | No  | The FQDN of the DNS CAA Record. | 

Additionally, all variables are provided as outputs.
