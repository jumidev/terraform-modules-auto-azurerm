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
   record = "record of private_dns_mx_record" 
   ttl = "ttl of private_dns_mx_record" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | False | The name of the DNS MX Record. Changing this forces a new resource to be created. Default to '@' for root zone entry. | 
| **var.resource_group_name** | string | True | Specifies the resource group where the resource exists. Changing this forces a new resource to be created. | 
| **var.zone_name** | string | True | Specifies the Private DNS Zone where the resource exists. Changing this forces a new resource to be created. | 
| **var.record** | block | True | One or more `record` blocks. | 
| `record` block structure: || 
|   preference (string): (REQUIRED) The preference of the MX record. ||
|   exchange (string): (REQUIRED) The FQDN of the exchange to MX record points to. ||
| **var.ttl** | int | True | The Time To Live (TTL) of the DNS record in seconds. | 
| **var.tags** | map | False | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Private DNS MX Record ID. | 
| **fqdn** | string | No  | The FQDN of the DNS MX Record. | 

Additionally, all variables are provided as outputs.
