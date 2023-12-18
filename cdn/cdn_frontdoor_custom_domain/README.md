# azurerm_cdn_frontdoor_custom_domain

Manages a Front Door (standard/premium) Custom Domain.!>**IMPORTANT:** If you are using Terraform to manage your DNS Auth and DNS CNAME records for your Custom Domain you will need to add configuration blocks for both the `azurerm_dns_txt_record`(see the `Example DNS Auth TXT Record Usage` below) and the `azurerm_dns_cname_record`(see the `Example CNAME Record Usage` below) to your configuration file.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "cdn/cdn_frontdoor_custom_domain"   
}

inputs = {
   name = "The name which should be used for this Front Door Custom Domain..."   
   # cdn_frontdoor_profile_id → set in tfstate_inputs
   host_name = "The host name of the domain"   
   tls = {
      # cdn_frontdoor_secret_id → (optional) set in tfstate_inputs
   }
   
}

tfstate_inputs = {
   cdn_frontdoor_profile_id = "path/to/cdn_frontdoor_profile_component:id"   
   tls.cdn_frontdoor_secret_id = "path/to/cdn_frontdoor_secret_component:id"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```
## Optional associated resource


### `cdn_frontdoor_route_ids` 

- If set to a list containing one or more valid `azurerm_cdn_frontdoor_route` `id`, makes a **azurerm_cdn_frontdoor_custom_domain_association** - Manages the association between a Front Door (standard/premium) Custom Domain and one or more Front Door (standard/premium) Routes.

Example component snippet:

```hcl
tfstate_inputs = {
   cdn_frontdoor_route_ids = ["path/to/cdn_frontdoor_route_component1:id", "path/to/cdn_frontdoor_route_ids_component2:cdn_frontdoor_route"...]
}
```


## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  The name which should be used for this Front Door Custom Domain. Possible values must be between 2 and 260 characters in length, must begin with a letter or number, end with a letter or number and contain only letters, numbers and hyphens. Changing this forces a new Front Door Custom Domain to be created. | 
| **cdn_frontdoor_profile_id** | string |  The ID of the Front Door Profile. Changing this forces a new Front Door Profile to be created. | 
| **host_name** | string |  The host name of the domain. The `host_name` field must be the FQDN of your domain(e.g. `contoso.fabrikam.com`). Changing this forces a new Front Door Custom Domain to be created. | 
| **tls** | [block](#tls-block-structure) |  A `tls` block. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **dns_zone_id** | string |  The ID of the Azure DNS Zone which should be used for this Front Door Custom Domain. If you are using Azure to host your [DNS domains](https://learn.microsoft.com/azure/dns/dns-overview), you must delegate the domain provider's domain name system (DNS) to an Azure DNS Zone. For more information, see [Delegate a domain to Azure DNS](https://learn.microsoft.com/azure/dns/dns-delegate-domain-azure-dns). Otherwise, if you're using your own domain provider to handle your DNS, you must validate the Front Door Custom Domain by creating the DNS TXT records manually. | 

### `tls` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `certificate_type` | string | No | ManagedCertificate | Defines the source of the SSL certificate. Possible values include 'CustomerCertificate' and 'ManagedCertificate'. Defaults to 'ManagedCertificate'. |
| `minimum_tls_version` | string | No | TLS12 | TLS protocol version that will be used for Https. Possible values include 'TLS10' and 'TLS12'. Defaults to 'TLS12'. |
| `cdn_frontdoor_secret_id` | string | No | - | Resource ID of the Front Door Secret. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Front Door Custom Domain. | 
| **expiration_date** | string | No  | The date time that the token expires. | 
| **validation_token** | string | No  | Challenge used for DNS TXT record or file based validation. | 

Additionally, all variables are provided as outputs.
