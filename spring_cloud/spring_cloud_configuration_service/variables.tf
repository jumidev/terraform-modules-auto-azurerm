# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Spring Cloud Configuration Service. The only possible value is 'default'. Changing this forces a new Spring Cloud Configuration Service to be created."
  type        = string

}
variable "spring_cloud_service_id" {
  description = "(REQUIRED) The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Configuration Service to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "generation" {
  description = "The generation of the Spring Cloud Configuration Service. Possible values are 'Gen1' and 'Gen2'."
  type        = string
  default     = null
}
variable "repository" {
  description = "One or more 'repository' blocks."
  type        = map(map(any))
  default     = null
}
#
# repository block structure       :
#   label (string)                   : (REQUIRED) Specifies the label of the repository.
#   name (string)                    : (REQUIRED) Specifies the name which should be used for this repository.
#   patterns (string)                : (REQUIRED) Specifies the collection of patterns of the repository.
#   uri (string)                     : (REQUIRED) Specifies the URI of the repository.
#   ca_certificate_id (string)       : Specifies the ID of the Certificate Authority used when retrieving the Git Repository via HTTPS.
#   host_key (string)                : Specifies the SSH public key of git repository.
#   host_key_algorithm (string)      : Specifies the SSH key algorithm of git repository.
#   password (string)                : Specifies the password of git repository basic auth.
#   private_key (string)             : Specifies the SSH private key of git repository.
#   search_paths (string)            : Specifies a list of searching path of the repository
#   strict_host_key_checking (string): Specifies whether enable the strict host key checking.
#   username (string)                : Specifies the username of git repository basic auth.


