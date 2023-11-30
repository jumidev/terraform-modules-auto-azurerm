# azurerm_hdinsight_interactive_query_cluster

Manages a HDInsight Interactive Query Cluster.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "hdinsight/hdinsight_interactive_query_cluster" 
}

inputs = {
   name = "name of hdinsight_interactive_query_cluster" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   cluster_version = "cluster_version of hdinsight_interactive_query_cluster" 
   component_version = "component_version of hdinsight_interactive_query_cluster" 
   gateway = "gateway of hdinsight_interactive_query_cluster" 
   roles = "roles of hdinsight_interactive_query_cluster" 
   tier = "tier of hdinsight_interactive_query_cluster" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name for this HDInsight Interactive Query Cluster. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  Specifies the name of the Resource Group in which this HDInsight Interactive Query Cluster should exist. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  Specifies the Azure Region which this HDInsight Interactive Query Cluster should exist. Changing this forces a new resource to be created. | 
| **var.cluster_version** | string | True | -  |  Specifies the Version of HDInsights which should be used for this Cluster. Changing this forces a new resource to be created. | 
| **var.component_version** | block | True | -  |  A `component_version` block. | | `component_version` block structure: || 
|   interactive_hive (string): (REQUIRED) The version of Interactive Query which should be used for this HDInsight Interactive Query Cluster. Changing this forces a new resource to be created. ||

| **var.encryption_in_transit_enabled** | bool | False | -  |  Whether encryption in transit is enabled for this Cluster. Changing this forces a new resource to be created. | 
| **var.disk_encryption** | block | False | -  |  A `disk_encryption` block. | | `disk_encryption` block structure: || 
|   encryption_algorithm (string): This is an algorithm identifier for encryption. Possible values are 'RSA1_5', 'RSA-OAEP', 'RSA-OAEP-256'. ||
|   encryption_at_host_enabled (bool): This is indicator to show whether resource disk encryption is enabled. ||
|   key_vault_key_id (string): The ID of the key vault key. ||
|   key_vault_managed_identity_id (string): This is the resource ID of Managed Identity used to access the key vault. ||

| **var.gateway** | block | True | -  |  A `gateway` block. | | `gateway` block structure: || 
|   password (string): (REQUIRED) The password used for the Ambari Portal. ||
|   username (string): (REQUIRED) The username used for the Ambari Portal. Changing this forces a new resource to be created. ||

| **var.roles** | block | True | -  |  A `roles` block. | | `roles` block structure: || 
|   head_node (block): (REQUIRED) A 'head_node' block. ||
|   worker_node (block): (REQUIRED) A 'worker_node' block. ||
|   zookeeper_node (block): (REQUIRED) A 'zookeeper_node' block. ||

| **var.network** | block | False | -  |  A `network` block. | | `network` block structure: || 
|   connection_direction (string): The direction of the resource provider connection. Possible values include 'Inbound' or 'Outbound'. Defaults to 'Inbound'. Changing this forces a new resource to be created. ||
|   private_link_enabled (bool): Is the private link enabled? Possible values include 'true' or 'false'. Defaults to 'false'. Changing this forces a new resource to be created. ||

| **var.compute_isolation** | block | False | -  |  A `compute_isolation` block. | | `compute_isolation` block structure: || 
|   compute_isolation_enabled (string): This field indicates whether enable compute isolation or not. Possible values are 'true' or 'false'. ||
|   host_sku (string): The name of the host SKU. ||

| **var.storage_account** | block | False | -  |  One or more `storage_account` block. | | `storage_account` block structure: || 
|   is_default (bool): (REQUIRED) Is this the Default Storage Account for the HDInsight Hadoop Cluster? Changing this forces a new resource to be created. ||
|   storage_account_key (string): (REQUIRED) The Access Key which should be used to connect to the Storage Account. Changing this forces a new resource to be created. ||
|   storage_container_id (string): (REQUIRED) The ID of the Storage Container. Changing this forces a new resource to be created. ||
|   storage_resource_id (string): The ID of the Storage Account. Changing this forces a new resource to be created. ||

| **var.storage_account_gen2** | block | False | -  |  A `storage_account_gen2` block. | | `storage_account_gen2` block structure: || 
|   is_default (bool): (REQUIRED) Is this the Default Storage Account for the HDInsight Hadoop Cluster? Changing this forces a new resource to be created. ||
|   storage_resource_id (string): (REQUIRED) The ID of the Storage Account. Changing this forces a new resource to be created. ||
|   filesystem_id (string): (REQUIRED) The ID of the Gen2 Filesystem. Changing this forces a new resource to be created. ||
|   managed_identity_resource_id (string): (REQUIRED) The ID of Managed Identity to use for accessing the Gen2 filesystem. Changing this forces a new resource to be created. ||

| **var.tier** | string | True | `Standard`, `Premium`  |  Specifies the Tier which should be used for this HDInsight Interactive Query Cluster. Possible values are `Standard` or `Premium`. Changing this forces a new resource to be created. | 
| **var.tls_min_version** | string | False | -  |  The minimal supported TLS version. Possible values are 1.0, 1.1 or 1.2. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | -  |  A map of Tags which should be assigned to this HDInsight Interactive Query Cluster. | 
| **var.metastores** | block | False | -  |  A `metastores` block. | | `metastores` block structure: || 
|   hive (block): A 'hive' block. ||
|   oozie (block): An 'oozie' block. ||
|   ambari (block): An 'ambari' block. ||

| **var.monitor** | block | False | -  |  A `monitor` block. | | `monitor` block structure: || 
|   log_analytics_workspace_id (string): (REQUIRED) The Operations Management Suite (OMS) workspace ID. ||
|   primary_key (string): (REQUIRED) The Operations Management Suite (OMS) workspace key. ||

| **var.extension** | block | False | -  |  An `extension` block. | | `extension` block structure: || 
|   log_analytics_workspace_id (string): (REQUIRED) The workspace ID of the log analytics extension. ||
|   primary_key (string): (REQUIRED) The workspace key of the log analytics extension. ||

| **var.security_profile** | block | False | -  |  A `security_profile` block. Changing this forces a new resource to be created. | | `security_profile` block structure: || 
|   aadds_resource_id (string): (REQUIRED) The resource ID of the Azure Active Directory Domain Service. Changing this forces a new resource to be created. ||
|   domain_name (string): (REQUIRED) The name of the Azure Active Directory Domain. Changing this forces a new resource to be created. ||
|   domain_username (string): (REQUIRED) The username of the Azure Active Directory Domain. Changing this forces a new resource to be created. ||
|   domain_user_password (string): (REQUIRED) The user password of the Azure Active Directory Domain. Changing this forces a new resource to be created. ||
|   ldaps_urls (list): (REQUIRED) A list of the LDAPS URLs to communicate with the Azure Active Directory. Changing this forces a new resource to be created. ||
|   msi_resource_id (string): (REQUIRED) The User Assigned Identity for the HDInsight Cluster. Changing this forces a new resource to be created. ||
|   cluster_users_group_dns (list): A list of the distinguished names for the cluster user groups. Changing this forces a new resource to be created. ||




## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the HDInsight Interactive Query Cluster. | 
| **https_endpoint** | string | No  | The HTTPS Connectivity Endpoint for this HDInsight Interactive Query Cluster. | 
| **ssh_endpoint** | string | No  | The SSH Connectivity Endpoint for this HDInsight Interactive Query Cluster. | 

Additionally, all variables are provided as outputs.
