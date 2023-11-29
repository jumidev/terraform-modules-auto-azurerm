# REQUIRED VARIABLES

variable "api_management_id" {
  description = "(REQUIRED) The ID of the API Management service. Changing this forces a new API Management service Policy to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "xml_content" {
  description = "The XML Content for this Policy as a string. An XML file can be used here with Terraform's [file function](https://www.terraform.io/docs/configuration/functions/file.html) that is similar to Microsoft's 'PolicyFilePath' option."
  type        = string
  default     = null
}
variable "xml_link" {
  description = "A link to a Policy XML Document, which must be publicly available."
  type        = string
  default     = null
}
