import 'package:chemtime/domain_entities/record/record_entity.dart';
import 'package:chemtime/mock/mock_records.dart';

class RecordsRepository {
  List<RecordEntity> loadRecords() {
    MockRecords mockRecords = MockRecords();
    return mockRecords.loadMockRecords(); //TODO del mock
  }
}
