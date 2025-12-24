#configure the google provider
provider "google" {
    project = "mission-2026-482014"
    region = "us-central1"
    zone = "us-central1-a"
    credentials = var.credentials_json
}

#create vm instance
resource "google_compute_instance" "vm_instance" {
    name = "test-vm"
    machine_type = "e2-micro"
    zone = "us-central1-a"

    #Boot disk
    boot_disk {
        initialize_params {
            image = "debian-cloud/debian-11"
        }
    }

    #Network interface (required for VM)
    network_interface {
        network = "default"
        access_config {
            # Ephemeral IP
        }
    }
}