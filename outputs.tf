output "stream_analytics_function_javascript_udas" {
  description = "All stream_analytics_function_javascript_uda resources"
  value       = azurerm_stream_analytics_function_javascript_uda.stream_analytics_function_javascript_udas
}
output "stream_analytics_function_javascript_udas_input" {
  description = "List of input values across all stream_analytics_function_javascript_udas"
  value       = [for k, v in azurerm_stream_analytics_function_javascript_uda.stream_analytics_function_javascript_udas : v.input]
}
output "stream_analytics_function_javascript_udas_name" {
  description = "List of name values across all stream_analytics_function_javascript_udas"
  value       = [for k, v in azurerm_stream_analytics_function_javascript_uda.stream_analytics_function_javascript_udas : v.name]
}
output "stream_analytics_function_javascript_udas_output" {
  description = "List of output values across all stream_analytics_function_javascript_udas"
  value       = [for k, v in azurerm_stream_analytics_function_javascript_uda.stream_analytics_function_javascript_udas : v.output]
}
output "stream_analytics_function_javascript_udas_script" {
  description = "List of script values across all stream_analytics_function_javascript_udas"
  value       = [for k, v in azurerm_stream_analytics_function_javascript_uda.stream_analytics_function_javascript_udas : v.script]
}
output "stream_analytics_function_javascript_udas_stream_analytics_job_id" {
  description = "List of stream_analytics_job_id values across all stream_analytics_function_javascript_udas"
  value       = [for k, v in azurerm_stream_analytics_function_javascript_uda.stream_analytics_function_javascript_udas : v.stream_analytics_job_id]
}

