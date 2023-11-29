# azurerm_active_directory_domain_service_trust

Manages a Active Directory Domain Service Trust.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.domain_service_id** | string | True | The ID of the Active Directory Domain Service. Changing this forces a new Active Directory Domain Service Trust to be created. | 
| **var.name** | string | True | The name which should be used for this Active Directory Domain Service Trust. Changing this forces a new Active Directory Domain Service Trust to be created. | 
| **var.password** | string | True | The password of the inbound trust set in the on-premise Active Directory Domain Service. | 
| **var.trusted_domain_dns_ips** | string | True | Specifies a list of DNS IPs that are used to resolve the on-premise Active Directory Domain Service. | 
| **var.trusted_domain_fqdn** | string | True | The FQDN of the on-premise Active Directory Domain Service. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **domain_service_id** | string  | - | 
| **name** | string  | - | 
| **password** | string  | - | 
| **trusted_domain_dns_ips** | string  | - | 
| **trusted_domain_fqdn** | string  | - | 
| **id** | string  | The ID of the Active Directory Domain Service Trust. | 