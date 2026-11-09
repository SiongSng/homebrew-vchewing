cask "vchewing" do
  version "5.0.0"
  sha256 "d41d2dc2bb407dedc6e75f2d6ced4682eca974bdb4a532b3b6ed2691381ba597"

  url "https://github.com/vChewing/vChewing-macOS/releases/download/#{version}/vChewing-macOS-#{version}-signed.pkg"
  name "vChewing (唯音輸入法)"
  desc "Sandboxed Phonabet-based Mandarin Chinese input method"
  homepage "https://vchewing.github.io/"

  depends_on macos: :monterey

  pkg "vChewing-macOS-#{version}-signed.pkg"

  uninstall delete: [
    "~/Library/Input Methods/vChewing.app",
    "~/Library/Keyboard Layouts/vChewing Dachen.keylayout",
    "~/Library/Keyboard Layouts/vChewing ETen.keylayout",
    "~/Library/Keyboard Layouts/vChewing FakeSeigyou.keylayout",
    "~/Library/Keyboard Layouts/vChewing IBM.keylayout",
    "~/Library/Keyboard Layouts/vChewing MiTAC.keylayout",
    "~/Library/Keyboard Layouts/vChewingKeyLayout.bundle",
    "~/Library/Receipts/org.atelierInmu.vChewing.bom",
    "~/Library/Receipts/org.atelierInmu.vChewing.plist",
  ]

  caveats <<~EOS
    請至「系統設定 → 鍵盤 → 輸入來源」啟用 vChewing。
    請務必考慮贊助敝專案的開發。詳情：https://vchewing.github.io/

    Enable vChewing in System Settings → Keyboard → Input Sources.
    Donations are warmly welcomed. More info at https://vchewing.github.io/
  EOS
end
