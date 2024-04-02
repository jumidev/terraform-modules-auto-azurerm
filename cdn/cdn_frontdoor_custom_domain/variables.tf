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

# OPTIONAL VARIABLES

variable "dns_zone_id" {
  description = "The ID of the Azure DNS Zone which should be used for this Front Door Custom Domain. If you are using Azure to host your [DNS domains](https://learn.microsoft.com/azure/dns/dns-overview), you must delegate the domain provider's domain name system (DNS) to an Azure DNS Zone. For more information, see [Delegate a domain to Azure DNS](https://learn.microsoft.com/azure/dns/dns-delegate-domain-azure-dns). Otherwise, if you're using your own domain provider to handle your DNS, you must validate the Front Door Custom Domain by creating the DNS TXT records manually."
  type        = string
  default     = null
}
# REQUIRED VARIABLES

variable "cdn_frontdoor_route_ids" {
  description = "(REQUIRED) One or more IDs of the Front Door Route to which the Front Door Custom Domain is associated with. -> **NOTE:** This should include all of the Front Door Route resources that the Front Door Custom Domain is associated with. If the list of Front Door Routes is not complete you will receive the service side error 'This resource is still associated with a route. Please delete the association with the route first before deleting this resource' when you attempt to 'destroy'/'delete' your Front Door Custom Domain."
  type        = string

}
