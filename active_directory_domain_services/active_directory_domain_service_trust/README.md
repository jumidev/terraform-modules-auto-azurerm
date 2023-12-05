# azurerm_active_directory_domain_service_trust

Manages a Active Directory Domain Service Trust.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "active_directory_domain_services/active_directory_domain_service_trust"   
}

inputs = {
   # domain_service_id → set in tfstate_inputs
   name = "name of active_directory_domain_service_trust"   
   password = "password of active_directory_domain_service_trust"   
   trusted_domain_dns_ips = "trusted_domain_dns_ips of active_directory_domain_service_trust"   
   trusted_domain_fqdn = "trusted_domain_fqdn of active_directory_domain_service_trust"   
}

tfstate_inputs = {
   domain_service_id = "path/to/active_directory_domain_service_component:id"   
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
| **domain_service_id** | string |  The ID of the Active Directory Domain Service. Changing this forces a new Active Directory Domain Service Trust to be created. | 
| **name** | string |  The name which should be used for this Active Directory Domain Service Trust. Changing this forces a new Active Directory Domain Service Trust to be created. | 
| **password** | string |  The password of the inbound trust set in the on-premise Active Directory Domain Service. | 
| **trusted_domain_dns_ips** | string |  Specifies a list of DNS IPs that are used to resolve the on-premise Active Directory Domain Service. | 
| **trusted_domain_fqdn** | string |  The FQDN of the on-premise Active Directory Domain Service. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Active Directory Domain Service Trust. | 

Additionally, all variables are provided as outputs.
