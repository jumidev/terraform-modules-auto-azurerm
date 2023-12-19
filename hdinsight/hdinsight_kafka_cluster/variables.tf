# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name for this HDInsight Kafka Cluster. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the name of the Resource Group in which this HDInsight Kafka Cluster should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the Azure Region which this HDInsight Kafka Cluster should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "cluster_version" {
  description = "(REQUIRED) Specifies the Version of HDInsights which should be used for this Cluster. Changing this forces a new resource to be created."
  type        = string

}
variable "component_version" {
  description = "(REQUIRED) A 'component_version' block."
  type        = map(any)
}
#
# component_version block structure:
#   kafka (string)                   : (REQUIRED) The version of Kafka which should be used for this HDInsight Kafka Cluster. Changing this forces a new resource to be created.


variable "gateway" {
  description = "(REQUIRED) A 'gateway' block."
  type        = map(any)
}
#
# gateway block structure:
#   password (string)      : (REQUIRED) The password used for the Ambari Portal.
#   username (string)      : (REQUIRED) The username used for the Ambari Portal. Changing this forces a new resource to be created.


variable "roles" {
  description = "(REQUIRED) A 'roles' block."
  type        = map(any)
}
#
# roles block structure        :
#   head_node (block)            : (REQUIRED) A 'head_node' block.
#   worker_node (block)          : (REQUIRED) A 'worker_node' block.
#   zookeeper_node (block)       : (REQUIRED) A 'zookeeper_node' block.
#   kafka_management_node (block): A 'kafka_management_node' block.
#
# script_actions block structure:
#   name (string)                 : (REQUIRED) The name of the script action.
#   uri (string)                  : (REQUIRED) The URI to the script.
#   parameters (string)           : The parameters for the script provided.
#
# head_node block structure  :
#   script_actions (block)     : The script action which will run on the cluster. One or more 'script_actions' blocks.
#   username (string)          : (REQUIRED) The Username of the local administrator for the Head Nodes. Changing this forces a new resource to be created.
#   vm_size (string)           : (REQUIRED) The Size of the Virtual Machine which should be used as the Head Nodes. Possible values are 'ExtraSmall', 'Small', 'Medium', 'Large', 'ExtraLarge', 'A5', 'A6', 'A7', 'A8', 'A9', 'A10', 'A11', 'Standard_A1_V2', 'Standard_A2_V2', 'Standard_A2m_V2', 'Standard_A3', 'Standard_A4_V2', 'Standard_A4m_V2', 'Standard_A8_V2', 'Standard_A8m_V2', 'Standard_D1', 'Standard_D2', 'Standard_D3', 'Standard_D4', 'Standard_D11', 'Standard_D12', 'Standard_D13', 'Standard_D14', 'Standard_D1_V2', 'Standard_D2_V2', 'Standard_D3_V2', 'Standard_D4_V2', 'Standard_D5_V2', 'Standard_D11_V2', 'Standard_D12_V2', 'Standard_D13_V2', 'Standard_D14_V2', 'Standard_DS1_V2', 'Standard_DS2_V2', 'Standard_DS3_V2', 'Standard_DS4_V2', 'Standard_DS5_V2', 'Standard_DS11_V2', 'Standard_DS12_V2', 'Standard_DS13_V2', 'Standard_DS14_V2', 'Standard_E2_V3', 'Standard_E4_V3', 'Standard_E8_V3', 'Standard_E16_V3', 'Standard_E20_V3', 'Standard_E32_V3', 'Standard_E64_V3', 'Standard_E64i_V3', 'Standard_E2s_V3', 'Standard_E4s_V3', 'Standard_E8s_V3', 'Standard_E16s_V3', 'Standard_E20s_V3', 'Standard_E32s_V3', 'Standard_E64s_V3', 'Standard_E64is_V3', 'Standard_D2a_V4', 'Standard_D4a_V4', 'Standard_D8a_V4', 'Standard_D16a_V4', 'Standard_D32a_V4', 'Standard_D48a_V4', 'Standard_D64a_V4', 'Standard_D96a_V4', 'Standard_E2a_V4', 'Standard_E4a_V4', 'Standard_E8a_V4', 'Standard_E16a_V4', 'Standard_E20a_V4', 'Standard_E32a_V4', 'Standard_E48a_V4', 'Standard_E64a_V4', 'Standard_E96a_V4', 'Standard_G1', 'Standard_G2', 'Standard_G3', 'Standard_G4', 'Standard_G5', 'Standard_F2s_V2', 'Standard_F4s_V2', 'Standard_F8s_V2', 'Standard_F16s_V2', 'Standard_F32s_V2', 'Standard_F64s_V2', 'Standard_F72s_V2', 'Standard_GS1', 'Standard_GS2', 'Standard_GS3', 'Standard_GS4', 'Standard_GS5' and 'Standard_NC24'. Changing this forces a new resource to be created.
#   password (string)          : The Password associated with the local administrator for the Head Nodes. Changing this forces a new resource to be created.
#   ssh_keys (list)            : A list of SSH Keys which should be used for the local administrator on the Head Nodes. Changing this forces a new resource to be created.
#   subnet_id (string)         : The ID of the Subnet within the Virtual Network where the Head Nodes should be provisioned within. Changing this forces a new resource to be created.
#   virtual_network_id (string): The ID of the Virtual Network where the Head Nodes should be provisioned within. Changing this forces a new resource to be created.
#
# zookeeper_node block structure:
#   script_actions (block)        : The script action which will run on the cluster. One or more 'script_actions' blocks.
#   username (string)             : (REQUIRED) The Username of the local administrator for the Zookeeper Nodes. Changing this forces a new resource to be created.
#   vm_size (string)              : (REQUIRED) The Size of the Virtual Machine which should be used as the Zookeeper Nodes. Possible values are 'ExtraSmall', 'Small', 'Medium', 'Large', 'ExtraLarge', 'A5', 'A6', 'A7', 'A8', 'A9', 'A10', 'A11', 'Standard_A1_V2', 'Standard_A2_V2', 'Standard_A2m_V2', 'Standard_A3', 'Standard_A4_V2', 'Standard_A4m_V2', 'Standard_A8_V2', 'Standard_A8m_V2', 'Standard_D1', 'Standard_D2', 'Standard_D3', 'Standard_D4', 'Standard_D11', 'Standard_D12', 'Standard_D13', 'Standard_D14', 'Standard_D1_V2', 'Standard_D2_V2', 'Standard_D3_V2', 'Standard_D4_V2', 'Standard_D5_V2', 'Standard_D11_V2', 'Standard_D12_V2', 'Standard_D13_V2', 'Standard_D14_V2', 'Standard_DS1_V2', 'Standard_DS2_V2', 'Standard_DS3_V2', 'Standard_DS4_V2', 'Standard_DS5_V2', 'Standard_DS11_V2', 'Standard_DS12_V2', 'Standard_DS13_V2', 'Standard_DS14_V2', 'Standard_E2_V3', 'Standard_E4_V3', 'Standard_E8_V3', 'Standard_E16_V3', 'Standard_E20_V3', 'Standard_E32_V3', 'Standard_E64_V3', 'Standard_E64i_V3', 'Standard_E2s_V3', 'Standard_E4s_V3', 'Standard_E8s_V3', 'Standard_E16s_V3', 'Standard_E20s_V3', 'Standard_E32s_V3', 'Standard_E64s_V3', 'Standard_E64is_V3', 'Standard_D2a_V4', 'Standard_D4a_V4', 'Standard_D8a_V4', 'Standard_D16a_V4', 'Standard_D32a_V4', 'Standard_D48a_V4', 'Standard_D64a_V4', 'Standard_D96a_V4', 'Standard_E2a_V4', 'Standard_E4a_V4', 'Standard_E8a_V4', 'Standard_E16a_V4', 'Standard_E20a_V4', 'Standard_E32a_V4', 'Standard_E48a_V4', 'Standard_E64a_V4', 'Standard_E96a_V4', 'Standard_G1', 'Standard_G2', 'Standard_G3', 'Standard_G4', 'Standard_G5', 'Standard_F2s_V2', 'Standard_F4s_V2', 'Standard_F8s_V2', 'Standard_F16s_V2', 'Standard_F32s_V2', 'Standard_F64s_V2', 'Standard_F72s_V2', 'Standard_GS1', 'Standard_GS2', 'Standard_GS3', 'Standard_GS4', 'Standard_GS5' and 'Standard_NC24'. Changing this forces a new resource to be created.
#   password (string)             : The Password associated with the local administrator for the Zookeeper Nodes. Changing this forces a new resource to be created.
#   ssh_keys (list)               : A list of SSH Keys which should be used for the local administrator on the Zookeeper Nodes. Changing this forces a new resource to be created.
#   subnet_id (string)            : The ID of the Subnet within the Virtual Network where the Zookeeper Nodes should be provisioned within. Changing this forces a new resource to be created.
#   virtual_network_id (string)   : The ID of the Virtual Network where the Zookeeper Nodes should be provisioned within. Changing this forces a new resource to be created.
#
# worker_node block structure      :
#   script_actions (block)           : The script action which will run on the cluster. One or more 'script_actions' blocks.
#   number_of_disks_per_node (string): (REQUIRED) The number of Data Disks which should be assigned to each Worker Node, which can be between 1 and 8. Changing this forces a new resource to be created.
#   username (string)                : (REQUIRED) The Username of the local administrator for the Worker Nodes. Changing this forces a new resource to be created.
#   vm_size (string)                 : (REQUIRED) The Size of the Virtual Machine which should be used as the Worker Nodes. Possible values are 'ExtraSmall', 'Small', 'Medium', 'Large', 'ExtraLarge', 'A5', 'A6', 'A7', 'A8', 'A9', 'A10', 'A11', 'Standard_A1_V2', 'Standard_A2_V2', 'Standard_A2m_V2', 'Standard_A3', 'Standard_A4_V2', 'Standard_A4m_V2', 'Standard_A8_V2', 'Standard_A8m_V2', 'Standard_D1', 'Standard_D2', 'Standard_D3', 'Standard_D4', 'Standard_D11', 'Standard_D12', 'Standard_D13', 'Standard_D14', 'Standard_D1_V2', 'Standard_D2_V2', 'Standard_D3_V2', 'Standard_D4_V2', 'Standard_D5_V2', 'Standard_D11_V2', 'Standard_D12_V2', 'Standard_D13_V2', 'Standard_D14_V2', 'Standard_DS1_V2', 'Standard_DS2_V2', 'Standard_DS3_V2', 'Standard_DS4_V2', 'Standard_DS5_V2', 'Standard_DS11_V2', 'Standard_DS12_V2', 'Standard_DS13_V2', 'Standard_DS14_V2', 'Standard_E2_V3', 'Standard_E4_V3', 'Standard_E8_V3', 'Standard_E16_V3', 'Standard_E20_V3', 'Standard_E32_V3', 'Standard_E64_V3', 'Standard_E64i_V3', 'Standard_E2s_V3', 'Standard_E4s_V3', 'Standard_E8s_V3', 'Standard_E16s_V3', 'Standard_E20s_V3', 'Standard_E32s_V3', 'Standard_E64s_V3', 'Standard_E64is_V3', 'Standard_D2a_V4', 'Standard_D4a_V4', 'Standard_D8a_V4', 'Standard_D16a_V4', 'Standard_D32a_V4', 'Standard_D48a_V4', 'Standard_D64a_V4', 'Standard_D96a_V4', 'Standard_E2a_V4', 'Standard_E4a_V4', 'Standard_E8a_V4', 'Standard_E16a_V4', 'Standard_E20a_V4', 'Standard_E32a_V4', 'Standard_E48a_V4', 'Standard_E64a_V4', 'Standard_E96a_V4', 'Standard_G1', 'Standard_G2', 'Standard_G3', 'Standard_G4', 'Standard_G5', 'Standard_F2s_V2', 'Standard_F4s_V2', 'Standard_F8s_V2', 'Standard_F16s_V2', 'Standard_F32s_V2', 'Standard_F64s_V2', 'Standard_F72s_V2', 'Standard_GS1', 'Standard_GS2', 'Standard_GS3', 'Standard_GS4', 'Standard_GS5' and 'Standard_NC24'. Changing this forces a new resource to be created.
#   password (string)                : The Password associated with the local administrator for the Worker Nodes. Changing this forces a new resource to be created.
#   ssh_keys (list)                  : A list of SSH Keys which should be used for the local administrator on the Worker Nodes. Changing this forces a new resource to be created.
#   subnet_id (string)               : The ID of the Subnet within the Virtual Network where the Worker Nodes should be provisioned within. Changing this forces a new resource to be created.
#   target_instance_count (number)   : (REQUIRED) The number of instances which should be run for the Worker Nodes.
#   virtual_network_id (string)      : The ID of the Virtual Network where the Worker Nodes should be provisioned within. Changing this forces a new resource to be created.
#
# kafka_management_node block structure:
#   script_actions (block)               : The script action which will run on the cluster. One or more 'script_actions' blocks.
#   username (string)                    : (REQUIRED) The Username of the local administrator for the Kafka Management Nodes. Changing this forces a new resource to be created.
#   vm_size (string)                     : (REQUIRED) The Size of the Virtual Machine which should be used as the Kafka Management Nodes. Possible values are 'ExtraSmall', 'Small', 'Medium', 'Large', 'ExtraLarge', 'A5', 'A6', 'A7', 'A8', 'A9', 'A10', 'A11', 'Standard_A1_V2', 'Standard_A2_V2', 'Standard_A2m_V2', 'Standard_A3', 'Standard_A4_V2', 'Standard_A4m_V2', 'Standard_A8_V2', 'Standard_A8m_V2', 'Standard_D1', 'Standard_D2', 'Standard_D3', 'Standard_D4', 'Standard_D11', 'Standard_D12', 'Standard_D13', 'Standard_D14', 'Standard_D1_V2', 'Standard_D2_V2', 'Standard_D3_V2', 'Standard_D4_V2', 'Standard_D5_V2', 'Standard_D11_V2', 'Standard_D12_V2', 'Standard_D13_V2', 'Standard_D14_V2', 'Standard_DS1_V2', 'Standard_DS2_V2', 'Standard_DS3_V2', 'Standard_DS4_V2', 'Standard_DS5_V2', 'Standard_DS11_V2', 'Standard_DS12_V2', 'Standard_DS13_V2', 'Standard_DS14_V2', 'Standard_E2_V3', 'Standard_E4_V3', 'Standard_E8_V3', 'Standard_E16_V3', 'Standard_E20_V3', 'Standard_E32_V3', 'Standard_E64_V3', 'Standard_E64i_V3', 'Standard_E2s_V3', 'Standard_E4s_V3', 'Standard_E8s_V3', 'Standard_E16s_V3', 'Standard_E20s_V3', 'Standard_E32s_V3', 'Standard_E64s_V3', 'Standard_E64is_V3', 'Standard_D2a_V4', 'Standard_D4a_V4', 'Standard_D8a_V4', 'Standard_D16a_V4', 'Standard_D32a_V4', 'Standard_D48a_V4', 'Standard_D64a_V4', 'Standard_D96a_V4', 'Standard_E2a_V4', 'Standard_E4a_V4', 'Standard_E8a_V4', 'Standard_E16a_V4', 'Standard_E20a_V4', 'Standard_E32a_V4', 'Standard_E48a_V4', 'Standard_E64a_V4', 'Standard_E96a_V4', 'Standard_G1', 'Standard_G2', 'Standard_G3', 'Standard_G4', 'Standard_G5', 'Standard_F2s_V2', 'Standard_F4s_V2', 'Standard_F8s_V2', 'Standard_F16s_V2', 'Standard_F32s_V2', 'Standard_F64s_V2', 'Standard_F72s_V2', 'Standard_GS1', 'Standard_GS2', 'Standard_GS3', 'Standard_GS4', 'Standard_GS5' and 'Standard_NC24'. Changing this forces a new resource to be created.
#   password (string)                    : The Password associated with the local administrator for the Kafka Management Nodes. Changing this forces a new resource to be created.
#   ssh_keys (list)                      : A list of SSH Keys which should be used for the local administrator on the Kafka Management Nodes. Changing this forces a new resource to be created.
#   subnet_id (string)                   : The ID of the Subnet within the Virtual Network where the Kafka Management Nodes should be provisioned within. Changing this forces a new resource to be created.
#   virtual_network_id (string)          : The ID of the Virtual Network where the Kafka Management Nodes should be provisioned within. Changing this forces a new resource to be created.


