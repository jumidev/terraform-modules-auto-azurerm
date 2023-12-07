# REQUIRED VARIABLES

variable "location" {
  description = "(REQUIRED) The Azure Region where the Virtual Desktop Scaling Plan should exist. Changing this forces a new Virtual Desktop Scaling Plan to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this Virtual Desktop Scaling Plan . Changing this forces a new Virtual Desktop Scaling Plan to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Virtual Desktop Scaling Plan should exist. Changing this forces a new Virtual Desktop Scaling Plan to be created."
  type        = string

}
variable "schedule" {
  description = "(REQUIRED) One or more 'schedule' blocks."
  type        = map(map(any))
}
#
# schedule block structure                     :
#   days_of_week (string)                        : (REQUIRED) A list of Days of the Week on which this schedule will be used. Possible values are 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', and 'Sunday'
#   name (string)                                : (REQUIRED) The name of the schedule.
#   off_peak_load_balancing_algorithm (string)   : (REQUIRED) The load Balancing Algorithm to use during Off-Peak Hours. Possible values are 'DepthFirst' and 'BreadthFirst'.
#   off_peak_start_time (string)                 : (REQUIRED) The time at which Off-Peak scaling will begin. This is also the end-time for the Ramp-Down period. The time must be specified in 'HH:MM' format.
#   peak_load_balancing_algorithm (string)       : (REQUIRED) The load Balancing Algorithm to use during Peak Hours. Possible values are 'DepthFirst' and 'BreadthFirst'.
#   peak_start_time (string)                     : (REQUIRED) The time at which Peak scaling will begin. This is also the end-time for the Ramp-Up period. The time must be specified in 'HH:MM' format.
#   ramp_down_capacity_threshold_percent (string): (REQUIRED) This is the value in percentage of used host pool capacity that will be considered to evaluate whether to turn on/off virtual machines during the ramp-down and off-peak hours. For example, if capacity threshold is specified as 60% and your total host pool capacity is 100 sessions, autoscale will turn on additional session hosts once the host pool exceeds a load of 60 sessions.
#   ramp_down_force_logoff_users (string)        : (REQUIRED) Whether users will be forced to log-off session hosts once the 'ramp_down_wait_time_minutes' value has been exceeded during the Ramp-Down period. Possible
#   ramp_down_load_balancing_algorithm (string)  : (REQUIRED) The load Balancing Algorithm to use during the Ramp-Down period. Possible values are 'DepthFirst' and 'BreadthFirst'.
#   ramp_down_minimum_hosts_percent (int)        : (REQUIRED) The minimum percentage of session host virtual machines that you would like to get to for ramp-down and off-peak hours. For example, if Minimum percentage of hosts is specified as 10% and total number of session hosts in your host pool is 10, autoscale will ensure a minimum of 1 session host is available to take user connections.
#   ramp_down_notification_message (string)      : (REQUIRED) The notification message to send to users during Ramp-Down period when they are required to log-off.
#   ramp_down_start_time (string)                : (REQUIRED) The time at which Ramp-Down scaling will begin. This is also the end-time for the Ramp-Up period. The time must be specified in 'HH:MM' format.
#   ramp_down_stop_hosts_when (string)           : (REQUIRED) Controls Session Host shutdown behaviour during Ramp-Down period. Session Hosts can either be shutdown when all sessions on the Session Host have ended, or when there are no Active sessions left on the Session Host. Possible values are 'ZeroSessions' and 'ZeroActiveSessions'.
#   ramp_down_wait_time_minutes (int)            : (REQUIRED) The number of minutes during Ramp-Down period that autoscale will wait after setting the session host VMs to drain mode, notifying any currently signed in users to save their work before forcing the users to logoff. Once all user sessions on the session host VM have been logged off, Autoscale will shut down the VM.
#   ramp_up_load_balancing_algorithm (string)    : (REQUIRED) The load Balancing Algorithm to use during the Ramp-Up period. Possible values are 'DepthFirst' and 'BreadthFirst'.
#   ramp_up_start_time (string)                  : (REQUIRED) The time at which Ramp-Up scaling will begin. This is also the end-time for the Ramp-Up period. The time must be specified in 'HH:MM' format.
#   ramp_up_capacity_threshold_percent (string)  : This is the value of percentage of used host pool capacity that will be considered to evaluate whether to turn on/off virtual machines during the ramp-up and peak hours. For example, if capacity threshold is specified as '60%' and your total host pool capacity is '100' sessions, autoscale will turn on additional session hosts once the host pool exceeds a load of '60' sessions.
#   ramp_up_minimum_hosts_percent (string)       : Specifies the minimum percentage of session host virtual machines to start during ramp-up for peak hours. For example, if Minimum percentage of hosts is specified as '10%' and total number of session hosts in your host pool is '10', autoscale will ensure a minimum of '1' session host is available to take user connections.


variable "time_zone" {
  description = "(REQUIRED) Specifies the Time Zone which should be used by the Scaling Plan for time based events, [the possible values are defined here](https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/)."
  type        = string

}

# OPTIONAL VARIABLES

variable "host_pool" {
  description = "One or more 'host_pool' blocks."
  type        = map(map(any))
  default     = null
}
#
# host_pool block structure  :
#   hostpool_id (string)       : (REQUIRED) The ID of the HostPool to assign the Scaling Plan to.
#   scaling_plan_enabled (bool): (REQUIRED) Specifies if the scaling plan is enabled or disabled for the HostPool.


variable "description" {
  description = "A description of the Scaling Plan."
  type        = string
  default     = null
}
variable "exclusion_tag" {
  description = "The name of the tag associated with the VMs you want to exclude from autoscaling."
  type        = string
  default     = null
}
variable "friendly_name" {
  description = "Friendly name of the Scaling Plan."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Virtual Desktop Scaling Plan ."
  type        = map(any)
  default     = null
}
