# REQUIRED VARIABLES

variable "domain_service_id" {
  description = "(REQUIRED) The ID of the Active Directory Domain Service. Changing this forces a new Active Directory Domain Service Trust to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this Active Directory Domain Service Trust. Changing this forces a new Active Directory Domain Service Trust to be created."
  type        = string

}
variable "password" {
  description = "(REQUIRED) The password of the inbound trust set in the on-premise Active Directory Domain Service."
  type        = string

}
variable "trusted_domain_dns_ips" {
  description = "(REQUIRED) Specifies a list of DNS IPs that are used to resolve the on-premise Active Directory Domain Service."
  type        = string

}
variable "trusted_domain_fqdn" {
  description = "(REQUIRED) The FQDN of the on-premise Active Directory Domain Service."
  type        = string

}
