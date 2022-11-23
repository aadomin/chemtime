import 'package:chemtime/domain_entities/record/record_entity.dart';
import 'package:chemtime/mock/mock_records.dart';
// import 'package:flutter/material.dart';

class RecordsRepository {
  List<RecordEntity> loadRecords() {
    MockRecords mockRecordsGenerator = MockRecords();

    return mockRecordsGenerator.loadMockRecords(); //TODO del mock
  }

  Future<void> addRecord(RecordEntity record) async {}

  Future<void> updateRecord(
      RecordEntity oldRecord, RecordEntity newRecord) async {}

  Future<void> removeRecord(RecordEntity record) async {}
}
