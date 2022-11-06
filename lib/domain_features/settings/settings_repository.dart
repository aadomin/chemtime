import 'package:chemtime/domain_entities/settings/settings_entity.dart';
import 'package:chemtime/mock/mock_settings.dart';

class SettingsRepository {
  SettingsEntity loadSetting() {
    MockSettings mockSettings = MockSettings();
    return mockSettings.loadMockSettings(); //TODO del mock;
  }
}
