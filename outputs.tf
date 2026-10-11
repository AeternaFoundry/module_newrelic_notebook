output "notebooks_id" {
  description = "Map of id values across all notebooks, keyed the same as var.notebooks except keys with no id are omitted"
  value       = { for k, v in newrelic_notebook.notebooks : k => v.id if v.id != null && length(v.id) > 0 }
}
output "notebooks_blob_id" {
  description = "Map of blob_id values across all notebooks, keyed the same as var.notebooks except keys with no blob_id are omitted"
  value       = { for k, v in newrelic_notebook.notebooks : k => v.blob_id if v.blob_id != null && length(v.blob_id) > 0 }
}
output "notebooks_content" {
  description = "Map of content values across all notebooks, keyed the same as var.notebooks except keys with no content are omitted"
  value       = { for k, v in newrelic_notebook.notebooks : k => v.content if v.content != null && length(v.content) > 0 }
}
output "notebooks_guid" {
  description = "Map of guid values across all notebooks, keyed the same as var.notebooks except keys with no guid are omitted"
  value       = { for k, v in newrelic_notebook.notebooks : k => v.guid if v.guid != null && length(v.guid) > 0 }
}
output "notebooks_organization_id" {
  description = "Map of organization_id values across all notebooks, keyed the same as var.notebooks except keys with no organization_id are omitted"
  value       = { for k, v in newrelic_notebook.notebooks : k => v.organization_id if v.organization_id != null && length(v.organization_id) > 0 }
}
output "notebooks_title" {
  description = "Map of title values across all notebooks, keyed the same as var.notebooks except keys with no title are omitted"
  value       = { for k, v in newrelic_notebook.notebooks : k => v.title if v.title != null && length(v.title) > 0 }
}

