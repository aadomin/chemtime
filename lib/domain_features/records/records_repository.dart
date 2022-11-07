import 'package:chemtime/domain_entities/record/record_entity.dart';
import 'package:chemtime/mock/mock_records.dart';
import 'package:flutter/material.dart';

class RecordsRepository {
  List<RecordEntity> loadRecords() {
    MockRecordsProvider mockRecordsProvider = MockRecordsProvider();
    final mockRecords = mockRecordsProvider.loadMockRecords();
    debugPrint(mockRecords.toString());
    return mockRecords; //TODO del mock
  }
}
