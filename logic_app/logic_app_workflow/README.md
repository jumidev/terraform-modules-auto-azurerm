# azurerm_logic_app_workflow

Manages a Logic App Workflow.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "logic_app/logic_app_workflow"   
}

inputs = {
   name = "Specifies the name of the Logic App Workflow"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
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
| **name** | string |  Specifies the name of the Logic App Workflow. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the Resource Group in which the Logic App Workflow should be created. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the supported Azure location where the Logic App Workflow exists. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **access_control** | [block](#access_control-block-structure) |  -  |  A `access_control` block. | 
| **identity** | [block](#identity-block-structure) |  -  |  An `identity` block. | 
| **integration_service_environment_id** | string |  -  |  The ID of the Integration Service Environment to which this Logic App Workflow belongs. Changing this forces a new Logic App Workflow to be created. | 
| **logic_app_integration_account_id** | string |  -  |  The ID of the integration account linked by this Logic App Workflow. | 
| **enabled** | bool |  `True`  |  Is the Logic App Workflow enabled? Defaults to `true`. | 
| **workflow_parameters** | string |  -  |  Specifies a map of Key-Value pairs of the Parameter Definitions to use for this Logic App Workflow. The key is the parameter name, and the value is a JSON encoded string of the parameter definition (see: <https://docs.microsoft.com/azure/logic-apps/logic-apps-workflow-definition-language#parameters>). | 
| **workflow_schema** | string |  `https://schema.management.azure.com/providers/Microsoft.Logic/schemas/2016-06-01/workflowdefinition.json#`  |  Specifies the Schema to use for this Logic App Workflow. Defaults to `https://schema.management.azure.com/providers/Microsoft.Logic/schemas/2016-06-01/workflowdefinition.json#`. Changing this forces a new resource to be created. | 
| **workflow_version** | string |  `1.0.0.0`  |  Specifies the version of the Schema used for this Logic App Workflow. Defaults to `1.0.0.0`. Changing this forces a new resource to be created. | 
| **parameters** | string |  -  |  A map of Key-Value pairs. | 
| **tags** | map |  -  |  A mapping of tags to assign to the resource. | 

### `trigger` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `allowed_caller_ip_address_range` | list | Yes | - | A list of the allowed caller IP address ranges. |
| `open_authentication_policy` | [block](#open_authentication_policy-block-structure) | No | - | A 'open_authentication_policy' block. |

### `workflow_management` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `allowed_caller_ip_address_range` | list | Yes | - | A list of the allowed caller IP address ranges. |

### `access_control` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `action` | [block](#action-block-structure) | No | - | A 'action' block. |
| `content` | [block](#content-block-structure) | No | - | A 'content' block. |
| `trigger` | [block](#trigger-block-structure) | No | - | A 'trigger' block. |
| `workflow_management` | [block](#workflow_management-block-structure) | No | - | A 'workflow_management' block. |

### `open_authentication_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The OAuth policy name for the Logic App Workflow. |
| `claim` | [block](#claim-block-structure) | Yes | - | A 'claim' block. |

### `action` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `allowed_caller_ip_address_range` | list | Yes | - | A list of the allowed caller IP address ranges. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Logic App Workflow. Possible values are 'SystemAssigned', 'UserAssigned'. |
| `identity_ids` | string | No | - | Specifies a list of User Assigned Managed Identity IDs to be assigned to this Logic App Workflow. |

### `content` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `allowed_caller_ip_address_range` | list | Yes | - | A list of the allowed caller IP address ranges. |

### `claim` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the OAuth policy claim for the Logic App Workflow. |
| `value` | string | Yes | - | The value of the OAuth policy claim for the Logic App Workflow. |



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
