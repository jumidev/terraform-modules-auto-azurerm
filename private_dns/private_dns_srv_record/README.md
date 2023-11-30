# azurerm_private_dns_srv_record

Enables you to manage DNS SRV Records within Azure Private DNS.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "private_dns/private_dns_srv_record" 
}

inputs = {
   name = "name of private_dns_srv_record" 
   resource_group_name = "${resource_group}" 
   zone_name = "zone_name of private_dns_srv_record" 
   record = {
      example_record = {
         priority = "..."   
         weight = "..."   
         port = "..."   
         target = "..."   
      }
  
   }
 
   ttl = "ttl of private_dns_srv_record" 
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
| **var.name** | string |  The name of the DNS SRV Record. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  Specifies the resource group where the resource exists. Changing this forces a new resource to be created. | 
| **var.zone_name** | string |  Specifies the Private DNS Zone where the resource exists. Changing this forces a new resource to be created. | 
| **var.record** | [block](#record-block-structure) |  One or more `record` blocks. | 
| **var.ttl** | int |  The Time To Live (TTL) of the DNS record in seconds. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.tags** | map |  A mapping of tags to assign to the resource. | 

### `record` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `priority` | string | Yes | - | The priority of the SRV record. |
| `weight` | int | Yes | - | The Weight of the SRV record. |
| `port` | string | Yes | - | The Port the service is listening on. |
| `target` | string | Yes | - | The FQDN of the service. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Private DNS SRV Record ID. | 
| **fqdn** | string | No  | The FQDN of the DNS SRV Record. | 

Additionally, all variables are provided as outputs.
