import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class InitialTab extends StatefulWidget {
  final PanelController panelController;
  final TabController tabController;

  const InitialTab(
      {Key? key, required this.panelController, required this.tabController})
      : super(key: key);

  @override
  _InitialTabState createState() => _InitialTabState();
}

class _InitialTabState extends State<InitialTab> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Отображение на карте'),
                IconButton(
                    icon: const Icon(Icons.cancel),
                    onPressed: () => widget.panelController.close())
              ],
            ),
          ),
          TextButton.icon(
            icon: const Icon(Icons.pedal_bike),
            label: const Text('Велосепедисты'),
            onPressed: () {
              widget.tabController.animateTo(1);
            },
          ),
          TextButton.icon(
            icon: const Icon(Icons.person),
            label: const Text('События'),
            onPressed: () {
              widget.tabController.animateTo(2);
            },
          )
        ],
      ),
    );
  }
}

class EventsTab extends StatefulWidget {
  final PanelController panelController;
  final TabController tabController;

  const EventsTab(
      {Key? key, required this.panelController, required this.tabController})
      : super(key: key);

  @override
  _EventsTabState createState() => _EventsTabState();
}

class _EventsTabState extends State<EventsTab> {
  bool editor = true;
  bool community = false;
  bool spots = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      widget.tabController.animateTo(0);
                    }),
                const Text('События'),
                IconButton(
                    icon: const Icon(Icons.cancel),
                    onPressed: () {
                      widget.tabController.animateTo(0);
                      widget.panelController.close();
                    })
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.edit),
                    ),
                    Text('От редакторов'),
                  ],
                ),
                Checkbox(value: editor, onChanged: (value) {
                  setState(() {
                    editor = !editor;
                  });
                })
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.image),
                    ),
                    Text('От сообщества'),
                  ],
                ),
                Checkbox(value: community, onChanged: (value) {
                  setState(() {
                    community = !community;
                  });
                })
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.location_on_outlined),
                    ),
                    Text('Точки сбора'),
                  ],
                ),
                Checkbox(value: spots, onChanged: (value) {
                  setState(() {
                    spots = !spots;
                  });
                })
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class UsersTab extends StatefulWidget {
  final PanelController panelController;
  final TabController tabController;

  const UsersTab(
      {Key? key, required this.panelController, required this.tabController})
      : super(key: key);

  @override
  _UsersTabState createState() => _UsersTabState();
}

class _UsersTabState extends State<UsersTab> {
  RangeValues selectedRange = const RangeValues(18.0, 40.0);
  bool man = false;
  bool woman = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      widget.tabController.animateTo(0);
                    }),
                const Text('Велосепедисты'),
                IconButton(
                    icon: const Icon(Icons.cancel),
                    onPressed: () {
                      widget.tabController.animateTo(0);
                      widget.panelController.close();
                    })
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.person),
                  ),
                  Text('Мужчины'),
                ],
              ),
              Checkbox(value: man, onChanged: (value) {
                setState(() {
                  man = !man;
                });
              })
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.person),
                  ),
                  Text('Женщины'),
                ],
              ),
              Checkbox(value: woman, onChanged: (value) {
                setState(() {
                  woman = !woman;
                });
              })
            ],
          ),
          RangeSlider(
            values: selectedRange,
            onChanged: (RangeValues value) {
              setState(() {
                selectedRange = value;
              });
            },
            min: 0,
            max: 100,
          ),
          Text(
              'Возвраст: ${selectedRange.start.toInt()} - ${selectedRange.end.toInt()} лет')
        ],
      ),
    );
  }
}
