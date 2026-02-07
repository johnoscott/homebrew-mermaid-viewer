cask "mermaid-viewer" do
  version "1.1.1"
  sha256 "4ed299ed724f60b300a89754b9d9da7745a4a12b606cfaed52279c76e88730b1"

  url "https://github.com/johnoscott/MermaidViewer/releases/download/v#{version}/MermaidViewer-#{version}.dmg"
  name "MermaidViewer"
  desc "Quick Look extension for previewing Mermaid diagram files in Finder"
  homepage "https://github.com/johnoscott/MermaidViewer"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "MermaidViewer.app"

  zap trash: [
    "~/Library/Group Containers/group.com.roundrect.mermaidviewer",
    "~/Library/Preferences/com.roundrect.mermaidviewer.plist",
  ]
end
