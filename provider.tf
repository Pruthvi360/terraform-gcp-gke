# Google Cloud Platform Provider
# https://registry.terraform.io/providers/hashicorp/google/latest/docs
provider "google" {
  region = "us-west2"
}

#https://registry.terraform.io/providers/hashicorp/random/latest/docs/resource/integer
resource "random_integer" "int" {
    min = 100
    max = 100000
}

terrafrom {
    required_providers {
        google = {
            source = "hasicorp/google"
            version = "~>3.66"
            credentials = file("terraform-gke-367614-4775a27c7a52.json")
        }
        random = {
            source = "hasicorp/random"
            version = "~>3.1"
        }
    }
}