variable "tier" {
  description = "(REQUIRED) Specifies the Tier which should be used for this HDInsight Kafka Cluster. Possible values are 'Standard' or 'Premium'. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "network" {
  description = "A 'network' block."
  type        = map(any)
  default     = null
}
#
# network block structure      :
#   connection_direction (string): The direction of the resource provider connection. Possible values include 'Inbound' or 'Outbound'. Defaults to 'Inbound'. Changing this forces a new resource to be created.
#   private_link_enabled (bool)  : Is the private link enabled? Possible values include 'true' or 'false'. Defaults to 'false'. Changing this forces a new resource to be created.


variable "storage_account" {
  description = "One or more 'storage_account' block."
  type        = map(any)
  default     = null
}
#
# storage_account block structure:
#   is_default (bool)              : (REQUIRED) Is this the Default Storage Account for the HDInsight Hadoop Cluster? Changing this forces a new resource to be created.
#   storage_account_key (string)   : (REQUIRED) The Access Key which should be used to connect to the Storage Account. Changing this forces a new resource to be created.
#   storage_container_id (string)  : (REQUIRED) The ID of the Storage Container. Changing this forces a new resource to be created.
#   storage_resource_id (string)   : The ID of the Storage Account. Changing this forces a new resource to be created.


variable "storage_account_gen2" {
  description = "A 'storage_account_gen2' block."
  type        = map(any)
  default     = null
}
#
# storage_account_gen2 block structure :
#   is_default (bool)                    : (REQUIRED) Is this the Default Storage Account for the HDInsight Hadoop Cluster? Changing this forces a new resource to be created.
#   storage_resource_id (string)         : (REQUIRED) The ID of the Storage Account. Changing this forces a new resource to be created.
#   filesystem_id (string)               : (REQUIRED) The ID of the Gen2 Filesystem. Changing this forces a new resource to be created.
#   managed_identity_resource_id (string): (REQUIRED) The ID of Managed Identity to use for accessing the Gen2 filesystem. Changing this forces a new resource to be created.


