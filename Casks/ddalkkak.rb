cask "ddalkkak" do
  version "1.3"
  sha256 "e149cfca75205fbd90642571a8a3706f9517a16caf6543460d6ca799cdf210c3"

  url "https://github.com/lhm7877/ddalkkak/releases/download/v#{version}/Ddalkkak-#{version}.zip"
  name "Ddalkkak"
  name "딸깍한영"
  desc "Switches between Korean and English input the moment the key is pressed"
  homepage "https://github.com/lhm7877/ddalkkak"

  depends_on macos: :ventura

  app "Ddalkkak.app"

  uninstall quit: "io.github.lhm7877.Ddalkkak"

  zap trash: "~/Library/Preferences/io.github.lhm7877.Ddalkkak.plist"

  caveats <<~EOS
    Apple 공증을 받지 않은 앱이라 처음 열 때 macOS 가 막을 수 있습니다.
    시스템 설정 > 개인정보 보호 및 보안 > 아래쪽의 "그래도 열기" 를 누르거나, 아래 명령을 실행하세요.
      xattr -dr com.apple.quarantine /Applications/Ddalkkak.app

    처음 실행하면 손쉬운 사용 권한을 묻습니다.
    시스템 설정 > 개인정보 보호 및 보안 > 손쉬운 사용에서 딸깍한영을 켜 주세요.
  EOS
end
