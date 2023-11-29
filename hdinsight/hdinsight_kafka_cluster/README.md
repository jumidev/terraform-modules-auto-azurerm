# azurerm_hdinsight_kafka_cluster

Manages a HDInsight Kafka Cluster.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name for this HDInsight Kafka Cluster. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  Specifies the name of the Resource Group in which this HDInsight Kafka Cluster should exist. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  Specifies the Azure Region which this HDInsight Kafka Cluster should exist. Changing this forces a new resource to be created. | 
| **var.cluster_version** | string | True | -  |  Specifies the Version of HDInsights which should be used for this Cluster. Changing this forces a new resource to be created. | 
| **var.component_version** | block | True | -  |  A `component_version` block. | 
| **var.gateway** | block | True | -  |  A `gateway` block. | 
| **var.roles** | block | True | -  |  A `roles` block. | 
| **var.network** | block | False | -  |  A `network` block. | 
| **var.storage_account** | block | False | -  |  One or more `storage_account` block. | 
| **var.storage_account_gen2** | block | False | -  |  A `storage_account_gen2` block. | 
| **var.tier** | string | True | `Standard`, `Premium`  |  Specifies the Tier which should be used for this HDInsight Kafka Cluster. Possible values are `Standard` or `Premium`. Changing this forces a new resource to be created. | 
| **var.compute_isolation** | block | False | -  |  A `compute_isolation` block. | 
| **var.tls_min_version** | string | False | `1.0`, `1.1`, `1.2`  |  The minimal supported TLS version. Possible values are `1.0`, `1.1` or `1.2`. Changing this forces a new resource to be created. | 
| **var.encryption_in_transit_enabled** | bool | False | -  |  Whether encryption in transit is enabled for this HDInsight Kafka Cluster. Changing this forces a new resource to be created. | 
| **var.disk_encryption** | block | False | -  |  One or more `disk_encryption` block. | 
| **var.tags** | map | False | -  |  A map of Tags which should be assigned to this HDInsight Kafka Cluster. | 
| **var.metastores** | block | False | -  |  A `metastores` block. | 
| **var.monitor** | block | False | -  |  A `monitor` block. | 
| **var.extension** | block | False | -  |  An `extension` block. | 
| **var.rest_proxy** | block | False | -  |  A `rest_proxy` block. | 
| **var.security_profile** | block | False | -  |  A `security_profile` block. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **cluster_version** | string  | - | 
| **component_version** | block  | - | 
| **gateway** | block  | - | 
| **roles** | block  | - | 
| **network** | block  | - | 
| **storage_account** | block  | - | 
| **storage_account_gen2** | block  | - | 
| **tier** | string  | - | 
| **compute_isolation** | block  | - | 
| **tls_min_version** | string  | - | 
| **encryption_in_transit_enabled** | bool  | - | 
| **disk_encryption** | block  | - | 
| **tags** | map  | - | 
| **metastores** | block  | - | 
| **monitor** | block  | - | 
| **extension** | block  | - | 
| **rest_proxy** | block  | - | 
| **security_profile** | block  | - | 
| **id** | string  | The ID of the HDInsight Kafka Cluster. | 
| **https_endpoint** | string  | The HTTPS Connectivity Endpoint for this HDInsight Kafka Cluster. | 
| **kafka_rest_proxy_endpoint** | string  | The Kafka Rest Proxy Endpoint for this HDInsight Kafka Cluster. | 
| **ssh_endpoint** | string  | The SSH Connectivity Endpoint for this HDInsight Kafka Cluster. | 