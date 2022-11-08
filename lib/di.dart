import 'package:chemtime/domain_features/records/records_interactor.dart';
import 'package:chemtime/domain_features/records/records_repository.dart';
import 'package:chemtime/domain_features/reports/reports_interactor.dart';
import 'package:chemtime/domain_features/reports/reports_repository.dart';
import 'package:chemtime/domain_features/settings/settings_interactor.dart';
import 'package:chemtime/domain_features/settings/settings_repository.dart';

class DI {
  late final settingsRepository = SettingsRepository();
  late final settingsInteractor =
      SettingsInteractor(settingsRepository: settingsRepository)
        ..initInteractor();

  late final recordsRepository = RecordsRepository();
  late final recordsInteractor = RecordsInteractor(
      recordsRepository: recordsRepository,
      settingsInteractor: settingsInteractor)
    ..initInteractor();

  late final reportsRepository = ReportsRepository();
  late final reportsInteractor = ReportsInteractor(
      reportsRepository: reportsRepository,
      recordsInteractor: recordsInteractor)
    ..initInteractor();
}
