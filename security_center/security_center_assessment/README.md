# azurerm_security_center_assessment

Manages the Security Center Assessment for Azure Security Center.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "security_center/security_center_assessment" 
}

inputs = {
   assessment_policy_id = "assessment_policy_id of security_center_assessment" 
   target_resource_id = "target_resource_id of security_center_assessment" 
   status = {
      example_status = {
         code = "..."   
      }
  
   }
 
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
| **var.assessment_policy_id** | string |  The ID of the security Assessment policy to apply to this resource. Changing this forces a new security Assessment to be created. | 
| **var.target_resource_id** | string |  The ID of the target resource. Changing this forces a new security Assessment to be created. | 
| **var.status** | block |  A `status` block. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.additional_data** | string |  A map of additional data to associate with the assessment. | 

### `status` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `code` | string | Yes | - | Specifies the programmatic code of the assessment status. Possible values are 'Healthy', 'Unhealthy' and 'NotApplicable'. |
| `cause` | string | No | - | Specifies the cause of the assessment status. |
| `description` | string | No | - | Specifies the human readable description of the assessment status. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Security Center Assessment. | 

Additionally, all variables are provided as outputs.
