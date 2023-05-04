// import 'package:auto_route/auto_route.dart';
// import 'package:katai/core/router/router.gr.dart';
// import 'package:katai/features/map/domain/entities/event.dart';
// import 'package:katai/features/map/domain/entities/filter.dart';
// import 'package:katai/features/map/presentation/bloc/event_cubit.dart';
// import 'package:katai/features/map/presentation/bloc/map_cubit.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//
// class EventListPage extends StatefulWidget {
//   @override
//   _EventListPageState createState() => _EventListPageState();
// }
//
// class _EventListPageState extends State<EventListPage> {
//   late EventFilter eventFilter;
//
//   List<Event> _events = [];
//
//   final List _locations = [
//     'Расстоянию до старта',
//     'Возрастанию длины',
//     'Убыванию длины',
//     'Популярности',
//     'Рейтингу',
//     'Количеству плейлистов'
//   ];
//   String _selectedLocation = 'Расстоянию до старта';
//
//   @override
//   void initState() {
//     super.initState();
//     eventFilter = const EventFilter(
//         search: null,
//         eventType: null,
//         district: null,
//         currentLocation: null,
//         minDst: null,
//         maxDst: null,
//         startDst: null);
//     context.read<EventCubit>().getEvents(eventFilter).then((value) => {});
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text(
//           'Список событий',
//           style: TextStyle(color: Colors.grey),
//         ),
//         backgroundColor: Colors.white,
//         leading: IconButton(
//           onPressed: () {
//             AutoRouter.of(context).pop();
//           },
//           icon: Icon(
//             Icons.arrow_back_ios_rounded,
//             color: Colors.grey,
//           ),
//         ),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: IconButton(
//                 icon: Icon(
//                   Icons.filter,
//                   color: Colors.grey,
//                 ),
//                 onPressed: () {
//                   AutoRouter.of(context)
//                       .push(FilterPageRoute(eventLenght: _events.length));
//                 }),
//           )
//         ],
//       ),
//       body: BlocConsumer<EventCubit, EventState>(
//         builder: (context, state) {
//           if (state is EventError) {
//             return Text("Error");
//           }
//           if (state is EventListLoading) {
//             return const Center(child: CircularProgressIndicator());
//           }
//           return Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text("${_events.length} событий"),
//                     DropdownButton(
//                       hint: Text(_selectedLocation),
//                       value: _selectedLocation,
//                       items: _locations.map((value) {
//                         return DropdownMenuItem(
//                           value: value,
//                           child: Text(value),
//                         );
//                       }).toList(),
//                       onChanged: (newValue) {
//                         setState(() {
//                           _selectedLocation = newValue.toString();
//                           // _events.sort((a, b) => a.name.compareTo(b.name));
//                         });
//                       },
//                     )
//                   ],
//                 ),
//               ),
//               Expanded(
//                 child: ListView.builder(
//                   itemBuilder: (context, index) {
//                     final event = _events[index];
//                     return ListTile(
//                       onTap: () {
//                         context.read<MapCubit>().setEvent(event);
//                         Navigator.pop(context);
//                       },
//                       title: Center(child: Text(event.name)),
//                       subtitle: Padding(
//                         padding: const EdgeInsets.symmetric(vertical: 8.0),
//                         child: eventItem(event),
//                       ),
//                       isThreeLine: true,
//                       horizontalTitleGap: 8,
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(20))),
//                     );
//                   },
//                   itemCount: _events.length,
//                 ),
//               ),
//             ],
//           );
//         },
//         listener: (context, state) {
//           if (state is EventListLoaded) {
//             setState(() {
//               _events = state.events +
//                   state.events +
//                   state.events +
//                   state.events +
//                   state.events +
//                   state.events +
//                   state.events +
//                   state.events +
//                   state.events +
//                   state.events;
//             });
//           }
//         },
//       ),
//     );
//   }
// }
//
// Widget eventItem(Event event) {
//   return Row(
//     children: [
//       Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: SizedBox(height: 85, width: 85, child: Placeholder()),
//       ),
//       Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: SizedBox(
//                   height: 30,
//                   width: 75,
//                   child: Row(
//                     children: [
//                       Icon(Icons.location_on_outlined),
//                       Text("15 km"),
//                     ],
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 30,
//                 width: 75,
//                 child: Row(
//                   children: [
//                     FaIcon(
//                       FontAwesomeIcons.globeEurope,
//                       size: 25,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text("ЖБИ"),
//                     ),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: SizedBox(
//                   height: 30,
//                   width: 75,
//                   child: Row(
//                     children: [
//                       const FaIcon(
//                         FontAwesomeIcons.userAlt,
//                         size: 20,
//                       ),
//                       const Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Text("Katai"),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: SizedBox(
//                   height: 30,
//                   width: 75,
//                   child: Row(
//                     children: [
//                       const FaIcon(
//                         FontAwesomeIcons.mapSigns,
//                         size: 20,
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Text(
//                             "${(event.meters / 10000).toStringAsFixed(0)} km"),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 30,
//                 width: 75,
//                 child: Row(
//                   children: [
//                     const FaIcon(
//                       FontAwesomeIcons.music,
//                       size: 20,
//                     ),
//                     const Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text("2"),
//                     ),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: SizedBox(
//                   height: 30,
//                   width: 75,
//                   child: Row(
//                     children: [
//                       const FaIcon(
//                         FontAwesomeIcons.users,
//                         size: 20,
//                       ),
//                       const Padding(
//                         padding: const EdgeInsets.fromLTRB(8.0, 8.0, 0, 8.0),
//                         child: Text("15"),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           )
//         ],
//       ),
//     ],
//   );
// }
//
// String formatDuration(Duration d) {
//   if (d.inHours > 0) {
//     return "${d.inHours} h ${d.inMinutes % 60} m";
//   } else {
//     return "${d.inMinutes} minutes";
//   }
// }
