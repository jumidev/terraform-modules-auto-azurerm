# azurerm_sentinel_metadata

Manages a Sentinel Metadata.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "sentinel/sentinel_metadata"   
}

inputs = {
   content_id = "The ID of the content"   
   kind = "The kind of content the metadata is for"   
   name = "The name which should be used for this Sentinel Metadata..."   
   parent_id = "The ID of the parent resource ID of the content item, which the metadata belongs..."   
   # workspace_id → set in tfstate_inputs
}

tfstate_inputs = {
   workspace_id = "path/to/log_analytics_workspace_component:id"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **content_id** | string |  -  |  The ID of the content. Used to identify dependencies and content from solutions or community. | 
| **kind** | string |  `AnalyticsRule`, `AnalyticsRuleTemplate`, `AutomationRule`, `AzureFunction`, `DataConnector`, `DataType`, `HuntingQuery`, `InvestigationQuery`, `LogicAppsCustomConnector`, `Parser`, `Playbook`, `PlaybookTemplate`, `Solution`, `Watchlist`, `WatchlistTemplate`, `Workbook`, `WorkbookTemplate`  |  The kind of content the metadata is for. Possible values are `AnalyticsRule`, `AnalyticsRuleTemplate`, `AutomationRule`, `AzureFunction`, `DataConnector`, `DataType`, `HuntingQuery`, `InvestigationQuery`, `LogicAppsCustomConnector`, `Parser`, `Playbook`, `PlaybookTemplate`, `Solution`, `Watchlist`, `WatchlistTemplate`, `Workbook` and `WorkbookTemplate`. | 
| **name** | string |  -  |  The name which should be used for this Sentinel Metadata. Changing this forces a new Sentinel Metadata to be created. | 
| **parent_id** | string |  -  |  The ID of the parent resource ID of the content item, which the metadata belongs to. | 
| **workspace_id** | string |  -  |  The ID of the Log Analytics Workspace. Changing this forces a new Sentinel Metadata to be created. | 

## Optional Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **author** | [block](#author-block-structure) |  -  |  An `author` blocks. | 
| **category** | [block](#category-block-structure) |  -  |  A `category` block. | 
| **content_schema_version** | string |  -  |  Schema version of the content. Can be used to distinguish between flow based on the schema version. | 
| **custom_version** | string |  -  |  The Custom version of the content. | 
| **dependency** | [block](#dependency-block-structure) |  -  |  A JSON formatted `dependency` block. Dependency for the content item, what other content items it requires to work. | 
| **first_publish_date** | string |  -  |  The first publish date of solution content item. | 
| **icon_id** | string |  -  |  The ID of the icon, this id can be fetched from the solution template. | 
| **last_publish_date** | string |  -  |  The last publish date of solution content item. | 
| **preview_images** | string |  -  |  Specifies a list of preview image file names. These will be taken from solution artifacts. | 
| **preview_images_dark** | string |  -  |  Specifies a list of preview image file names used for dark theme. These will be taken from solution artifacts. | 
| **providers** | string |  -  |  Specifies a list of providers for the solution content item. | 
| **source** | [block](#source-block-structure) |  -  |  A `source` block. | 
| **support** | [block](#support-block-structure) |  -  |  A `support` block. | 
| **threat_analysis_tactics** | string |  `Reconnaissance`, `ResourceDevelopment`, `InitialAccess`, `Execution`, `Persistence`, `PrivilegeEscalation`, `DefenseEvasion`, `CredentialAccess`, `Discovery`, `LateralMovement`, `Collection`, `CommandAndControl`, `Exfiltration`, `Impact`, `ImpairProcessControl`, `InhibitResponseFunction`  |  Specifies a list of tactics the resource covers. Possible values are `Reconnaissance`, `ResourceDevelopment`, `InitialAccess`, `Execution`, `Persistence`, `PrivilegeEscalation`, `DefenseEvasion`, `CredentialAccess`, `Discovery`, `LateralMovement`, `Collection`, `CommandAndControl`, `Exfiltration`, `Impact`, `ImpairProcessControl` and `InhibitResponseFunction`. | 
| **threat_analysis_techniques** | string |  -  |  Specifies a list of techniques the resource covers. | 
| **version** | string |  -  |  Version of the content. | 

### `dependency` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `contentId` | string | No | - | ID of the content item that is depended on. |
| `kind` | string | No | - | Type of the content item that is depended on. |
| `version` | string | No | - | Version of the content item that is depended on. |
| `operator` | string | No | - | Operator used for list of dependencies in 'criteria' array. |
| `criteria` | string | No | - | Specifies a list of 'dependency' which must be fulfilled, according to the 'operator'. |

### `author` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | No | - | The name of the author, company or person. |
| `email` | string | No | - | The email address of the author contact. |
| `link` | string | No | - | The link for author/vendor page. |

### `source` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | No | - | The name of the content source, repo name, solution name, Log Analytics Workspace name, etc. |
| `kind` | string | Yes | - | The kind of the content source. Possible values are 'Community', 'LocalWorkspace', 'Solution' and 'SourceRepository'. |

### `category` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `domains` | string | No | - | Specifies a list of domains for the solution content item. |
| `verticals` | string | No | - | Specifies a list of industry verticals for the solution content item. |

### `support` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `tier` | string | Yes | - | The type of support for content item. Possible values are 'Microsoft', 'Partner' and 'Community'. |
| `email` | string | No | - | The email address of the support contact. |
| `link` | string | No | - | The link for support help. |
| `name` | string | No | - | The name of the support contact. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Sentinel Metadata. | 

Additionally, all variables are provided as outputs.
