# azurerm_sentinel_metadata

Manages a Sentinel Metadata.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **content_id** | string | True | -  |  -  | The ID of the content. Used to identify dependencies and content from solutions or community. | 
| **kind** | string | True | -  |  `AnalyticsRule`, `AnalyticsRuleTemplate`, `AutomationRule`, `AzureFunction`, `DataConnector`, `DataType`, `HuntingQuery`, `InvestigationQuery`, `LogicAppsCustomConnector`, `Parser`, `Playbook`, `PlaybookTemplate`, `Solution`, `Watchlist`, `WatchlistTemplate`, `Workbook`, `WorkbookTemplate`  | The kind of content the metadata is for. Possible values are `AnalyticsRule`, `AnalyticsRuleTemplate`, `AutomationRule`, `AzureFunction`, `DataConnector`, `DataType`, `HuntingQuery`, `InvestigationQuery`, `LogicAppsCustomConnector`, `Parser`, `Playbook`, `PlaybookTemplate`, `Solution`, `Watchlist`, `WatchlistTemplate`, `Workbook` and `WorkbookTemplate`. | 
| **name** | string | True | -  |  -  | The name which should be used for this Sentinel Metadata. Changing this forces a new Sentinel Metadata to be created. | 
| **parent_id** | string | True | -  |  -  | The ID of the parent resource ID of the content item, which the metadata belongs to. | 
| **workspace_id** | string | True | -  |  -  | The ID of the Log Analytics Workspace. Changing this forces a new Sentinel Metadata to be created. | 
| **author** | block | False | -  |  -  | An `author` blocks. | 
| **category** | block | False | -  |  -  | A `category` block. | 
| **content_schema_version** | string | False | -  |  -  | Schema version of the content. Can be used to distinguish between flow based on the schema version. | 
| **custom_version** | string | False | -  |  -  | The Custom version of the content. | 
| **dependency** | block | False | -  |  -  | A JSON formatted `dependency` block. Dependency for the content item, what other content items it requires to work. | 
| **first_publish_date** | datetime | False | -  |  -  | The first publish date of solution content item. | 
| **icon_id** | string | False | -  |  -  | The ID of the icon, this id can be fetched from the solution template. | 
| **last_publish_date** | datetime | False | -  |  -  | The last publish date of solution content item. | 
| **preview_images** | string | False | -  |  -  | Specifies a list of preview image file names. These will be taken from solution artifacts. | 
| **preview_images_dark** | string | False | -  |  -  | Specifies a list of preview image file names used for dark theme. These will be taken from solution artifacts. | 
| **providers** | string | False | -  |  -  | Specifies a list of providers for the solution content item. | 
| **source** | block | False | -  |  -  | A `source` block. | 
| **support** | block | False | -  |  -  | A `support` block. | 
| **threat_analysis_tactics** | string | False | -  |  `Reconnaissance`, `ResourceDevelopment`, `InitialAccess`, `Execution`, `Persistence`, `PrivilegeEscalation`, `DefenseEvasion`, `CredentialAccess`, `Discovery`, `LateralMovement`, `Collection`, `CommandAndControl`, `Exfiltration`, `Impact`, `ImpairProcessControl`, `InhibitResponseFunction`  | Specifies a list of tactics the resource covers. Possible values are `Reconnaissance`, `ResourceDevelopment`, `InitialAccess`, `Execution`, `Persistence`, `PrivilegeEscalation`, `DefenseEvasion`, `CredentialAccess`, `Discovery`, `LateralMovement`, `Collection`, `CommandAndControl`, `Exfiltration`, `Impact`, `ImpairProcessControl` and `InhibitResponseFunction`. | 
| **threat_analysis_techniques** | string | False | -  |  -  | Specifies a list of techniques the resource covers. | 
| **version** | string | False | -  |  -  | Version of the content. | 

