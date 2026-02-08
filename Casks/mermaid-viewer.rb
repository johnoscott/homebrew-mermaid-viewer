cask "mermaid-viewer" do
  version "1.2.1"
  sha256 "85d29d77fd6afceba11fc8d875e06429fb1f16720456ef5a43c414647602d9b6"

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
