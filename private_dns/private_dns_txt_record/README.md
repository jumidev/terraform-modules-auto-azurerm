# azurerm_private_dns_txt_record

Enables you to manage DNS TXT Records within Azure Private DNS.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "private_dns/private_dns_txt_record"   
}

inputs = {
   name = "The name of the DNS TXT Record"   
   resource_group_name = "${resource_group}"   
   # zone_name → set in tfstate_inputs
   record = {
      this_record = {
         value = "..."         
      }
      
   }
   
   ttl = "The Time To Live (TTL) of the DNS record in seconds..."   
}

tfstate_inputs = {
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
| **name** | string |  The name of the DNS TXT Record. Changing this forces a new resource to be created. | 
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
| `value` | string | Yes | - | The value of the TXT record. Max length: 1024 characters |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Private DNS TXT Record ID. | 
| **fqdn** | string | No  | The FQDN of the DNS TXT Record. | 

Additionally, all variables are provided as outputs.
