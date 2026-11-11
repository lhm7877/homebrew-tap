cask "ddalkkak" do
  version "1.3"
  sha256 "e149cfca75205fbd90642571a8a3706f9517a16caf6543460d6ca799cdf210c3"

  url "https://github.com/lhm7877/ddalkkak/releases/download/v#{version}/Ddalkkak-#{version}.zip"
  name "Ddalkkak"
  name "딸깍한영"
  desc "Switches between Korean and English input the moment the key is pressed"
  homepage "https://github.com/lhm7877/ddalkkak"

  depends_on macos: ">= :ventura"

  app "Ddalkkak.app"

  # Apple 공증을 받지 않은 앱이라, 설치 뒤 바로 열 수 있게 격리 표시를 지운다
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Ddalkkak.app"]
  end

  uninstall quit: "io.github.lhm7877.Ddalkkak"

  zap trash: "~/Library/Preferences/io.github.lhm7877.Ddalkkak.plist"

  caveats <<~EOS
    처음 실행하면 손쉬운 사용 권한을 묻습니다.
    시스템 설정 > 개인정보 보호 및 보안 > 손쉬운 사용에서 딸깍한영을 켜 주세요.
  EOS
end
