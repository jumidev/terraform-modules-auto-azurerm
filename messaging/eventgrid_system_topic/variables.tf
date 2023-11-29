# REQUIRED VARIABLES

variable "location" {
  description = "(REQUIRED) The Azure Region where the Event Grid System Topic should exist. Changing this forces a new Event Grid System Topic to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this Event Grid System Topic. Changing this forces a new Event Grid System Topic to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Event Grid System Topic should exist. Changing this forces a new Event Grid System Topic to be created."
  type        = string

}
variable "source_arm_resource_id" {
  description = "(REQUIRED) The ID of the Event Grid System Topic ARM Source. Changing this forces a new Event Grid System Topic to be created."
  type        = string

}
variable "topic_type" {
  description = "(REQUIRED) The Topic Type of the Event Grid System Topic. The topic type is validated by Azure and there may be additional topic types beyond the following: 'Microsoft.AppConfiguration.ConfigurationStores', 'Microsoft.Communication.CommunicationServices', 'Microsoft.ContainerRegistry.Registries', 'Microsoft.Devices.IoTHubs', 'Microsoft.EventGrid.Domains', 'Microsoft.EventGrid.Topics', 'Microsoft.Eventhub.Namespaces', 'Microsoft.KeyVault.vaults', 'Microsoft.MachineLearningServices.Workspaces', 'Microsoft.Maps.Accounts', 'Microsoft.Media.MediaServices', 'Microsoft.Resources.ResourceGroups', 'Microsoft.Resources.Subscriptions', 'Microsoft.ServiceBus.Namespaces', 'Microsoft.SignalRService.SignalR', 'Microsoft.Storage.StorageAccounts', 'Microsoft.Web.ServerFarms' and 'Microsoft.Web.Sites'. Changing this forces a new Event Grid System Topic to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Event Grid System Topic. Possible values are 'SystemAssigned', 'UserAssigned'.
#   identity_ids (string)   : Specifies a list of User Assigned Managed Identity IDs to be assigned to this Event Grid System Topic.
#   tags (map)              : A mapping of tags which should be assigned to the Event Grid System Topic.


