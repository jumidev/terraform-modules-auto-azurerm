# azurerm_cdn_frontdoor_custom_domain

Manages a Front Door (standard/premium) Custom Domain.!>**IMPORTANT:** If you are using Terraform to manage your DNS Auth and DNS CNAME records for your Custom Domain you will need to add configuration blocks for both the `azurerm_dns_txt_record`(see the `Example DNS Auth TXT Record Usage` below) and the `azurerm_dns_cname_record`(see the `Example CNAME Record Usage` below) to your configuration file.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "cdn/cdn_frontdoor_custom_domain" 
}

inputs = {
   name = "name of cdn_frontdoor_custom_domain" 
   cdn_frontdoor_profile_id = "cdn_frontdoor_profile_id of cdn_frontdoor_custom_domain" 
   host_name = "host_name of cdn_frontdoor_custom_domain" 
   tls = "tls of cdn_frontdoor_custom_domain" 
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
| **var.name** | string | True | The name which should be used for this Front Door Custom Domain. Possible values must be between 2 and 260 characters in length, must begin with a letter or number, end with a letter or number and contain only letters, numbers and hyphens. Changing this forces a new Front Door Custom Domain to be created. | 
| **var.cdn_frontdoor_profile_id** | string | True | The ID of the Front Door Profile. Changing this forces a new Front Door Profile to be created. | 
| **var.host_name** | string | True | The host name of the domain. The `host_name` field must be the FQDN of your domain(e.g. `contoso.fabrikam.com`). Changing this forces a new Front Door Custom Domain to be created. | 
| **var.dns_zone_id** | string | False | The ID of the Azure DNS Zone which should be used for this Front Door Custom Domain. If you are using Azure to host your [DNS domains](https://learn.microsoft.com/azure/dns/dns-overview), you must delegate the domain provider's domain name system (DNS) to an Azure DNS Zone. For more information, see [Delegate a domain to Azure DNS](https://learn.microsoft.com/azure/dns/dns-delegate-domain-azure-dns). Otherwise, if you're using your own domain provider to handle your DNS, you must validate the Front Door Custom Domain by creating the DNS TXT records manually. | 
| **var.tls** | block | True | A `tls` block. | | `tls` block structure: || 
|   certificate_type (string): Defines the source of the SSL certificate. Possible values include 'CustomerCertificate' and 'ManagedCertificate'. Defaults to 'ManagedCertificate'. ||
|   minimum_tls_version (string): TLS protocol version that will be used for Https. Possible values include 'TLS10' and 'TLS12'. Defaults to 'TLS12'. ||
|   cdn_frontdoor_secret_id (string): Resource ID of the Front Door Secret. ||



### 1 optional associated resource

| Variable | Information |
| -------- | ----------- |
| **var.cdn_frontdoor_route_ids** | If set to a list containing one or more valid `azurerm_cdn_frontdoor_route` `id`, makes a **azurerm_cdn_frontdoor_custom_domain_association** - Manages the association between a Front Door (standard/premium) Custom Domain and one or more Front Door (standard/premium) Routes. | 

## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Front Door Custom Domain. | 
| **expiration_date** | datetime | No  | The date time that the token expires. | 
| **validation_token** | string | No  | Challenge used for DNS TXT record or file based validation. | 

Additionally, all variables are provided as outputs.
