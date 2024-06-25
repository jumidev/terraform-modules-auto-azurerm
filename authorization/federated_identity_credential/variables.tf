# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of this Federated Identity Credential. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the name of the Resource Group within which this Federated Identity Credential should exist. Changing this forces a new Federated Identity Credential to be created."
  type        = string

}
variable "audience" {
  description = "(REQUIRED) Specifies the audience for this Federated Identity Credential."
  type        = string

}
variable "issuer" {
  description = "(REQUIRED) Specifies the issuer of this Federated Identity Credential."
  type        = string

}
variable "parent_id" {
  description = "(REQUIRED) Specifies parent ID of User Assigned Identity for this Federated Identity Credential. Changing this forces a new Federated Identity Credential to be created."
  type        = string

}
variable "subject" {
  description = "(REQUIRED) Specifies the subject for this Federated Identity Credential."
  type        = string

}
