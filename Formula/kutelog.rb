class Kutelog < Formula
  desc "A tool for logging with WebSocket support"
  homepage "https://github.com/appthrust/kutelog"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appthrust/kutelog/releases/download/v0.1.0/kutelog-darwin-arm64"
      sha256 "871cf61a1b387d65155beeee0a9b400441da0a252d5f4afeacfa451234c109a4"
    else
      url "https://github.com/appthrust/kutelog/releases/download/v0.1.0/kutelog-darwin-amd64"
      sha256 "c4118c21a9c0f38114e150b6b8f5e1a3bf473aa90035ccc45540be3545950269"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appthrust/kutelog/releases/download/v0.1.0/kutelog-linux-arm64"
      sha256 "413feecf9b41625b24f4c5611cc69ee85c5c7896d648d172f83c0be09e8f79f2"
    else
      url "https://github.com/appthrust/kutelog/releases/download/v0.1.0/kutelog-linux-amd64"
      sha256 "f0f4c7ebebc78375420ad4e5b50c381e9ab7e6387899fe81a512dc1ff473cc46"
    end
  end

  def install
    bin.install Dir["kutelog-*"].first => "kutelog"
  end

  test do
    system "#{bin}/kutelog", "--version"
  end
end
