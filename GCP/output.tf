/* output "internal-ip" {
  value = google_compute_instance.terraform-sample.network_interface[0].network_ip
}
output "external-ip" {
  value = google_compute_instance.terraform-sample.network_interface[0].access_config[0].nat_ip
}
output "instance-id" {
  value = google_compute_instance.terraform-sample.instance_id
}
output "instance-name" {
    value = google_compute_instance.terraform-sample.name
  
} */
