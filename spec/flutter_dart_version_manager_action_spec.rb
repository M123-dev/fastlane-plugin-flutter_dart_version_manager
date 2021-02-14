describe Fastlane::Actions::FlutterDartVersionManagerAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The flutter_dart_version_manager plugin is working!")

      Fastlane::Actions::FlutterDartVersionManagerAction.run(nil)
    end
  end
end
