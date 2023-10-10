terraform{
    required_version = ">= 0.12"
}
resource "google_compute_instance" "terraform-sample" {
  name         = "jenkins-terraform-instance2"
  machine_type = "e2-medium"
  zone         = var.zone
  tags = [
              "http-server",
              "https-server",
              "jenkins-8080",
              "lb-health-check"
            ]
  boot_disk {
    initialize_params {
      image = var.image
      labels = {
        my_label = "jenkins"
      }
    }
  }

  network_interface {
    network = "default"
    access_config {
      // Ephemeral public IP
    }
  }
    metadata_startup_script = "${file("./startup_script.sh")}"
}
