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
  // late final reportsInteractor = ReportsInteractor(
  //     reportsRepository: reportsRepository,
  //     recordsInteractor: recordsInteractor)
  //   ..initInteractor();

  // Settings
  // Records
  // Reports

  // late final platformDetector = PlatformDetector();

  // late final _settingsRepository = SettingsRepository(
  //   settingsDataSource: SettingsDataSource(),
  // );
  // late final settingsInteractor = SettingsInteractor(
  //   settingsRepository: _settingsRepository,
  // )..init();

  // late final _geoRepository = GeoRepository();
  // late final geoInteractor = GeoInteractor(geoRepository: _geoRepository);

  // late final filterInteractor = FilterInteractor(
  //   settingsInteractor: settingsInteractor,
  // )..init();

  // late final _dioServices = DioServices();
  // late final _placesRepository = PlaceRepository(dio: _dioServices.dio);
  // late final placesInteractor = PlacesInteractor(
  //   placesRepository: _placesRepository,
  //   geoInteractor: geoInteractor,
  //   filterInteractor: filterInteractor,
  // )..init();

  // late final _searchRepository = SearchRepository();
  // late final searchInteractor = SearchInteractor(
  //   searchRepository: _searchRepository,
  //   placesInteractor: placesInteractor,
  // );

  // late final hardworkInteractor = HardworkInteractor();

  // final popupManager = PopupManager();
}
