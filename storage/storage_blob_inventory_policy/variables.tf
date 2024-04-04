# REQUIRED VARIABLES

variable "storage_account_id" {
  description = "(REQUIRED) The ID of the storage account to apply this Blob Inventory Policy to. Changing this forces a new Storage Blob Inventory Policy to be created."
  type        = string

}
variable "ruless" {
  description = "(REQUIRED) One or more 'rules' blocks."
  type        = map(map(any))
}
#
# rules block structure          :
#   name (string)                  : (REQUIRED) The name which should be used for this Blob Inventory Policy Rule.
#   storage_container_name (string): (REQUIRED) The storage container name to store the blob inventory files for this rule.
#   format (string)                : (REQUIRED) The format of the inventory files. Possible values are 'Csv' and 'Parquet'.
#   schedule (string)              : (REQUIRED) The inventory schedule applied by this rule. Possible values are 'Daily' and 'Weekly'.
#   scope (string)                 : (REQUIRED) The scope of the inventory for this rule. Possible values are 'Blob' and 'Container'.
#   schema_fields (list)           : (REQUIRED) A list of fields to be included in the inventory. See the [Azure API reference](https://docs.microsoft.com/rest/api/storagerp/blob-inventory-policies/create-or-update#blobinventorypolicydefinition) for all the supported fields.
#   filter (block)                 : A 'filter' block. Can only be set when the 'scope' is 'Blob'.
#
# filter block structure      :
#   blob_types (string)         : (REQUIRED) A set of blob types. Possible values are 'blockBlob', 'appendBlob', and 'pageBlob'. The storage account with 'is_hns_enabled' is 'true' doesn't support 'pageBlob'. ~> **NOTE:** The 'rules.*.schema_fields' for this rule has to include 'BlobType' so that you can specify the 'blob_types'.
#   include_blob_versions (bool): Includes blob versions in blob inventory or not? Defaults to 'false'. ~> **NOTE:** The 'rules.*.schema_fields' for this rule has to include 'IsCurrentVersion' and 'VersionId' so that you can specify the 'include_blob_versions'.
#   include_deleted (bool)      : Includes deleted blobs in blob inventory or not? Defaults to 'false'. ~> **NOTE:** If 'rules.*.scope' is 'Container', the 'rules.*.schema_fields' for this rule must include 'Deleted', 'Version', 'DeletedTime', and 'RemainingRetentionDays' so that you can specify the 'include_deleted'. If 'rules.*.scope' is 'Blob', the 'rules.*.schema_fields' must include 'Deleted' and 'RemainingRetentionDays' so that you can specify the 'include_deleted'. If 'rules.*.scope' is 'Blob' and the storage account specified by 'storage_account_id' has hierarchical namespaces enabled ('is_hns_enabled' is 'true' on the storage account), the 'rules.*.schema_fields' for this rule must include 'Deleted', 'Version', 'DeletedTime', and 'RemainingRetentionDays' so that you can specify the 'include_deleted'.
#   include_snapshots (bool)    : Includes blob snapshots in blob inventory or not? Defaults to 'false'. ~> **NOTE:** The 'rules.*.schema_fields' for this rule has to include 'Snapshot' so that you can specify the 'include_snapshots'.
#   prefix_match (string)       : A set of strings for blob prefixes to be matched. Maximum of 10 blob prefixes.
#   exclude_prefixes (string)   : A set of strings for blob prefixes to be excluded. Maximum of 10 blob prefixes.


