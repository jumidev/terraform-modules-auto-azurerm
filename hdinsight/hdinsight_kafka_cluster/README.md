# azurerm_hdinsight_kafka_cluster

Manages a HDInsight Kafka Cluster.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name for this HDInsight Kafka Cluster. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | Specifies the name of the Resource Group in which this HDInsight Kafka Cluster should exist. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the Azure Region which this HDInsight Kafka Cluster should exist. Changing this forces a new resource to be created. | 
| **cluster_version** | string | True | -  |  -  | Specifies the Version of HDInsights which should be used for this Cluster. Changing this forces a new resource to be created. | 
| **component_version** | block | True | -  |  -  | A `component_version` block. | 
| **gateway** | block | True | -  |  -  | A `gateway` block. | 
| **roles** | block | True | -  |  -  | A `roles` block. | 
| **network** | block | False | -  |  -  | A `network` block. | 
| **storage_account** | block | False | -  |  -  | One or more `storage_account` block. | 
| **storage_account_gen2** | block | False | -  |  -  | A `storage_account_gen2` block. | 
| **tier** | string | True | -  |  `Standard`, `Premium`  | Specifies the Tier which should be used for this HDInsight Kafka Cluster. Possible values are `Standard` or `Premium`. Changing this forces a new resource to be created. | 
| **compute_isolation** | block | False | -  |  -  | A `compute_isolation` block. | 
| **tls_min_version** | string | False | -  |  `1.0`, `1.1`, `1.2`  | The minimal supported TLS version. Possible values are `1.0`, `1.1` or `1.2`. Changing this forces a new resource to be created. | 
| **encryption_in_transit_enabled** | bool | False | -  |  -  | Whether encryption in transit is enabled for this HDInsight Kafka Cluster. Changing this forces a new resource to be created. | 
| **disk_encryption** | block | False | -  |  -  | One or more `disk_encryption` block. | 
| **tags** | map | False | -  |  -  | A map of Tags which should be assigned to this HDInsight Kafka Cluster. | 
| **metastores** | block | False | -  |  -  | A `metastores` block. | 
| **monitor** | block | False | -  |  -  | A `monitor` block. | 
| **extension** | block | False | -  |  -  | An `extension` block. | 
| **rest_proxy** | block | False | -  |  -  | A `rest_proxy` block. | 
| **security_profile** | block | False | -  |  -  | A `security_profile` block. Changing this forces a new resource to be created. | 

