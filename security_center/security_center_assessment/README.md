# azurerm_security_center_assessment

Manages the Security Center Assessment for Azure Security Center.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.assessment_policy_id** | string | True | The ID of the security Assessment policy to apply to this resource. Changing this forces a new security Assessment to be created. | 
| **var.target_resource_id** | string | True | The ID of the target resource. Changing this forces a new security Assessment to be created. | 
| **var.status** | block | True | A `status` block. | 
| **var.additional_data** | string | False | A map of additional data to associate with the assessment. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **assessment_policy_id** | string  | - | 
| **target_resource_id** | string  | - | 
| **status** | block  | - | 
| **additional_data** | string  | - | 
| **id** | string  | The ID of the Security Center Assessment. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "security_center/security_center_assessment" 
}

inputs = {
   assessment_policy_id = "assessment_policy_id of security_center_assessment" 
   target_resource_id = "target_resource_id of security_center_assessment" 
   status = "status of security_center_assessment" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```