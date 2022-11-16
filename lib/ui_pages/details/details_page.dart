import 'package:chemtime/domain_entities/project/project_entity.dart';
import 'package:chemtime/domain_entities/record/record_entity.dart';
import 'package:chemtime/ui_pages/details/details_page_vm.dart';
import 'package:declarative_animated_list/declarative_animated_list.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({
    required this.viewModel,
    Key? key,
  }) : super(key: key);

  final DetailsPageVM viewModel;

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  DetailsPageVM get ___vm => widget.viewModel;

  @override
  void initState() {
    widget.viewModel.addListener(_vmListener);
    widget.viewModel.initVM();
    super.initState();
  }

  void _vmListener() => setState(() {});

  @override
  void dispose() {
    widget.viewModel.disposeVM();
    widget.viewModel.removeListener(_vmListener);
    super.dispose();
  }

  //

  int get kHeightOfElements => 48;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [Text(___vm.title1), Text(___vm.title2)],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_circle_left_outlined),
            onPressed: ___vm.onPreviousWeek,
          ),
          IconButton(
            icon: const Icon(Icons.arrow_circle_right_outlined),
            onPressed: ___vm.onNextWeek,
          ),
        ],
      ),
      body: PageView(
        controller: ___vm.pageViewController,
        onPageChanged: ___vm.onPageViewChanged,
        children: [
          const Center(child: CircularProgressIndicator()),
          ___vm.wasEmployeeInTheCompanyAtWeek
              ? SingleChildScrollView(
                  //TODO изменить на скролл
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const _SmallTitle('На прошлой неделе было'),
                        _copyYesterdayBlock(),
                        const Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: _SmallTitle('Отчеты за эту неделю'),
                        ),
                        _recordsList(),
                        const Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: _SmallTitle('Быстрый доступ и все проекты'),
                        ),
                        _shortcutsList(),
                        _projectsList(),
                      ],
                    ),
                  ),
                )
              : const Center(child: Text('на этой неделе он(а) не работал(а)')),
          const Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }

  Widget _copyYesterdayBlock() {
    return Row(
      children: [
        Expanded(
          child: Builder(
            builder: (context) {
              var text = '';
              for (final record in ___vm.previousWeekRecords) {
                text += '${record.hours}ч - ${record.stringShortcut}, ';
              }

              return Text(text);
            },
          ),
        ),
        SizedBox(
          width: 120,
          height: 40,
          child: InkWell(
            onTap: () {},
            child: DecoratedBox(
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFEEEEEE)),
                  borderRadius: BorderRadius.circular(5)),
              child: const Center(
                child: Text('Дублировать'),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _recordsList() {
    return SizedBox(
      height: (kHeightOfElements * ___vm.records.length).toDouble(),
      // width: 300,
      child: DeclarativeList(
        //ТУТВОПРОС
        //physics: const NeverScrollableScrollPhysics(),
        items: ___vm.records,
        insertDuration: const Duration(milliseconds: 200),
        removeDuration: const Duration(milliseconds: 200),
        itemBuilder: (_, RecordEntity record, __, Animation<double> animation) {
          return FadeTransition(
            opacity: animation,
            child: SizeTransition(
              sizeFactor: animation,
              axisAlignment: 0.0,
              child: _buildRecordTile(record),
            ),
          );
        },
        removeBuilder:
            (_, RecordEntity record, __, Animation<double> animation) {
          return FadeTransition(
            opacity: animation,
            child: SizeTransition(
              sizeFactor: animation,
              axisAlignment: 0.0,
              child: _buildRecordTile(record),
            ),
          );
        },
      ),
    );
  }

  Widget _buildRecordTile(RecordEntity record) {
    return SizedBox(
      height: kHeightOfElements.toDouble(),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        color: const Color(0xFFDDDDDD),
        child: Row(
          children: [
            InkWell(
              onTap: () => ___vm.onTapOnRecordHours(record),
              child: SizedBox(
                height: 40,
                width: 40,
                child: Center(
                  child: Text('${record.hours}ч'),
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Text(
                    record.stringShortcut,
                    maxLines: 1,
                  ),
                  const SizedBox(width: 30),
                  Expanded(
                    child: Text(
                      //TODO тут была ошибка
                      ___vm.recordsProjects[record.stringShortcut] != null
                          ? ___vm.recordsProjects[record.stringShortcut]!.name
                          : '',
                      overflow: TextOverflow.fade,
                      maxLines: 2,
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () => ___vm.onTapOnRemoveRecord(record),
              child: const SizedBox(
                height: 40,
                width: 40,
                child: Center(
                    child: Icon(
                  Icons.remove_circle_outline,
                  size: 25,
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _shortcutsList() {
    var kHeightOfShortcuts = 60;
    return SizedBox(
      height: kHeightOfShortcuts * 3,
      child: Wrap(
        children: [
          for (final item in ___vm.shortcutsList)
            InkWell(
              onTap: () {},
              child: DecoratedBox(
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFFEEEEEE)),
                    borderRadius: BorderRadius.circular(3)),
                child: SizedBox(
                  height: kHeightOfShortcuts.toDouble(),
                  width: MediaQuery.of(context).size.width / 5 - 4,
                  child: Center(
                    child: Text(item),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _projectsList() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
          child: TextField(
            controller: ___vm.projectFilterTextController,
            decoration: InputDecoration(
              labelText: 'Фильтр по проектам',
              enabledBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(width: 1, color: Color(0xFFDDDDDD)),
                borderRadius: BorderRadius.circular(15),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 1, color: Colors.red),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 8, 0, 50),
          child: SizedBox(
            height: 32.0 * ___vm.allProjects.length.toDouble(),
            child: ListView.builder(
              itemCount: ___vm.allProjects.length,
              itemBuilder: ((context, index) {
                return _ProjectTile(
                  project: ___vm.allProjects[index],
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}

class _SmallTitle extends StatelessWidget {
  const _SmallTitle(this.title, {super.key});
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 15,
      child: Center(
        child: Text(
          title,
          style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class _ProjectTile extends StatelessWidget {
  const _ProjectTile({required this.project, super.key});
  final ProjectEntity project;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      child: SizedBox(
        height: 32,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text('${project.numberShortcut}.  ${project.name}',
                  maxLines: 2,
                  overflow: TextOverflow.fade,
                  style: const TextStyle(fontSize: 10)),
            ),
            SizedBox(
              height: 32,
              width: 32,
              child: Center(
                child: FittedBox(
                  child: Text(
                    project.stringShortcut,
                    style: const TextStyle(fontSize: 9),
                  ),
                ),
              ),
            ),
            const Icon(Icons.arrow_upward_rounded, size: 15)
          ],
        ),
      ),
    );
  }
}
