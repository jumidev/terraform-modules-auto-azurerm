# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the subnet. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the subnet. Changing this forces a new resource to be created."
  type        = string

}
variable "virtual_network_name" {
  description = "(REQUIRED) The name of the virtual network to which to attach the subnet. Changing this forces a new resource to be created."
  type        = string

}
variable "address_prefixes" {
  description = "(REQUIRED) The address prefixes to use for the subnet."
  type        = string

}

# OPTIONAL VARIABLES

variable "delegation" {
  description = "One or more 'delegation' blocks."
  type        = map(map(any))
  default     = null
}
#
# delegation block structure:
#   name (string)             : (REQUIRED) A name for this delegation.
#   service_delegation (block): (REQUIRED) A 'service_delegation' block.
#
# service_delegation block structure:
#   name (string)                     : (REQUIRED) The name of service to delegate to. Possible values are 'GitHub.Network/networkSettings', 'Microsoft.ApiManagement/service', 'Microsoft.Apollo/npu', 'Microsoft.App/environments', 'Microsoft.App/testClients', 'Microsoft.AVS/PrivateClouds', 'Microsoft.AzureCosmosDB/clusters', 'Microsoft.BareMetal/AzureHostedService', 'Microsoft.BareMetal/AzureHPC', 'Microsoft.BareMetal/AzurePaymentHSM', 'Microsoft.BareMetal/AzureVMware', 'Microsoft.BareMetal/CrayServers', 'Microsoft.BareMetal/MonitoringServers', 'Microsoft.Batch/batchAccounts', 'Microsoft.CloudTest/hostedpools', 'Microsoft.CloudTest/images', 'Microsoft.CloudTest/pools', 'Microsoft.Codespaces/plans', 'Microsoft.ContainerInstance/containerGroups', 'Microsoft.ContainerService/managedClusters', 'Microsoft.ContainerService/TestClients', 'Microsoft.Databricks/workspaces', 'Microsoft.DBforMySQL/flexibleServers', 'Microsoft.DBforMySQL/servers', 'Microsoft.DBforMySQL/serversv2', 'Microsoft.DBforPostgreSQL/flexibleServers', 'Microsoft.DBforPostgreSQL/serversv2', 'Microsoft.DBforPostgreSQL/singleServers', 'Microsoft.DelegatedNetwork/controller', 'Microsoft.DevCenter/networkConnection', 'Microsoft.DocumentDB/cassandraClusters', 'Microsoft.Fidalgo/networkSettings', 'Microsoft.HardwareSecurityModules/dedicatedHSMs', 'Microsoft.Kusto/clusters', 'Microsoft.LabServices/labplans', 'Microsoft.Logic/integrationServiceEnvironments', 'Microsoft.MachineLearningServices/workspaces', 'Microsoft.Netapp/volumes', 'Microsoft.Network/dnsResolvers', 'Microsoft.Network/managedResolvers', 'Microsoft.Network/fpgaNetworkInterfaces', 'Microsoft.Network/networkWatchers.', 'Microsoft.Network/virtualNetworkGateways', 'Microsoft.Orbital/orbitalGateways', 'Microsoft.PowerPlatform/enterprisePolicies', 'Microsoft.PowerPlatform/vnetaccesslinks', 'Microsoft.ServiceFabricMesh/networks', 'Microsoft.ServiceNetworking/trafficControllers', 'Microsoft.Singularity/accounts/networks', 'Microsoft.Singularity/accounts/npu', 'Microsoft.Sql/managedInstances', 'Microsoft.Sql/managedInstancesOnebox', 'Microsoft.Sql/managedInstancesStage', 'Microsoft.Sql/managedInstancesTest', 'Microsoft.Sql/servers', 'Microsoft.StoragePool/diskPools', 'Microsoft.StreamAnalytics/streamingJobs', 'Microsoft.Synapse/workspaces', 'Microsoft.Web/hostingEnvironments', 'Microsoft.Web/serverFarms', 'NGINX.NGINXPLUS/nginxDeployments', 'PaloAltoNetworks.Cloudngfw/firewalls' and 'Qumulo.Storage/fileSystems'.
#   actions (string)                  : A list of Actions which should be delegated. This list is specific to the service to delegate to. Possible values are 'Microsoft.Network/networkinterfaces/*', 'Microsoft.Network/publicIPAddresses/join/action', 'Microsoft.Network/publicIPAddresses/read', 'Microsoft.Network/virtualNetworks/read', 'Microsoft.Network/virtualNetworks/subnets/action', 'Microsoft.Network/virtualNetworks/subnets/join/action', 'Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action', and 'Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action'.


variable "private_endpoint_network_policies_enabled" {
  description = "Enable or Disable network policies for the private endpoint on the subnet. Setting this to 'true' will **Enable** the policy and setting this to 'false' will **Disable** the policy. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "private_link_service_network_policies_enabled" {
  description = "Enable or Disable network policies for the private link service on the subnet. Setting this to 'true' will **Enable** the policy and setting this to 'false' will **Disable** the policy. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "service_endpoints" {
  description = "The list of Service endpoints to associate with the subnet. Possible values include: 'Microsoft.AzureActiveDirectory', 'Microsoft.AzureCosmosDB', 'Microsoft.ContainerRegistry', 'Microsoft.EventHub', 'Microsoft.KeyVault', 'Microsoft.ServiceBus', 'Microsoft.Sql', 'Microsoft.Storage', 'Microsoft.Storage.Global' and 'Microsoft.Web'."
  type        = string
  default     = null
}
variable "service_endpoint_policy_ids" {
  description = "The list of IDs of Service Endpoint Policies to associate with the subnet."
  type        = string
  default     = null
}
variable "virtual_network_resource_group_name" {
  description = "Specifies the name of the resource group the Virtual Network is located in..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
# REQUIRED VARIABLES

variable "nat_gateway_id" {
  description = "(REQUIRED) The ID of the NAT Gateway which should be associated with the Subnet. Changing this forces a new resource to be created."
  type        = string

}
# REQUIRED VARIABLES

variable "network_security_group_id" {
  description = "(REQUIRED) The ID of the Network Security Group which should be associated with the Subnet. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "application_load_balancer_subnet_association" {
  type    = map(any)
  default = null
}
