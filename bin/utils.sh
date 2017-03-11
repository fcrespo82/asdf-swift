ensure_swift_build_installed() {
  if [ ! -f "$(swift_build_path)" ]; then
    download_swift_build
  fi
}

download_swift_build() {
  echo "Downloading swift-build..."
  local swiftenv_url="https://github.com/kylef/swiftenv.git"
  git clone $swiftenv_url "$(swiftenv_path)"
}

swift_build_path() {
  echo "$(swiftenv_path)/plugins/swift-build/bin/swift-build"
}

swiftenv_path() {
  echo "$(dirname $(dirname $0))/swiftenv"
}