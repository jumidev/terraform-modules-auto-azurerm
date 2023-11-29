# azurerm_data_factory_pipeline

Manages a Pipeline inside a Azure Data Factory.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the Data Factory Pipeline. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **var.data_factory_id** | string | True | The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 
| **var.description** | string | False | The description for the Data Factory Pipeline. | 
| **var.annotations** | string | False | List of tags that can be used for describing the Data Factory Pipeline. | 
| **var.concurrency** | int | False | The max number of concurrent runs for the Data Factory Pipeline. Must be between `1` and `50`. | 
| **var.folder** | string | False | The folder that this Pipeline is in. If not specified, the Pipeline will appear at the root level. | 
| **var.moniter_metrics_after_duration** | string | False | The TimeSpan value after which an Azure Monitoring Metric is fired. | 
| **var.parameters** | string | False | A map of parameters to associate with the Data Factory Pipeline. | 
| **var.variables** | string | False | A map of variables to associate with the Data Factory Pipeline. | 
| **var.activities_json** | string | False | A JSON object that contains the activities that will be associated with the Data Factory Pipeline. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **data_factory_id** | string  | - | 
| **description** | string  | - | 
| **annotations** | string  | - | 
| **concurrency** | int  | - | 
| **folder** | string  | - | 
| **moniter_metrics_after_duration** | string  | - | 
| **parameters** | string  | - | 
| **variables** | string  | - | 
| **activities_json** | string  | - | 
| **id** | string  | The ID of the Data Factory Pipeline. | 