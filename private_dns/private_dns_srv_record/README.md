# azurerm_private_dns_srv_record

Enables you to manage DNS SRV Records within Azure Private DNS.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "private_dns/private_dns_srv_record" 
}

inputs = {
   name = "name of private_dns_srv_record" 
   resource_group_name = "${resource_group}" 
   zone_name = "zone_name of private_dns_srv_record" 
   record = "record of private_dns_srv_record" 
   ttl = "ttl of private_dns_srv_record" 
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
| **var.name** | string | True | The name of the DNS SRV Record. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | Specifies the resource group where the resource exists. Changing this forces a new resource to be created. | 
| **var.zone_name** | string | True | Specifies the Private DNS Zone where the resource exists. Changing this forces a new resource to be created. | 
| **var.record** | block | True | One or more `record` blocks. | 
| **var.ttl** | int | True | The Time To Live (TTL) of the DNS record in seconds. | 
| **var.tags** | map | False | A mapping of tags to assign to the resource. | 

### `record` block structure

> `priority` (string): (REQUIRED) The priority of the SRV record.
> `weight` (int): (REQUIRED) The Weight of the SRV record.
> `port` (string): (REQUIRED) The Port the service is listening on.
> `target` (string): (REQUIRED) The FQDN of the service.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Private DNS SRV Record ID. | 
| **fqdn** | string | No  | The FQDN of the DNS SRV Record. | 

Additionally, all variables are provided as outputs.
