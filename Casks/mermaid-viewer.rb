cask "mermaid-viewer" do
  version "1.2.1"
  sha256 "79eb36c0fb9d7a0452c790ff83564919612db400b662e156110418937cf66997"

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
