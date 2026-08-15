output "stream_analytics_function_javascript_uda_id" {
  description = "Map of id values across all stream_analytics_function_javascript_uda, keyed the same as var.stream_analytics_function_javascript_uda"
  value       = { for k, v in azurerm_stream_analytics_function_javascript_uda.stream_analytics_function_javascript_uda : k => v.id if v.id != null && length(v.id) > 0 }
}
output "stream_analytics_function_javascript_uda_input" {
  description = "Map of input values across all stream_analytics_function_javascript_uda, keyed the same as var.stream_analytics_function_javascript_uda"
  value       = { for k, v in azurerm_stream_analytics_function_javascript_uda.stream_analytics_function_javascript_uda : k => v.input if v.input != null && length(v.input) > 0 }
}
output "stream_analytics_function_javascript_uda_name" {
  description = "Map of name values across all stream_analytics_function_javascript_uda, keyed the same as var.stream_analytics_function_javascript_uda"
  value       = { for k, v in azurerm_stream_analytics_function_javascript_uda.stream_analytics_function_javascript_uda : k => v.name if v.name != null && length(v.name) > 0 }
}
output "stream_analytics_function_javascript_uda_output" {
  description = "Map of output values across all stream_analytics_function_javascript_uda, keyed the same as var.stream_analytics_function_javascript_uda"
  value       = { for k, v in azurerm_stream_analytics_function_javascript_uda.stream_analytics_function_javascript_uda : k => one(v.output) if v.output != null && length(v.output) > 0 }
}
output "stream_analytics_function_javascript_uda_script" {
  description = "Map of script values across all stream_analytics_function_javascript_uda, keyed the same as var.stream_analytics_function_javascript_uda"
  value       = { for k, v in azurerm_stream_analytics_function_javascript_uda.stream_analytics_function_javascript_uda : k => v.script if v.script != null && length(v.script) > 0 }
}
output "stream_analytics_function_javascript_uda_stream_analytics_job_id" {
  description = "Map of stream_analytics_job_id values across all stream_analytics_function_javascript_uda, keyed the same as var.stream_analytics_function_javascript_uda"
  value       = { for k, v in azurerm_stream_analytics_function_javascript_uda.stream_analytics_function_javascript_uda : k => v.stream_analytics_job_id if v.stream_analytics_job_id != null && length(v.stream_analytics_job_id) > 0 }
}

