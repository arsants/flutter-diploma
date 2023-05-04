
import 'package:katai/features/leaderboard/domain/entities/leaderboard.dart';
import 'package:katai/graphql/LeaderBoard.data.gql.dart';

class LeaderBoardModel extends LeaderBoard {
  const LeaderBoardModel({
    required users,
  }) : super(
          users: users,
        );

  factory LeaderBoardModel.fromJson(Map<String, dynamic> json) {
    return LeaderBoardModel(
      users: json["users"],
    );
  }

  Map<String, dynamic> toJson() => {

        "users": users,
      };
}
