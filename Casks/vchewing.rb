cask "vchewing" do
  version "4.9.0"
  sha256 "77e8e5edf95c906cba0236f959264959313bb503b4b18f0dcbc209acccc28e08"

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
