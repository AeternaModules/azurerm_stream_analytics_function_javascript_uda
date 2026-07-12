output "stream_analytics_function_javascript_udas_id" {
  description = "Map of id values across all stream_analytics_function_javascript_udas, keyed the same as var.stream_analytics_function_javascript_udas"
  value       = { for k, v in azurerm_stream_analytics_function_javascript_uda.stream_analytics_function_javascript_udas : k => v.id }
}
output "stream_analytics_function_javascript_udas_input" {
  description = "Map of input values across all stream_analytics_function_javascript_udas, keyed the same as var.stream_analytics_function_javascript_udas"
  value       = { for k, v in azurerm_stream_analytics_function_javascript_uda.stream_analytics_function_javascript_udas : k => v.input }
}
output "stream_analytics_function_javascript_udas_name" {
  description = "Map of name values across all stream_analytics_function_javascript_udas, keyed the same as var.stream_analytics_function_javascript_udas"
  value       = { for k, v in azurerm_stream_analytics_function_javascript_uda.stream_analytics_function_javascript_udas : k => v.name }
}
output "stream_analytics_function_javascript_udas_output" {
  description = "Map of output values across all stream_analytics_function_javascript_udas, keyed the same as var.stream_analytics_function_javascript_udas"
  value       = { for k, v in azurerm_stream_analytics_function_javascript_uda.stream_analytics_function_javascript_udas : k => v.output }
}
output "stream_analytics_function_javascript_udas_script" {
  description = "Map of script values across all stream_analytics_function_javascript_udas, keyed the same as var.stream_analytics_function_javascript_udas"
  value       = { for k, v in azurerm_stream_analytics_function_javascript_uda.stream_analytics_function_javascript_udas : k => v.script }
}
output "stream_analytics_function_javascript_udas_stream_analytics_job_id" {
  description = "Map of stream_analytics_job_id values across all stream_analytics_function_javascript_udas, keyed the same as var.stream_analytics_function_javascript_udas"
  value       = { for k, v in azurerm_stream_analytics_function_javascript_uda.stream_analytics_function_javascript_udas : k => v.stream_analytics_job_id }
}

