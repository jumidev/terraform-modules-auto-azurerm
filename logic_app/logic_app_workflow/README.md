# azurerm_logic_app_workflow

Manages a Logic App Workflow.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "logic_app/logic_app_workflow" 
}

inputs = {
   name = "name of logic_app_workflow" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name of the Logic App Workflow. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the Resource Group in which the Logic App Workflow should be created. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  Specifies the supported Azure location where the Logic App Workflow exists. Changing this forces a new resource to be created. | 
| **var.access_control** | block | False | -  |  A `access_control` block. | 
| **var.identity** | block | False | -  |  An `identity` block. | 
| **var.integration_service_environment_id** | string | False | -  |  The ID of the Integration Service Environment to which this Logic App Workflow belongs. Changing this forces a new Logic App Workflow to be created. | 
| **var.logic_app_integration_account_id** | string | False | -  |  The ID of the integration account linked by this Logic App Workflow. | 
| **var.enabled** | bool | False | `True`  |  Is the Logic App Workflow enabled? Defaults to `true`. | 
| **var.workflow_parameters** | string | False | -  |  Specifies a map of Key-Value pairs of the Parameter Definitions to use for this Logic App Workflow. The key is the parameter name, and the value is a JSON encoded string of the parameter definition (see: <https://docs.microsoft.com/azure/logic-apps/logic-apps-workflow-definition-language#parameters>). | 
| **var.workflow_schema** | string | False | `https://schema.management.azure.com/providers/Microsoft.Logic/schemas/2016-06-01/workflowdefinition.json#`  |  Specifies the Schema to use for this Logic App Workflow. Defaults to `https://schema.management.azure.com/providers/Microsoft.Logic/schemas/2016-06-01/workflowdefinition.json#`. Changing this forces a new resource to be created. | 
| **var.workflow_version** | string | False | `1.0.0.0`  |  Specifies the version of the Schema used for this Logic App Workflow. Defaults to `1.0.0.0`. Changing this forces a new resource to be created. | 
| **var.parameters** | string | False | -  |  A map of Key-Value pairs. | 
| **var.tags** | map | False | -  |  A mapping of tags to assign to the resource. | 

### `access_control` block structure

> `action` (block): A 'action' block.\
> `content` (block): A 'content' block.\
> `trigger` (block): A 'trigger' block.\
> `workflow_management` (block): A 'workflow_management' block.\

### `identity` block structure

> `type` (string): (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Logic App Workflow. Possible values are 'SystemAssigned', 'UserAssigned'.\
> `identity_ids` (string): Specifies a list of User Assigned Managed Identity IDs to be assigned to this Logic App Workflow.\



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Logic App Workflow ID. | 
| **access_endpoint** | string | No  | The Access Endpoint for the Logic App Workflow. | 
| **connector_endpoint_ip_addresses** | string | No  | The list of access endpoint IP addresses of connector. | 
| **connector_outbound_ip_addresses** | string | No  | The list of outgoing IP addresses of connector. | 
| **identity** | block | No  | An `identity` block. | 
| **workflow_endpoint_ip_addresses** | string | No  | The list of access endpoint IP addresses of workflow. | 
| **workflow_outbound_ip_addresses** | string | No  | The list of outgoing IP addresses of workflow. | 
| **principal_id** | string | No  | The Principal ID for the Service Principal associated with the Managed Service Identity of this Logic App Workflow. | 
| **tenant_id** | string | No  | The Tenant ID for the Service Principal associated with the Managed Service Identity of this Logic App Workflow. | 

Additionally, all variables are provided as outputs.
