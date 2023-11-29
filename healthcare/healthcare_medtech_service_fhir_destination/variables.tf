# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Healthcare Med Tech Service Fhir Destination. Changing this forces a new Healthcare Med Tech Service Fhir Destination to be created."
  type        = string

}
variable "medtech_service_id" {
  description = "(REQUIRED) Specifies the name of the Healthcare Med Tech Service where the Healthcare Med Tech Service Fhir Destination should exist. Changing this forces a new Healthcare Med Tech Service Fhir Destination to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the Azure Region where the Healthcare Med Tech Service Fhir Destination should be created. Changing this forces a new Healthcare Med Tech Service Fhir Destination to be created."
  type        = string

}
variable "destination_fhir_service_id" {
  description = "(REQUIRED) Specifies the destination fhir service id of the Med Tech Service Fhir Destination."
  type        = string

}
variable "destination_identity_resolution_type" {
  description = "(REQUIRED) Specifies the destination identity resolution type where the Healthcare Med Tech Service Fhir Destination should be created. Possible values are 'Create', 'Lookup'."
  type        = string

}
variable "destination_fhir_mapping_json" {
  description = "(REQUIRED) Specifies the destination Fhir mappings of the Med Tech Service Fhir Destination."
  type        = string

}