variable "compute_isolation" {
  description = "A 'compute_isolation' block."
  type        = map(any)
  default     = null
}
#
# compute_isolation block structure :
#   compute_isolation_enabled (string): This field indicates whether enable compute isolation or not. Possible values are 'true' or 'false'.
#   host_sku (string)                 : The name of the host SKU.


variable "tls_min_version" {
  description = "The minimal supported TLS version. Possible values are '1.0', '1.1' or '1.2'. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "encryption_in_transit_enabled" {
  description = "Whether encryption in transit is enabled for this HDInsight Kafka Cluster. Changing this forces a new resource to be created."
  type        = bool
  default     = null
}
variable "disk_encryption" {
  description = "One or more 'disk_encryption' block."
  type        = map(any)
  default     = null
}
#
# disk_encryption block structure       :
#   encryption_algorithm (string)         : This is an algorithm identifier for encryption. Possible values are 'RSA1_5', 'RSA-OAEP', 'RSA-OAEP-256'.
#   encryption_at_host_enabled (bool)     : This is indicator to show whether resource disk encryption is enabled.
#   key_vault_key_id (string)             : The ID of the key vault key.
#   key_vault_managed_identity_id (string): This is the resource ID of Managed Identity used to access the key vault.


variable "tags" {
  description = "A map of Tags which should be assigned to this HDInsight Kafka Cluster."
  type        = map(any)
  default     = null
}
variable "metastores" {
  description = "A 'metastores' block."
  type        = map(any)
  default     = null
}
#
# metastores block structure:
#   hive (block)              : A 'hive' block.
#   oozie (block)             : An 'oozie' block.
#   ambari (block)            : An 'ambari' block.
#
# ambari block structure:
#   server (string)       : (REQUIRED) The fully-qualified domain name (FQDN) of the SQL server to use for the external Ambari metastore. Changing this forces a new resource to be created.
#   database_name (string): (REQUIRED) The external Hive metastore's existing SQL database. Changing this forces a new resource to be created.
#   username (string)     : (REQUIRED) The external Ambari metastore's existing SQL server admin username. Changing this forces a new resource to be created.
#   password (string)     : (REQUIRED) The external Ambari metastore's existing SQL server admin password. Changing this forces a new resource to be created.
#
# hive block structure  :
#   server (string)       : (REQUIRED) The fully-qualified domain name (FQDN) of the SQL server to use for the external Hive metastore. Changing this forces a new resource to be created.
#   database_name (string): (REQUIRED) The external Hive metastore's existing SQL database. Changing this forces a new resource to be created.
#   username (string)     : (REQUIRED) The external Hive metastore's existing SQL server admin username. Changing this forces a new resource to be created.
#   password (string)     : (REQUIRED) The external Hive metastore's existing SQL server admin password. Changing this forces a new resource to be created.
#
# oozie block structure :
#   server (string)       : (REQUIRED) The fully-qualified domain name (FQDN) of the SQL server to use for the external Oozie metastore. Changing this forces a new resource to be created.
#   database_name (string): (REQUIRED) The external Oozie metastore's existing SQL database. Changing this forces a new resource to be created.
#   username (string)     : (REQUIRED) The external Oozie metastore's existing SQL server admin username. Changing this forces a new resource to be created.
#   password (string)     : (REQUIRED) The external Oozie metastore's existing SQL server admin password. Changing this forces a new resource to be created.


