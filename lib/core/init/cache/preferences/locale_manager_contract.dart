import '../../../constants/enums/locale_keys_enum.dart';

abstract class LocaleManagerContract {
  Future<void> setStringValue(PreferencesKeys key, String value);
  Future<void> setBoolValue(PreferencesKeys key, bool value);
  Future<void> setIntValue(PreferencesKeys key, int value);

  String getStringValue(PreferencesKeys key);
  bool getBoolValue(PreferencesKeys key);
  int getIntValue(PreferencesKeys key);
  Future<void> clearAll();
}
