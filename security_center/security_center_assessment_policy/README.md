# azurerm_security_center_assessment_policy

Manages the Security Center Assessment Metadata for Azure Security Center.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "security_center/security_center_assessment_policy" 
}

inputs = {
   description = "description of security_center_assessment_policy" 
   display_name = "display_name of security_center_assessment_policy" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.description** | string | True | -  |  -  |  The description of the Security Center Assessment. | 
| **var.display_name** | string | True | -  |  -  |  The user-friendly display name of the Security Center Assessment. | 
| **var.severity** | string | False | `Medium`  |  `Low`, `Medium`, `High`  |  The severity level of the Security Center Assessment. Possible values are `Low`, `Medium` and `High`. Defaults to `Medium`. | 
| **var.categories** | string | False | -  |  `Unknown`, `Compute`, `Data`, `IdentityAndAccess`, `IoT`, `Networking`  |  A list of the categories of resource that is at risk when the Security Center Assessment is unhealthy. Possible values are `Unknown`, `Compute`, `Data`, `IdentityAndAccess`, `IoT` and `Networking`. | 
| **var.implementation_effort** | string | False | -  |  `Low`, `Moderate`, `High`  |  The implementation effort which is used to remediate the Security Center Assessment. Possible values are `Low`, `Moderate` and `High`. | 
| **var.remediation_description** | string | False | -  |  -  |  The description which is used to mitigate the security issue. | 
| **var.threats** | string | False | -  |  `AccountBreach`, `DataExfiltration`, `DataSpillage`, `DenialOfService`, `ElevationOfPrivilege`, `MaliciousInsider`, `MissingCoverage`, `ThreatResistance`  |  A list of the threat impacts for the Security Center Assessment. Possible values are `AccountBreach`, `DataExfiltration`, `DataSpillage`, `DenialOfService`, `ElevationOfPrivilege`, `MaliciousInsider`, `MissingCoverage` and `ThreatResistance`. | 
| **var.user_impact** | string | False | -  |  `Low`, `Moderate`, `High`  |  The user impact of the Security Center Assessment. Possible values are `Low`, `Moderate` and `High`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Security Center Assessment Policy. | 
| **name** | string | No  | The GUID as the name of the Security Center Assessment Policy. | 

Additionally, all variables are provided as outputs.
