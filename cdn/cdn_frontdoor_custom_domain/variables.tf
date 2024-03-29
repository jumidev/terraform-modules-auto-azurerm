# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Front Door Custom Domain. Possible values must be between 2 and 260 characters in length, must begin with a letter or number, end with a letter or number and contain only letters, numbers and hyphens. Changing this forces a new Front Door Custom Domain to be created."
  type        = string

}
variable "cdn_frontdoor_profile_id" {
  description = "(REQUIRED) The ID of the Front Door Profile. Changing this forces a new Front Door Custom Domain to be created."
  type        = string

}
variable "host_name" {
  description = "(REQUIRED) The host name of the domain. The 'host_name' field must be the FQDN of your domain(e.g. 'contoso.fabrikam.com'). Changing this forces a new Front Door Custom Domain to be created."
  type        = string

}
variable "tls" {
  description = "(REQUIRED) A 'tls' block."
  type        = map(any)
}
#
# tls block structure             :
#   certificate_type (string)       : Defines the source of the SSL certificate. Possible values include 'CustomerCertificate' and 'ManagedCertificate'. Defaults to 'ManagedCertificate'. ->**NOTE:** It may take up to 15 minutes for the Front Door Service to validate the state and Domain ownership of the Custom Domain.
#   minimum_tls_version (string)    : TLS protocol version that will be used for Https. Possible values include 'TLS10' and 'TLS12'. Defaults to 'TLS12'.
#   cdn_frontdoor_secret_id (string): Resource ID of the Front Door Secret.



# OPTIONAL VARIABLES

variable "dns_zone_id" {
  description = "The ID of the Azure DNS Zone which should be used for this Front Door Custom Domain. If you are using Azure to host your [DNS domains](https://learn.microsoft.com/azure/dns/dns-overview), you must delegate the domain provider's domain name system (DNS) to an Azure DNS Zone. For more information, see [Delegate a domain to Azure DNS](https://learn.microsoft.com/azure/dns/dns-delegate-domain-azure-dns). Otherwise, if you're using your own domain provider to handle your DNS, you must validate the Front Door Custom Domain by creating the DNS TXT records manually. <!-- * 'pre_validated_cdn_frontdoor_custom_domain_id' -  The resource ID of the pre-validated Front Door Custom Domain. This domain type is used when you wish to onboard a validated Azure service domain, and then configure the Azure service behind an Azure Front Door. ->**NOTE:** Currently 'pre_validated_cdn_frontdoor_custom_domain_id' only supports domains validated by Static Web App. -->"
  type        = string
  default     = null
}
# REQUIRED VARIABLES

variable "cdn_frontdoor_route_ids" {
  description = "(REQUIRED) One or more IDs of the Front Door Route to which the Front Door Custom Domain is associated with. -> **NOTE:** This should include all of the Front Door Route resources that the Front Door Custom Domain is associated with. If the list of Front Door Routes is not complete you will receive the service side error 'This resource is still associated with a route. Please delete the association with the route first before deleting this resource' when you attempt to 'destroy'/'delete' your Front Door Custom Domain."
  type        = string

}
