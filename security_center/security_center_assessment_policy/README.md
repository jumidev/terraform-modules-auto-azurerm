# azurerm_security_center_assessment_policy

Manages the Security Center Assessment Metadata for Azure Security Center.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **description** | string | True | -  |  -  | The description of the Security Center Assessment. | 
| **display_name** | string | True | -  |  -  | The user-friendly display name of the Security Center Assessment. | 
| **severity** | string | False | `Medium`  |  `Low`, `Medium`, `High`  | The severity level of the Security Center Assessment. Possible values are `Low`, `Medium` and `High`. Defaults to `Medium`. | 
| **categories** | string | False | -  |  `Unknown`, `Compute`, `Data`, `IdentityAndAccess`, `IoT`, `Networking`  | A list of the categories of resource that is at risk when the Security Center Assessment is unhealthy. Possible values are `Unknown`, `Compute`, `Data`, `IdentityAndAccess`, `IoT` and `Networking`. | 
| **implementation_effort** | string | False | -  |  `Low`, `Moderate`, `High`  | The implementation effort which is used to remediate the Security Center Assessment. Possible values are `Low`, `Moderate` and `High`. | 
| **remediation_description** | string | False | -  |  -  | The description which is used to mitigate the security issue. | 
| **threats** | string | False | -  |  `AccountBreach`, `DataExfiltration`, `DataSpillage`, `DenialOfService`, `ElevationOfPrivilege`, `MaliciousInsider`, `MissingCoverage`, `ThreatResistance`  | A list of the threat impacts for the Security Center Assessment. Possible values are `AccountBreach`, `DataExfiltration`, `DataSpillage`, `DenialOfService`, `ElevationOfPrivilege`, `MaliciousInsider`, `MissingCoverage` and `ThreatResistance`. | 
| **user_impact** | string | False | -  |  `Low`, `Moderate`, `High`  | The user impact of the Security Center Assessment. Possible values are `Low`, `Moderate` and `High`. | 

