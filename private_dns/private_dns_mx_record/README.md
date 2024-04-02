# azurerm_private_dns_mx_record



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "private_dns/private_dns_mx_record"   
}

inputs = {
   resource_group_name = "${resource_group}"   
   # zone_name → set in component_inputs
   record = {
      this_record = {
         preference = "..."         
         exchange = "..."         
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
| **resource_group_name** | string |  Specifies the resource group where the resource exists. Changing this forces a new resource to be created. | 
| **zone_name** | string |  Specifies the Private DNS Zone where the resource exists. Changing this forces a new resource to be created. | 
| **record** | [block](#record-block-structure) |  One or more `record` blocks. | 
| **ttl** | number |  The Time To Live (TTL) of the DNS record in seconds. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  The name of the DNS MX Record. Changing this forces a new resource to be created. Default to '@' for root zone entry. | 
| **tags** | map |  A mapping of tags to assign to the resource. | 

### `record` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `preference` | string | Yes | - | The preference of the MX record. |
| `exchange` | string | Yes | - | The FQDN of the exchange to MX record points to. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **exchange** | string | No  | The FQDN of the exchange to MX record points to. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The Private DNS MX Record ID. | 
| **fqdn** | string | No  | The FQDN of the DNS MX Record. | 

Additionally, all variables are provided as outputs.
