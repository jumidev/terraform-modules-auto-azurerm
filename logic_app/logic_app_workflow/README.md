# azurerm_logic_app_workflow

Manages a Logic App Workflow.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Logic App Workflow. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group in which the Logic App Workflow should be created. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the Logic App Workflow exists. Changing this forces a new resource to be created. | 
| **access_control** | block | False | -  |  -  | A `access_control` block. | 
| **identity** | block | False | -  |  -  | An `identity` block. | 
| **integration_service_environment_id** | string | False | -  |  -  | The ID of the Integration Service Environment to which this Logic App Workflow belongs. Changing this forces a new Logic App Workflow to be created. | 
| **logic_app_integration_account_id** | string | False | -  |  -  | The ID of the integration account linked by this Logic App Workflow. | 
| **enabled** | bool | False | `True`  |  -  | Is the Logic App Workflow enabled? Defaults to `true`. | 
| **workflow_parameters** | string | False | -  |  -  | Specifies a map of Key-Value pairs of the Parameter Definitions to use for this Logic App Workflow. The key is the parameter name, and the value is a JSON encoded string of the parameter definition (see: <https://docs.microsoft.com/azure/logic-apps/logic-apps-workflow-definition-language#parameters>). | 
| **workflow_schema** | string | False | `https://schema.management.azure.com/providers/Microsoft.Logic/schemas/2016-06-01/workflowdefinition.json#`  |  -  | Specifies the Schema to use for this Logic App Workflow. Defaults to `https://schema.management.azure.com/providers/Microsoft.Logic/schemas/2016-06-01/workflowdefinition.json#`. Changing this forces a new resource to be created. | 
| **workflow_version** | string | False | `1.0.0.0`  |  -  | Specifies the version of the Schema used for this Logic App Workflow. Defaults to `1.0.0.0`. Changing this forces a new resource to be created. | 
| **parameters** | string | False | -  |  -  | A map of Key-Value pairs. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

