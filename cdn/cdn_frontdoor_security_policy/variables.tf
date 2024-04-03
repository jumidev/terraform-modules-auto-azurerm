# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Front Door Security Policy. Possible values must not be an empty string. Changing this forces a new Front Door Security Policy to be created."
  type        = string

}
variable "cdn_frontdoor_profile_id" {
  description = "(REQUIRED) The Front Door Profile Resource Id that is linked to this Front Door Security Policy. Changing this forces a new Front Door Security Policy to be created."
  type        = string

}
variable "security_policies" {
  description = "(REQUIRED) An 'security_policies' block. Changing this forces a new Front Door Security Policy to be created."
  type        = map(any)
}
#
# security_policies block structure:
#   firewall (block)                 : (REQUIRED) An 'firewall' block. Changing this forces a new Front Door Security Policy to be created.
#
# firewall block structure                 :
#   cdn_frontdoor_firewall_policy_id (string): (REQUIRED) The Resource Id of the Front Door Firewall Policy that should be linked to this Front Door Security Policy. Changing this forces a new Front Door Security Policy to be created.
#   association (block)                      : (REQUIRED) An 'association' block. Changing this forces a new Front Door Security Policy to be created.
#
# association block structure:
#   domain (block)             : (REQUIRED) One or more 'domain' blocks. Changing this forces a new Front Door Security Policy to be created.
#   patterns_to_match (string) : (REQUIRED) The list of paths to match for this firewall policy. Possible value includes '/*'. Changing this forces a new Front Door Security Policy to be created.
#
# domain block structure          :
#   cdn_frontdoor_domain_id (string): (REQUIRED) The Resource Id of the **Front Door Custom Domain** or **Front Door Endpoint** that should be bound to this Front Door Security Policy. Changing this forces a new Front Door Security Policy to be created.
#   active (string)                 : (Computed) Is the Front Door Custom Domain/Endpoint activated?


