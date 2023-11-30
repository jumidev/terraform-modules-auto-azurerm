# azurerm_data_factory_pipeline

Manages a Pipeline inside a Azure Data Factory.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_factory/data_factory_pipeline" 
}

inputs = {
   name = "name of data_factory_pipeline" 
   data_factory_id = "data_factory_id of data_factory_pipeline" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.name** | string  Specifies the name of the Data Factory Pipeline. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **var.data_factory_id** | string  The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.description** | string  The description for the Data Factory Pipeline. | 
| **var.annotations** | string  List of tags that can be used for describing the Data Factory Pipeline. | 
| **var.concurrency** | int  The max number of concurrent runs for the Data Factory Pipeline. Must be between `1` and `50`. | 
| **var.folder** | string  The folder that this Pipeline is in. If not specified, the Pipeline will appear at the root level. | 
| **var.moniter_metrics_after_duration** | string  The TimeSpan value after which an Azure Monitoring Metric is fired. | 
| **var.parameters** | string  A map of parameters to associate with the Data Factory Pipeline. | 
| **var.variables** | string  A map of variables to associate with the Data Factory Pipeline. | 
| **var.activities_json** | string  A JSON object that contains the activities that will be associated with the Data Factory Pipeline. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory Pipeline. | 

Additionally, all variables are provided as outputs.
