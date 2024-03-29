# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Key Vault Certificate. Changing this forces a new resource to be created."
  type        = string

}
variable "key_vault_id" {
  description = "(REQUIRED) The ID of the Key Vault where the Certificate should be created. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "certificate" {
  description = "A 'certificate' block, used to Import an existing certificate. Changing this will create a new version of the Key Vault Certificate."
  type        = map(any)
  default     = null
}
#
# certificate block structure:
#   contents (string)          : (REQUIRED) The base64-encoded certificate contents.
#   password (string)          : The password associated with the certificate. ~> **NOTE:** A PEM certificate is already base64 encoded. To successfully import, the 'contents' property should include a PEM encoded X509 certificate and a private_key in pkcs8 format. There should only be linux style ''n' line endings and the whole block should have the PEM begin/end blocks around the certificate data and the private key data. To convert a private key to pkcs8 format with openssl use: '''shell openssl pkcs8 -topk8 -nocrypt -in private_key.pem > private_key_pk8.pem ''' The PEM content should look something like: '''text -----BEGIN CERTIFICATE----- aGVsbG8KaGVsbG8KaGVsbG8KaGVsbG8KaGVsbG8KaGVsbG8KaGVsbG8KaGVsbG8K : aGVsbG8KaGVsbG8KaGVsbG8KaGVsbG8KaGVsbG8KaGVsbG8KaGVsbG8KaGVsbG8K -----END CERTIFICATE----- -----BEGIN PRIVATE KEY----- d29ybGQKd29ybGQKd29ybGQKd29ybGQKd29ybGQKd29ybGQKd29ybGQKd29ybGQK : d29ybGQKd29ybGQKd29ybGQKd29ybGQKd29ybGQKd29ybGQKd29ybGQKd29ybGQK -----END PRIVATE KEY----- '''


variable "certificate_policy" {
  description = "A 'certificate_policy' block. Changing this will create a new version of the Key Vault Certificate. ~> **NOTE:** When creating a Key Vault Certificate, at least one of 'certificate' or 'certificate_policy' is required. Provide 'certificate' to import an existing certificate, 'certificate_policy' to generate a new certificate."
  type        = map(any)
  default     = null
}
#
# certificate_policy block structure :
#   issuer_parameters (block)          : (REQUIRED) A 'issuer_parameters' block.
#   key_properties (block)             : (REQUIRED) A 'key_properties' block.
#   lifetime_action (block)            : A 'lifetime_action' block.
#   secret_properties (block)          : (REQUIRED) A 'secret_properties' block.
#   x509_certificate_properties (block): A 'x509_certificate_properties' block. Required when 'certificate' block is not specified.
#
# secret_properties block structure:
#   content_type (string)            : (REQUIRED) The Content-Type of the Certificate, such as 'application/x-pkcs12' for a PFX or 'application/x-pem-file' for a PEM.
#
# subject_alternative_names block structure:
#   dns_names (list)                         : A list of alternative DNS names (FQDNs) identified by the Certificate.
#   emails (list)                            : A list of email addresses identified by this Certificate.
#   upns (list)                              : A list of User Principal Names identified by the Certificate.
#
# issuer_parameters block structure:
#   name (string)                    : (REQUIRED) The name of the Certificate Issuer. Possible values include 'Self' (for self-signed certificate), or 'Unknown' (for a certificate issuing authority like 'Let's Encrypt' and Azure direct supported ones).
#
# key_properties block structure:
#   curve (string)                : Specifies the curve to use when creating an 'EC' key. Possible values are 'P-256', 'P-256K', 'P-384', and 'P-521'. This field will be required in a future release if 'key_type' is 'EC' or 'EC-HSM'.
#   exportable (bool)             : (REQUIRED) Is this certificate exportable?
#   key_size (string)             : The size of the key used in the certificate. Possible values include '2048', '3072', and '4096' for 'RSA' keys, or '256', '384', and '521' for 'EC' keys. This property is required when using RSA keys.
#   key_type (string)             : (REQUIRED) Specifies the type of key. Possible values are 'EC', 'EC-HSM', 'RSA', 'RSA-HSM' and 'oct'.
#   reuse_key (bool)              : (REQUIRED) Is the key reusable?
#
# lifetime_action block structure:
#   action (block)                 : (REQUIRED) A 'action' block.
#   trigger (block)                : (REQUIRED) A 'trigger' block.
#
# x509_certificate_properties block structure:
#   extended_key_usage (list)                  : A list of Extended/Enhanced Key Usages.
#   key_usage (list)                           : (REQUIRED) A list of uses associated with this Key. Possible values include 'cRLSign', 'dataEncipherment', 'decipherOnly', 'digitalSignature', 'encipherOnly', 'keyAgreement', 'keyCertSign', 'keyEncipherment' and 'nonRepudiation' and are case-sensitive.
#   subject (string)                           : (REQUIRED) The Certificate's Subject.
#   subject_alternative_names (block)          : A 'subject_alternative_names' block.
#   validity_in_months (string)                : (REQUIRED) The Certificates Validity Period in Months.
#
# trigger block structure     :
#   days_before_expiry (number) : The number of days before the Certificate expires that the action associated with this Trigger should run. Conflicts with 'lifetime_percentage'.
#   lifetime_percentage (string): The percentage at which during the Certificates Lifetime the action associated with this Trigger should run. Conflicts with 'days_before_expiry'.
#
# action block structure:
#   action_type (string)  : (REQUIRED) The Type of action to be performed when the lifetime trigger is triggerec. Possible values include 'AutoRenew' and 'EmailContacts'.


variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
