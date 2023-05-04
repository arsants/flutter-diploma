import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class FilterPage extends StatefulWidget {
  final int eventLenght;

  const FilterPage({Key? key, required this.eventLenght}) : super(key: key);

  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  bool editor = false;
  bool community = false;
  bool spots = false;
  bool academic = false;
  bool isets = false;
  bool rail = false;
  bool kirov = false;
  bool len = false;
  bool okt = false;
  bool ordj = false;
  bool chk = false;
  RangeValues selectedRange = const RangeValues(18.0, 40.0);
  double range = 5.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Поиск событий',
          style: TextStyle(color: Colors.grey),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            AutoRouter.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.grey,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Найдено событий: ${widget.eventLenght}'),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(),
                    hintText: 'Название',
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Район старта:'),
                  ),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 180,
                                child: Row(
                                  children: [
                                    Checkbox(
                                        value: academic,
                                        onChanged: (value) {
                                          setState(() {
                                            academic = !academic;
                                          });
                                        }),
                                    const Text('Акакдемический'),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 180,
                                child: Row(
                                  children: [
                                    Checkbox(
                                        value: len,
                                        onChanged: (value) {
                                          setState(() {
                                            len = !len;
                                          });
                                        }),
                                    const Text('Лениниский'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 180,
                                child: Row(
                                  children: [
                                    Checkbox(
                                        value: isets,
                                        onChanged: (value) {
                                          setState(() {
                                            isets = !isets;
                                          });
                                        }),
                                    const Text('Верх-Исетский'),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 180,
                                child: Row(
                                  children: [
                                    Checkbox(
                                        value: okt,
                                        onChanged: (value) {
                                          setState(() {
                                            okt = !okt;
                                          });
                                        }),
                                    const Text('Октябрьский'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 180,
                                child: Row(
                                  children: [
                                    Checkbox(
                                        value: rail,
                                        onChanged: (value) {
                                          setState(() {
                                            rail = !rail;
                                          });
                                        }),
                                    const Text('Железнодорожный'),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 190,
                                child: Row(
                                  children: [
                                    Checkbox(
                                        value: ordj,
                                        onChanged: (value) {
                                          setState(() {
                                            ordj = !ordj;
                                          });
                                        }),
                                    const Text('Орджоникидзевский'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 180,
                                child: Row(
                                  children: [
                                    Checkbox(
                                        value: kirov,
                                        onChanged: (value) {
                                          setState(() {
                                            kirov = !kirov;
                                          });
                                        }),
                                    const Text('Кировский'),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 180,
                                child: Row(
                                  children: [
                                    Checkbox(
                                        value: chk,
                                        onChanged: (value) {
                                          setState(() {
                                            chk = !chk;
                                          });
                                        }),
                                    const Text('Чкаловский'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: FlatButton(
                          onPressed: () {
                            setState(() {
                              academic = isets =
                                  rail = kirov = len = okt = ordj = chk = true;
                            });
                          },
                          shape:
                              const RoundedRectangleBorder(side: BorderSide()),
                          child: const Text("Выбрать все"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: FlatButton(
                          onPressed: () {
                            setState(() {
                              academic = isets =
                                  rail = kirov = len = okt = ordj = chk = false;
                            });
                          },
                          shape:
                              const RoundedRectangleBorder(side: BorderSide()),
                          child: const Text("Убрать все"),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Тип события:'),
                  ),
                  Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                          child: Row(
                            children: [
                              Checkbox(
                                  value: editor,
                                  onChanged: (value) {
                                    setState(() {
                                      editor = !editor;
                                    });
                                  }),
                              const Text('От редакторов'),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          child: Row(
                            children: [
                              Checkbox(
                                  value: community,
                                  onChanged: (value) {
                                    setState(() {
                                      community = !community;
                                    });
                                  }),
                              const Text('От сообщества'),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          child: Row(
                            children: [
                              Checkbox(
                                  value: spots,
                                  onChanged: (value) {
                                    setState(() {
                                      spots = !spots;
                                    });
                                  }),
                              const Text('Точки сбора'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Column(
                    children: [
                      RangeSlider(
                        values: selectedRange,
                        onChanged: (RangeValues value) {
                          setState(() {
                            selectedRange = value;
                          });
                        },
                        max: 100,
                      ),
                      Text(
                          'Длинна маршрута: ${selectedRange.start.toInt()} - ${selectedRange.end.toInt()}+ км'),
                    ],
                  ),
                  Column(
                    children: [
                      Slider(
                        value: range,
                        onChanged: (value) {
                          setState(() {
                            range = value;
                          });
                        },
                        max: 20,
                      ),
                      Text('До точки старта: ${range.toInt()}+ км'),
                    ],
                  ),
                ],
              ),
              Align(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FlatButton(
                    onPressed: () {
                      AutoRouter.of(context).pop();
                    },
                    shape: const RoundedRectangleBorder(side: BorderSide()),
                    child: const Text("Показать"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
