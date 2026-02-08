cask "mermaid-viewer" do
  version "1.2.2"
  sha256 "857fb4952ba901b34a2a685cc8b5d55e58537888671f5b4994771dd69d0e75d5"

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
