# REQUIRED VARIABLES

variable "auto_provision" {
  description = "(REQUIRED) Should the security agent be automatically provisioned on Virtual Machines in this subscription? Possible values are 'On' (to install the security agent automatically, if it's missing) or 'Off' (to not install the security agent automatically)."
  type        = string

}
