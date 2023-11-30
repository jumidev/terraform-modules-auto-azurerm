# azurerm_private_dns_mx_record

Enables you to manage DNS MX Records within Azure Private DNS.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "private_dns/private_dns_mx_record" 
}

inputs = {
   resource_group_name = "${resource_group}" 
   zone_name = "zone_name of private_dns_mx_record" 
   record = {
      example_record = {
         preference = "..."   
         exchange = "..."   
      }
  
   }
 
   ttl = "ttl of private_dns_mx_record" 
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
| **var.resource_group_name** | string  Specifies the resource group where the resource exists. Changing this forces a new resource to be created. | 
| **var.zone_name** | string  Specifies the Private DNS Zone where the resource exists. Changing this forces a new resource to be created. | 
| **var.record** | block  One or more `record` blocks. | 
| **var.ttl** | int  The Time To Live (TTL) of the DNS record in seconds. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.name** | string  The name of the DNS MX Record. Changing this forces a new resource to be created. Default to '@' for root zone entry. | 
| **var.tags** | map  A mapping of tags to assign to the resource. | 

### `record` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `preference` | string | Yes | - | The preference of the MX record. |
| `exchange` | string | Yes | - | The FQDN of the exchange to MX record points to. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Private DNS MX Record ID. | 
| **fqdn** | string | No  | The FQDN of the DNS MX Record. | 

Additionally, all variables are provided as outputs.
