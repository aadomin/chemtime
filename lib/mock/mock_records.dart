import 'dart:math' as math;
import 'package:chemtime/mock/mock_settings.dart';
import 'package:dart_date/dart_date.dart';
import 'package:chemtime/domain_entities/record/record_entity.dart';

class MockRecords {
  List<RecordEntity> loadMockRecords() {
    final days = <DateTime>[
      DateTime.now().previousWeek,
      DateTime.now(),
      DateTime.now().nextWeek,
    ];
    final mockSettings = MockSettings();

    final hours = <double>[2, 4, 8, 16, 4];

    return <RecordEntity>[
      for (var i = 0; i < 100; i++)
        RecordEntity(
          projectName: mockSettings
              .projects[math.Random().nextInt(mockSettings.projects.length)]
              .name,
          employeeName: mockSettings
              .employees[math.Random().nextInt(mockSettings.employees.length)]
              .name,
          hours: hours[math.Random().nextInt(hours.length)],
          firstDayOfThatWeek: days[math.Random().nextInt(days.length)],
        ),
    ];
  }
}
