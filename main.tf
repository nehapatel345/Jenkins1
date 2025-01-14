resource "google_compute_instance" "default" {
  name         = "nehatestvm11"
  machine_type = "e2-medium"
  zone         = "us-central1-a"
 project ="magnetic-quasar-378605"
  
 boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }

 network_interface {
    network = "default"
  }
}
