# azurerm_hdinsight_kafka_cluster

Manages a HDInsight Kafka Cluster.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "hdinsight/hdinsight_kafka_cluster" 
}

inputs = {
   name = "name of hdinsight_kafka_cluster" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   cluster_version = "cluster_version of hdinsight_kafka_cluster" 
   component_version = {
      example_component_version = {
         kafka = "..."   
      }
  
   }
 
   gateway = {
      example_gateway = {
         password = "..."   
         username = "..."   
      }
  
   }
 
   roles = {
      example_roles = {
         head_node = "..."   
         worker_node = "..."   
         zookeeper_node = "..."   
      }
  
   }
 
   tier = "tier of hdinsight_kafka_cluster" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  Specifies the name for this HDInsight Kafka Cluster. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  Specifies the name of the Resource Group in which this HDInsight Kafka Cluster should exist. Changing this forces a new resource to be created. | 
| **location** | string |  -  |  Specifies the Azure Region which this HDInsight Kafka Cluster should exist. Changing this forces a new resource to be created. | 
| **cluster_version** | string |  -  |  Specifies the Version of HDInsights which should be used for this Cluster. Changing this forces a new resource to be created. | 
| **component_version** | [block](#component_version-block-structure) |  -  |  A `component_version` block. | 
| **gateway** | [block](#gateway-block-structure) |  -  |  A `gateway` block. | 
| **roles** | [block](#roles-block-structure) |  -  |  A `roles` block. | 
| **tier** | string |  `Standard`, `Premium`  |  Specifies the Tier which should be used for this HDInsight Kafka Cluster. Possible values are `Standard` or `Premium`. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **network** | [block](#network-block-structure) |  -  |  A `network` block. | 
| **storage_account** | [block](#storage_account-block-structure) |  -  |  One or more `storage_account` block. | 
| **storage_account_gen2** | [block](#storage_account_gen2-block-structure) |  -  |  A `storage_account_gen2` block. | 
| **compute_isolation** | [block](#compute_isolation-block-structure) |  -  |  A `compute_isolation` block. | 
| **tls_min_version** | string |  `1.0`, `1.1`, `1.2`  |  The minimal supported TLS version. Possible values are `1.0`, `1.1` or `1.2`. Changing this forces a new resource to be created. | 
| **encryption_in_transit_enabled** | bool |  -  |  Whether encryption in transit is enabled for this HDInsight Kafka Cluster. Changing this forces a new resource to be created. | 
| **disk_encryption** | [block](#disk_encryption-block-structure) |  -  |  One or more `disk_encryption` block. | 
| **tags** | map |  -  |  A map of Tags which should be assigned to this HDInsight Kafka Cluster. | 
| **metastores** | [block](#metastores-block-structure) |  -  |  A `metastores` block. | 
| **monitor** | [block](#monitor-block-structure) |  -  |  A `monitor` block. | 
| **extension** | [block](#extension-block-structure) |  -  |  An `extension` block. | 
| **rest_proxy** | [block](#rest_proxy-block-structure) |  -  |  A `rest_proxy` block. | 
| **security_profile** | [block](#security_profile-block-structure) |  -  |  A `security_profile` block. Changing this forces a new resource to be created. | 

### `worker_node` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `script_actions` | [block](#worker_node-block-structure) | No | - | The script action which will run on the cluster. One or more 'script_actions' blocks. |
| `number_of_disks_per_node` | int | Yes | - | The number of Data Disks which should be assigned to each Worker Node, which can be between 1 and 8. Changing this forces a new resource to be created. |
| `username` | string | Yes | - | The Username of the local administrator for the Worker Nodes. Changing this forces a new resource to be created. |
| `vm_size` | string | Yes | - | The Size of the Virtual Machine which should be used as the Worker Nodes. Possible values are 'ExtraSmall', 'Small', 'Medium', 'Large', 'ExtraLarge', 'A5', 'A6', 'A7', 'A8', 'A9', 'A10', 'A11', 'Standard_A1_V2', 'Standard_A2_V2', 'Standard_A2m_V2', 'Standard_A3', 'Standard_A4_V2', 'Standard_A4m_V2', 'Standard_A8_V2', 'Standard_A8m_V2', 'Standard_D1', 'Standard_D2', 'Standard_D3', 'Standard_D4', 'Standard_D11', 'Standard_D12', 'Standard_D13', 'Standard_D14', 'Standard_D1_V2', 'Standard_D2_V2', 'Standard_D3_V2', 'Standard_D4_V2', 'Standard_D5_V2', 'Standard_D11_V2', 'Standard_D12_V2', 'Standard_D13_V2', 'Standard_D14_V2', 'Standard_DS1_V2', 'Standard_DS2_V2', 'Standard_DS3_V2', 'Standard_DS4_V2', 'Standard_DS5_V2', 'Standard_DS11_V2', 'Standard_DS12_V2', 'Standard_DS13_V2', 'Standard_DS14_V2', 'Standard_E2_V3', 'Standard_E4_V3', 'Standard_E8_V3', 'Standard_E16_V3', 'Standard_E20_V3', 'Standard_E32_V3', 'Standard_E64_V3', 'Standard_E64i_V3', 'Standard_E2s_V3', 'Standard_E4s_V3', 'Standard_E8s_V3', 'Standard_E16s_V3', 'Standard_E20s_V3', 'Standard_E32s_V3', 'Standard_E64s_V3', 'Standard_E64is_V3', 'Standard_D2a_V4', 'Standard_D4a_V4', 'Standard_D8a_V4', 'Standard_D16a_V4', 'Standard_D32a_V4', 'Standard_D48a_V4', 'Standard_D64a_V4', 'Standard_D96a_V4', 'Standard_E2a_V4', 'Standard_E4a_V4', 'Standard_E8a_V4', 'Standard_E16a_V4', 'Standard_E20a_V4', 'Standard_E32a_V4', 'Standard_E48a_V4', 'Standard_E64a_V4', 'Standard_E96a_V4', 'Standard_G1', 'Standard_G2', 'Standard_G3', 'Standard_G4', 'Standard_G5', 'Standard_F2s_V2', 'Standard_F4s_V2', 'Standard_F8s_V2', 'Standard_F16s_V2', 'Standard_F32s_V2', 'Standard_F64s_V2', 'Standard_F72s_V2', 'Standard_GS1', 'Standard_GS2', 'Standard_GS3', 'Standard_GS4', 'Standard_GS5' and 'Standard_NC24'. Changing this forces a new resource to be created. |
| `password` | string | No | - | The Password associated with the local administrator for the Worker Nodes. Changing this forces a new resource to be created. |
| `ssh_keys` | list | No | - | A list of SSH Keys which should be used for the local administrator on the Worker Nodes. Changing this forces a new resource to be created. |
| `subnet_id` | string | No | - | The ID of the Subnet within the Virtual Network where the Worker Nodes should be provisioned within. Changing this forces a new resource to be created. |
| `target_instance_count` | int | Yes | - | The number of instances which should be run for the Worker Nodes. |
| `virtual_network_id` | string | No | - | The ID of the Virtual Network where the Worker Nodes should be provisioned within. Changing this forces a new resource to be created. |

### `rest_proxy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `security_group_id` | string | Yes | - | The Azure Active Directory Security Group ID. Changing this forces a new resource to be created. |
| `security_group_name` | string | Yes | - | The Azure Active Directory Security Group name. Changing this forces a new resource to be created. |

### `storage_account` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `is_default` | bool | Yes | - | Is this the Default Storage Account for the HDInsight Hadoop Cluster? Changing this forces a new resource to be created. |
| `storage_account_key` | string | Yes | - | The Access Key which should be used to connect to the Storage Account. Changing this forces a new resource to be created. |
| `storage_container_id` | string | Yes | - | The ID of the Storage Container. Changing this forces a new resource to be created. |
| `storage_resource_id` | string | No | - | The ID of the Storage Account. Changing this forces a new resource to be created. |

### `network` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `connection_direction` | string | No | Inbound | The direction of the resource provider connection. Possible values include 'Inbound' or 'Outbound'. Defaults to 'Inbound'. Changing this forces a new resource to be created. |
| `private_link_enabled` | bool | No | False | Is the private link enabled? Possible values include 'true' or 'false'. Defaults to 'false'. Changing this forces a new resource to be created. |

### `storage_account_gen2` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `is_default` | bool | Yes | - | Is this the Default Storage Account for the HDInsight Hadoop Cluster? Changing this forces a new resource to be created. |
| `storage_resource_id` | string | Yes | - | The ID of the Storage Account. Changing this forces a new resource to be created. |
| `filesystem_id` | string | Yes | - | The ID of the Gen2 Filesystem. Changing this forces a new resource to be created. |
| `managed_identity_resource_id` | string | Yes | - | The ID of Managed Identity to use for accessing the Gen2 filesystem. Changing this forces a new resource to be created. |

### `component_version` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `kafka` | string | Yes | - | The version of Kafka which should be used for this HDInsight Kafka Cluster. Changing this forces a new resource to be created. |

### `security_profile` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `aadds_resource_id` | string | Yes | - | The resource ID of the Azure Active Directory Domain Service. Changing this forces a new resource to be created. |
| `domain_name` | string | Yes | - | The name of the Azure Active Directory Domain. Changing this forces a new resource to be created. |
| `domain_username` | string | Yes | - | The username of the Azure Active Directory Domain. Changing this forces a new resource to be created. |
| `domain_user_password` | string | Yes | - | The user password of the Azure Active Directory Domain. Changing this forces a new resource to be created. |
| `ldaps_urls` | list | Yes | - | A list of the LDAPS URLs to communicate with the Azure Active Directory. Changing this forces a new resource to be created. |
| `msi_resource_id` | string | Yes | - | The User Assigned Identity for the HDInsight Cluster. Changing this forces a new resource to be created. |
| `cluster_users_group_dns` | list | No | - | A list of the distinguished names for the cluster user groups. Changing this forces a new resource to be created. |

### `oozie` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `server` | string | Yes | - | The fully-qualified domain name (FQDN) of the SQL server to use for the external Oozie metastore. Changing this forces a new resource to be created. |
| `database_name` | string | Yes | - | The external Oozie metastore's existing SQL database. Changing this forces a new resource to be created. |
| `username` | string | Yes | - | The external Oozie metastore's existing SQL server admin username. Changing this forces a new resource to be created. |
| `password` | string | Yes | - | The external Oozie metastore's existing SQL server admin password. Changing this forces a new resource to be created. |

### `monitor` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `log_analytics_workspace_id` | string | Yes | - | The Operations Management Suite (OMS) workspace ID. |
| `primary_key` | string | Yes | - | The Operations Management Suite (OMS) workspace key. |

### `metastores` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `hive` | [block](#metastores-block-structure) | No | - | A 'hive' block. |
| `oozie` | [block](#metastores-block-structure) | No | - | An 'oozie' block. |
| `ambari` | [block](#metastores-block-structure) | No | - | An 'ambari' block. |

### `disk_encryption` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `encryption_algorithm` | string | No | - | This is an algorithm identifier for encryption. Possible values are 'RSA1_5', 'RSA-OAEP', 'RSA-OAEP-256'. |
| `encryption_at_host_enabled` | bool | No | - | This is indicator to show whether resource disk encryption is enabled. |
| `key_vault_key_id` | string | No | - | The ID of the key vault key. |
| `key_vault_managed_identity_id` | string | No | - | This is the resource ID of Managed Identity used to access the key vault. |

### `zookeeper_node` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `script_actions` | [block](#zookeeper_node-block-structure) | No | - | The script action which will run on the cluster. One or more 'script_actions' blocks. |
| `username` | string | Yes | - | The Username of the local administrator for the Zookeeper Nodes. Changing this forces a new resource to be created. |
| `vm_size` | string | Yes | - | The Size of the Virtual Machine which should be used as the Zookeeper Nodes. Possible values are 'ExtraSmall', 'Small', 'Medium', 'Large', 'ExtraLarge', 'A5', 'A6', 'A7', 'A8', 'A9', 'A10', 'A11', 'Standard_A1_V2', 'Standard_A2_V2', 'Standard_A2m_V2', 'Standard_A3', 'Standard_A4_V2', 'Standard_A4m_V2', 'Standard_A8_V2', 'Standard_A8m_V2', 'Standard_D1', 'Standard_D2', 'Standard_D3', 'Standard_D4', 'Standard_D11', 'Standard_D12', 'Standard_D13', 'Standard_D14', 'Standard_D1_V2', 'Standard_D2_V2', 'Standard_D3_V2', 'Standard_D4_V2', 'Standard_D5_V2', 'Standard_D11_V2', 'Standard_D12_V2', 'Standard_D13_V2', 'Standard_D14_V2', 'Standard_DS1_V2', 'Standard_DS2_V2', 'Standard_DS3_V2', 'Standard_DS4_V2', 'Standard_DS5_V2', 'Standard_DS11_V2', 'Standard_DS12_V2', 'Standard_DS13_V2', 'Standard_DS14_V2', 'Standard_E2_V3', 'Standard_E4_V3', 'Standard_E8_V3', 'Standard_E16_V3', 'Standard_E20_V3', 'Standard_E32_V3', 'Standard_E64_V3', 'Standard_E64i_V3', 'Standard_E2s_V3', 'Standard_E4s_V3', 'Standard_E8s_V3', 'Standard_E16s_V3', 'Standard_E20s_V3', 'Standard_E32s_V3', 'Standard_E64s_V3', 'Standard_E64is_V3', 'Standard_D2a_V4', 'Standard_D4a_V4', 'Standard_D8a_V4', 'Standard_D16a_V4', 'Standard_D32a_V4', 'Standard_D48a_V4', 'Standard_D64a_V4', 'Standard_D96a_V4', 'Standard_E2a_V4', 'Standard_E4a_V4', 'Standard_E8a_V4', 'Standard_E16a_V4', 'Standard_E20a_V4', 'Standard_E32a_V4', 'Standard_E48a_V4', 'Standard_E64a_V4', 'Standard_E96a_V4', 'Standard_G1', 'Standard_G2', 'Standard_G3', 'Standard_G4', 'Standard_G5', 'Standard_F2s_V2', 'Standard_F4s_V2', 'Standard_F8s_V2', 'Standard_F16s_V2', 'Standard_F32s_V2', 'Standard_F64s_V2', 'Standard_F72s_V2', 'Standard_GS1', 'Standard_GS2', 'Standard_GS3', 'Standard_GS4', 'Standard_GS5' and 'Standard_NC24'. Changing this forces a new resource to be created. |
| `password` | string | No | - | The Password associated with the local administrator for the Zookeeper Nodes. Changing this forces a new resource to be created. |
| `ssh_keys` | list | No | - | A list of SSH Keys which should be used for the local administrator on the Zookeeper Nodes. Changing this forces a new resource to be created. |
| `subnet_id` | string | No | - | The ID of the Subnet within the Virtual Network where the Zookeeper Nodes should be provisioned within. Changing this forces a new resource to be created. |
| `virtual_network_id` | string | No | - | The ID of the Virtual Network where the Zookeeper Nodes should be provisioned within. Changing this forces a new resource to be created. |

### `gateway` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `password` | string | Yes | - | The password used for the Ambari Portal. |
| `username` | string | Yes | - | The username used for the Ambari Portal. Changing this forces a new resource to be created. |

### `ambari` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `server` | string | Yes | - | The fully-qualified domain name (FQDN) of the SQL server to use for the external Ambari metastore. Changing this forces a new resource to be created. |
| `database_name` | string | Yes | - | The external Hive metastore's existing SQL database. Changing this forces a new resource to be created. |
| `username` | string | Yes | - | The external Ambari metastore's existing SQL server admin username. Changing this forces a new resource to be created. |
| `password` | string | Yes | - | The external Ambari metastore's existing SQL server admin password. Changing this forces a new resource to be created. |

### `extension` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `log_analytics_workspace_id` | string | Yes | - | The workspace ID of the log analytics extension. |
| `primary_key` | string | Yes | - | The workspace key of the log analytics extension. |

### `kafka_management_node` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `script_actions` | [block](#kafka_management_node-block-structure) | No | - | The script action which will run on the cluster. One or more 'script_actions' blocks. |
| `username` | string | Yes | - | The Username of the local administrator for the Kafka Management Nodes. Changing this forces a new resource to be created. |
| `vm_size` | string | Yes | - | The Size of the Virtual Machine which should be used as the Kafka Management Nodes. Possible values are 'ExtraSmall', 'Small', 'Medium', 'Large', 'ExtraLarge', 'A5', 'A6', 'A7', 'A8', 'A9', 'A10', 'A11', 'Standard_A1_V2', 'Standard_A2_V2', 'Standard_A2m_V2', 'Standard_A3', 'Standard_A4_V2', 'Standard_A4m_V2', 'Standard_A8_V2', 'Standard_A8m_V2', 'Standard_D1', 'Standard_D2', 'Standard_D3', 'Standard_D4', 'Standard_D11', 'Standard_D12', 'Standard_D13', 'Standard_D14', 'Standard_D1_V2', 'Standard_D2_V2', 'Standard_D3_V2', 'Standard_D4_V2', 'Standard_D5_V2', 'Standard_D11_V2', 'Standard_D12_V2', 'Standard_D13_V2', 'Standard_D14_V2', 'Standard_DS1_V2', 'Standard_DS2_V2', 'Standard_DS3_V2', 'Standard_DS4_V2', 'Standard_DS5_V2', 'Standard_DS11_V2', 'Standard_DS12_V2', 'Standard_DS13_V2', 'Standard_DS14_V2', 'Standard_E2_V3', 'Standard_E4_V3', 'Standard_E8_V3', 'Standard_E16_V3', 'Standard_E20_V3', 'Standard_E32_V3', 'Standard_E64_V3', 'Standard_E64i_V3', 'Standard_E2s_V3', 'Standard_E4s_V3', 'Standard_E8s_V3', 'Standard_E16s_V3', 'Standard_E20s_V3', 'Standard_E32s_V3', 'Standard_E64s_V3', 'Standard_E64is_V3', 'Standard_D2a_V4', 'Standard_D4a_V4', 'Standard_D8a_V4', 'Standard_D16a_V4', 'Standard_D32a_V4', 'Standard_D48a_V4', 'Standard_D64a_V4', 'Standard_D96a_V4', 'Standard_E2a_V4', 'Standard_E4a_V4', 'Standard_E8a_V4', 'Standard_E16a_V4', 'Standard_E20a_V4', 'Standard_E32a_V4', 'Standard_E48a_V4', 'Standard_E64a_V4', 'Standard_E96a_V4', 'Standard_G1', 'Standard_G2', 'Standard_G3', 'Standard_G4', 'Standard_G5', 'Standard_F2s_V2', 'Standard_F4s_V2', 'Standard_F8s_V2', 'Standard_F16s_V2', 'Standard_F32s_V2', 'Standard_F64s_V2', 'Standard_F72s_V2', 'Standard_GS1', 'Standard_GS2', 'Standard_GS3', 'Standard_GS4', 'Standard_GS5' and 'Standard_NC24'. Changing this forces a new resource to be created. |
| `password` | string | No | - | The Password associated with the local administrator for the Kafka Management Nodes. Changing this forces a new resource to be created. |
| `ssh_keys` | list | No | - | A list of SSH Keys which should be used for the local administrator on the Kafka Management Nodes. Changing this forces a new resource to be created. |
| `subnet_id` | string | No | - | The ID of the Subnet within the Virtual Network where the Kafka Management Nodes should be provisioned within. Changing this forces a new resource to be created. |
| `virtual_network_id` | string | No | - | The ID of the Virtual Network where the Kafka Management Nodes should be provisioned within. Changing this forces a new resource to be created. |

### `roles` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `head_node` | [block](#roles-block-structure) | Yes | - | A 'head_node' block. |
| `worker_node` | [block](#roles-block-structure) | Yes | - | A 'worker_node' block. |
| `zookeeper_node` | [block](#roles-block-structure) | Yes | - | A 'zookeeper_node' block. |
| `kafka_management_node` | [block](#roles-block-structure) | No | - | A 'kafka_management_node' block. |

### `hive` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `server` | string | Yes | - | The fully-qualified domain name (FQDN) of the SQL server to use for the external Hive metastore. Changing this forces a new resource to be created. |
| `database_name` | string | Yes | - | The external Hive metastore's existing SQL database. Changing this forces a new resource to be created. |
| `username` | string | Yes | - | The external Hive metastore's existing SQL server admin username. Changing this forces a new resource to be created. |
| `password` | string | Yes | - | The external Hive metastore's existing SQL server admin password. Changing this forces a new resource to be created. |

### `script_actions` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `uri` | string | Yes | - | The URI to the script. |
| `parameters` | string | No | - | The parameters for the script provided. |

### `head_node` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `script_actions` | [block](#head_node-block-structure) | No | - | The script action which will run on the cluster. One or more 'script_actions' blocks. |
| `username` | string | Yes | - | The Username of the local administrator for the Head Nodes. Changing this forces a new resource to be created. |
| `vm_size` | string | Yes | - | The Size of the Virtual Machine which should be used as the Head Nodes. Possible values are 'ExtraSmall', 'Small', 'Medium', 'Large', 'ExtraLarge', 'A5', 'A6', 'A7', 'A8', 'A9', 'A10', 'A11', 'Standard_A1_V2', 'Standard_A2_V2', 'Standard_A2m_V2', 'Standard_A3', 'Standard_A4_V2', 'Standard_A4m_V2', 'Standard_A8_V2', 'Standard_A8m_V2', 'Standard_D1', 'Standard_D2', 'Standard_D3', 'Standard_D4', 'Standard_D11', 'Standard_D12', 'Standard_D13', 'Standard_D14', 'Standard_D1_V2', 'Standard_D2_V2', 'Standard_D3_V2', 'Standard_D4_V2', 'Standard_D5_V2', 'Standard_D11_V2', 'Standard_D12_V2', 'Standard_D13_V2', 'Standard_D14_V2', 'Standard_DS1_V2', 'Standard_DS2_V2', 'Standard_DS3_V2', 'Standard_DS4_V2', 'Standard_DS5_V2', 'Standard_DS11_V2', 'Standard_DS12_V2', 'Standard_DS13_V2', 'Standard_DS14_V2', 'Standard_E2_V3', 'Standard_E4_V3', 'Standard_E8_V3', 'Standard_E16_V3', 'Standard_E20_V3', 'Standard_E32_V3', 'Standard_E64_V3', 'Standard_E64i_V3', 'Standard_E2s_V3', 'Standard_E4s_V3', 'Standard_E8s_V3', 'Standard_E16s_V3', 'Standard_E20s_V3', 'Standard_E32s_V3', 'Standard_E64s_V3', 'Standard_E64is_V3', 'Standard_D2a_V4', 'Standard_D4a_V4', 'Standard_D8a_V4', 'Standard_D16a_V4', 'Standard_D32a_V4', 'Standard_D48a_V4', 'Standard_D64a_V4', 'Standard_D96a_V4', 'Standard_E2a_V4', 'Standard_E4a_V4', 'Standard_E8a_V4', 'Standard_E16a_V4', 'Standard_E20a_V4', 'Standard_E32a_V4', 'Standard_E48a_V4', 'Standard_E64a_V4', 'Standard_E96a_V4', 'Standard_G1', 'Standard_G2', 'Standard_G3', 'Standard_G4', 'Standard_G5', 'Standard_F2s_V2', 'Standard_F4s_V2', 'Standard_F8s_V2', 'Standard_F16s_V2', 'Standard_F32s_V2', 'Standard_F64s_V2', 'Standard_F72s_V2', 'Standard_GS1', 'Standard_GS2', 'Standard_GS3', 'Standard_GS4', 'Standard_GS5' and 'Standard_NC24'. Changing this forces a new resource to be created. |
| `password` | string | No | - | The Password associated with the local administrator for the Head Nodes. Changing this forces a new resource to be created. |
| `ssh_keys` | list | No | - | A list of SSH Keys which should be used for the local administrator on the Head Nodes. Changing this forces a new resource to be created. |
| `subnet_id` | string | No | - | The ID of the Subnet within the Virtual Network where the Head Nodes should be provisioned within. Changing this forces a new resource to be created. |
| `virtual_network_id` | string | No | - | The ID of the Virtual Network where the Head Nodes should be provisioned within. Changing this forces a new resource to be created. |

### `compute_isolation` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `compute_isolation_enabled` | string | No | - | This field indicates whether enable compute isolation or not. Possible values are 'true' or 'false'. |
| `host_sku` | string | No | - | The name of the host SKU. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the HDInsight Kafka Cluster. | 
| **https_endpoint** | string | No  | The HTTPS Connectivity Endpoint for this HDInsight Kafka Cluster. | 
| **kafka_rest_proxy_endpoint** | string | No  | The Kafka Rest Proxy Endpoint for this HDInsight Kafka Cluster. | 
| **ssh_endpoint** | string | No  | The SSH Connectivity Endpoint for this HDInsight Kafka Cluster. | 

Additionally, all variables are provided as outputs.
