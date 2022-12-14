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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(___vm.title1),
            Padding(
              padding: const EdgeInsets.only(top: 3),
              child: Text(
                ___vm.title2,
                style: const TextStyle(fontSize: 12),
              ),
            ),
          ],
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
                  //TODO ???????????????? ???? ????????????
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const _SmallTitle('???? ?????????????? ???????????? ????????'),
                        _copyYesterdayBlock(),
                        const Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: _SmallTitle('???????????? ???? ?????? ????????????'),
                        ),
                        _recordsList(),
                        const Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: _SmallTitle('?????????????? ???????????? ?? ?????? ??????????????'),
                        ),
                        _shortcutsList(),
                        _projectsList(),
                      ],
                    ),
                  ),
                )
              : const Center(
                  child: Text('???? ???????? ???????????? ????(??) ???? ??????(??) ?? ??????????')),
          const Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }

  Widget _copyYesterdayBlock() {
    return Row(
      children: [
        Expanded(
          child: Center(
            child: Wrap(
              alignment: WrapAlignment.center,
              children: [
                for (final record in ___vm.previousWeekRecords)
                  Text('${record.hours}?? - ${record.stringShortcut}, '),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 120,
          height: 40,
          child: InkWell(
            onTap: () {
              ___vm.onDuplicateLastWeek();
            },
            child: DecoratedBox(
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFEEEEEE)),
                  borderRadius: BorderRadius.circular(5)),
              child: const Center(
                child: Text('??????????????????????'),
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
        //??????????????????
        //physics: const NeverScrollableScrollPhysics(),
        items: ___vm.records,
        insertDuration: const Duration(milliseconds: 200),
        removeDuration: const Duration(milliseconds: 200),
        itemBuilder: (_, RecordEntity record, __, Animation<double> animation) {
          return FadeTransition(
            key: ObjectKey(record),
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
            key: ObjectKey(record.copyWith(
                nonUniqueKey: record.nonUniqueKey + 32000)), //??????????????????
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
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: SizedBox(
        height: kHeightOfElements.toDouble(),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          color: const Color.fromARGB(65, 211, 211, 211),
          child: Row(
            children: [
              //
              // ????????
              //
              InkWell(
                onTap: () => ___vm.onTapOnRecordHours(record),
                child: SizedBox(
                  height: 48,
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: ColoredBox(
                        color: const Color.fromARGB(55, 204, 203, 203),
                        child: SizedBox(
                          height: 36,
                          width: 60,
                          child: Center(
                            child: Text('${record.hours}??'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              //
              // ?????????????? ??????
              //
              SizedBox(
                width: 45,
                child: Center(
                  child: FittedBox(
                    child: Text(
                      record.stringShortcut,
                      maxLines: 1,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),

              //
              // ????????????????
              //
              Expanded(
                child: Text(
                  //TODO ?????? ???????? ????????????
                  ___vm.recordsProjects[record.stringShortcut] != null
                      ? ___vm.recordsProjects[record.stringShortcut]!.name
                      : '',
                  overflow: TextOverflow.fade,
                  maxLines: 2,
                ),
              ),

              //
              // ??????????????
              //
              InkWell(
                onTap: () => ___vm.onTapOnRemoveRecord(record),
                child: const SizedBox(
                  height: 30,
                  width: 30,
                  child: Center(
                    child: Icon(
                      Icons.remove_circle_outline,
                      size: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
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
              onTap: () {
                ___vm.onAddProjectFromShortcut(shortcut: item);
              },
              child: DecoratedBox(
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFEEEEEE)),
                  borderRadius: BorderRadius.circular(3),
                ),
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
            onChanged: (value) => ___vm.onFilterTextChange(value),
            decoration: const InputDecoration(
              labelText: '???????????? ???? ????????????????',
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Color(0xFFDDDDDD)),
                //borderRadius: BorderRadius.circular(15),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.red),
                //borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 8, 0, 50),
          child: SizedBox(
            height: 32.0 * ___vm.filteredProjects().length.toDouble(),
            child: ListView.builder(
              itemCount: ___vm.filteredProjects().length,
              itemBuilder: ((context, index) {
                return _ProjectTile(
                  project: ___vm.filteredProjects()[index],
                  // ?????????????????? ???? ???? ??????????????
                  onAddProject: (project) {
                    ___vm.onAddProject(project);
                  },
                );
              }),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 2.0 / 3.0,
        )
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
  const _ProjectTile(
      {required this.project, required this.onAddProject, super.key});
  final ProjectEntity project;
  final void Function(ProjectEntity) onAddProject;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        onAddProject(project);
      },
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
