import 'package:freezed_annotation/freezed_annotation.dart';

part 'leaves.freezed.dart';

part 'leaves.g.dart';

@freezed
abstract class Leaves with _$Leaves {
  factory Leaves({
    @Default(0) @JsonKey(name: 'annual_leave') int annualLeave,
    @Default(0) @JsonKey(name: 'remaining_vacation') int remainingVacation,
    @Default(0) @JsonKey(name: 'requested_leave') int requestedLeave,
    @Default(0) @JsonKey(name: 'carry_over') int carryOver,
    @Default(0) @JsonKey(name: 'sick_days') int sickDays,
    @JsonKey(name: 'leave_requests') dynamic leaveRequests,
  }) = _Leaves;

  factory Leaves.fromJson(Map<String, dynamic> json) => _$LeavesFromJson(json);
}

extension LeavesExt on Leaves {
  String get annualLeaveExt {
    if (annualLeave < 10) {
      return '0$annualLeave';
    } else {
      return annualLeave.toString();
    }
  }

  String get remainingVacationExt {
    if (remainingVacation < 10) {
      return '0$remainingVacation';
    } else {
      return remainingVacation.toString();
    }
  }

  String get requestedLeaveExt {
    if (requestedLeave < 10) {
      return '0$requestedLeave';
    } else {
      return requestedLeave.toString();
    }
  }

  String get carryOverExt {
    if (carryOver < 10) {
      return '0$carryOver';
    } else {
      return carryOver.toString();
    }
  }

  String get sickDaysExt {
    if (sickDays < 10) {
      return '0$sickDays';
    } else {
      return sickDays.toString();
    }
  }

  int get currentBudget =>
      annualLeave + remainingVacation + carryOver + sickDays;

  int? get totalRequestedLeaves => leaveRequests?.length;
}
