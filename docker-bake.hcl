// Configuration for docker/bake-action: https://github.com/docker/bake-action
// https://github.com/marketplace/actions/docker-metadata-action#bake-definition
// docker-bake.hcl

target "docker-metadata-action" {}

// Create Base Build Target
target "build" {
  inherits = ["docker-metadata-action"]
  context = "./"
  // Use multi-stage Containerfile
  dockerfile = "Containerfile"
}

// Create Platforms Target
target "platforms" {
  // Set target platforms for multi-platform builds https://docs.docker.com/build/bake/reference/#targetplatforms
  platforms = [
    "linux/amd64",
    "linux/arm64"
  ]
}

// Create Multi Platform Build Target
target "multi-platform-build" {
  inherits = ["build", "platforms"]
}

// Create GitHub Action Cache Target
target "gha-cache" {
  cache-from = [
    "type=gha"
  ]
  cache-to = [
    "type=gha,mode=max"
  ]
}

// Create GitHub Action Build Target
target "gha-build" {
  inherits = ["multi-platform-build", "gha-cache"]
}
