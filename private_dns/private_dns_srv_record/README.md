# azurerm_private_dns_srv_record

Enables you to manage DNS SRV Records within Azure Private DNS.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "private_dns/private_dns_srv_record"   
}

inputs = {
   name = "The name of the DNS SRV Record"   
   resource_group_name = "${resource_group}"   
   # zone_name → set in component_inputs
   record = {
      this_record = {
         priority = "..."         
         weight = "..."         
         port = "..."         
         target = "..."         
      }
      
   }
   
   ttl = "The Time To Live (TTL) of the DNS record in seconds..."   
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

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  The name of the DNS SRV Record. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  Specifies the resource group where the resource exists. Changing this forces a new resource to be created. | 
| **zone_name** | string |  Specifies the Private DNS Zone where the resource exists. Changing this forces a new resource to be created. | 
| **record** | [block](#record-block-structure) |  One or more `record` blocks. | 
| **ttl** | number |  The Time To Live (TTL) of the DNS record in seconds. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **tags** | map |  A mapping of tags to assign to the resource. | 

### `record` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `priority` | string | Yes | - | The priority of the SRV record. |
| `weight` | number | Yes | - | The Weight of the SRV record. |
| `port` | string | Yes | - | The Port the service is listening on. |
| `target` | string | Yes | - | The FQDN of the service. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Private DNS SRV Record ID. | 
| **fqdn** | string | No  | The FQDN of the DNS SRV Record. | 

Additionally, all variables are provided as outputs.
