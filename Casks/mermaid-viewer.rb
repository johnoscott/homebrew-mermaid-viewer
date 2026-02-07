cask "mermaid-viewer" do
  version "1.0.0"
  sha256 "aef4770e70eed3272d86f84376efc04062f45021a7538becd27863cf966f43ce"

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
