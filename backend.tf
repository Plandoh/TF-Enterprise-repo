terraform {
  cloud {
    organization = "Passy"

    workspaces {
      name = "Test"
    }
  }
}