variable "monitor" {
  description = "A 'monitor' block."
  type        = map(any)
  default     = null
}
#
# monitor block structure            :
#   log_analytics_workspace_id (string): (REQUIRED) The Operations Management Suite (OMS) workspace ID.
#   primary_key (string)               : (REQUIRED) The Operations Management Suite (OMS) workspace key.


variable "extension" {
  description = "An 'extension' block."
  type        = map(any)
  default     = null
}
#
# extension block structure          :
#   log_analytics_workspace_id (string): (REQUIRED) The workspace ID of the log analytics extension.
#   primary_key (string)               : (REQUIRED) The workspace key of the log analytics extension.


variable "rest_proxy" {
  description = "A 'rest_proxy' block."
  type        = map(any)
  default     = null
}
#
# rest_proxy block structure  :
#   security_group_id (string)  : (REQUIRED) The Azure Active Directory Security Group ID. Changing this forces a new resource to be created.
#   security_group_name (string): (REQUIRED) The Azure Active Directory Security Group name. Changing this forces a new resource to be created.


variable "security_profile" {
  description = "A 'security_profile' block. Changing this forces a new resource to be created."
  type        = map(any)
  default     = null
}
#
# security_profile block structure:
#   aadds_resource_id (string)      : (REQUIRED) The resource ID of the Azure Active Directory Domain Service. Changing this forces a new resource to be created.
#   domain_name (string)            : (REQUIRED) The name of the Azure Active Directory Domain. Changing this forces a new resource to be created.
#   domain_username (string)        : (REQUIRED) The username of the Azure Active Directory Domain. Changing this forces a new resource to be created.
#   domain_user_password (string)   : (REQUIRED) The user password of the Azure Active Directory Domain. Changing this forces a new resource to be created.
#   ldaps_urls (list)               : (REQUIRED) A list of the LDAPS URLs to communicate with the Azure Active Directory. Changing this forces a new resource to be created.
#   msi_resource_id (string)        : (REQUIRED) The User Assigned Identity for the HDInsight Cluster. Changing this forces a new resource to be created.
#   cluster_users_group_dns (list)  : A list of the distinguished names for the cluster user groups. Changing this forces a new resource to be created.


