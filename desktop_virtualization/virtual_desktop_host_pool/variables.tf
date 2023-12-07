# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Virtual Desktop Host Pool. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Virtual Desktop Host Pool. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The location/region where the Virtual Desktop Host Pool is located. Changing this forces a new resource to be created."
  type        = string

}
variable "type" {
  description = "(REQUIRED) The type of the Virtual Desktop Host Pool. Valid options are 'Personal' or 'Pooled'. Changing the type forces a new resource to be created."
  type        = string

}
variable "load_balancer_type" {
  description = "(REQUIRED) 'BreadthFirst' load balancing distributes new user sessions across all available session hosts in the host pool. Possible values are 'BreadthFirst', 'DepthFirst' and 'Persistent'. 'DepthFirst' load balancing distributes new user sessions to an available session host with the highest number of connections but has not reached its maximum session limit threshold. 'Persistent' should be used if the host pool type is 'Personal'"
  type        = string

}

# OPTIONAL VARIABLES

variable "friendly_name" {
  description = "A friendly name for the Virtual Desktop Host Pool."
  type        = string
  default     = null
}
variable "description" {
  description = "A description for the Virtual Desktop Host Pool."
  type        = string
  default     = null
}
variable "validate_environment" {
  description = "Allows you to test service changes before they are deployed to production. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "start_vm_on_connect" {
  description = "Enables or disables the Start VM on Connection Feature. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "custom_rdp_properties" {
  description = "A valid custom RDP properties string for the Virtual Desktop Host Pool, available properties can be [found in this article](https://docs.microsoft.com/windows-server/remote/remote-desktop-services/clients/rdp-files)."
  type        = string
  default     = null
}
variable "personal_desktop_assignment_type" {
  description = "'Automatic' assignment – The service will select an available host and assign it to an user. Possible values are 'Automatic' and 'Direct'. 'Direct' Assignment – Admin selects a specific host to assign to an user. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "maximum_sessions_allowed" {
  description = "A valid integer value from 0 to 999999 for the maximum number of users that have concurrent sessions on a session host. Should only be set if the 'type' of your Virtual Desktop Host Pool is 'Pooled'."
  type        = bool
  default     = null
}
variable "preferred_app_group_type" {
  description = "Option to specify the preferred Application Group type for the Virtual Desktop Host Pool. Valid options are 'None', 'Desktop' or 'RailApplications'. Default is 'Desktop'. Changing this forces a new resource to be created."
  type        = string
  default     = "Desktop"
}
variable "scheduled_agent_updates" {
  description = "A 'scheduled_agent_updates' block. This enables control of when Agent Updates will be applied to Session Hosts."
  type        = map(any)
  default     = null
}
#
# scheduled_agent_updates block structure:
#   enabled (bool)                         : Enables or disables scheduled updates of the AVD agent components (RDAgent, Geneva Monitoring agent, and side-by-side stack) on session hosts. If this is enabled then up to two 'schedule' blocks must be defined. Default is 'false'.
#   timezone (string)                      : Specifies the time zone in which the agent update schedule will apply, [the possible values are defined here](https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/). If 'use_session_host_timezone' is enabled then it will override this setting. Default is 'UTC'
#   use_session_host_timezone (bool)       : Specifies whether scheduled agent updates should be applied based on the timezone of the affected session host. If configured then this setting overrides 'timezone'. Default is 'false'.
#   schedule (string)                      : A 'schedule' block. A maximum of two blocks can be added.


variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
