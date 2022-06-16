import 'package:final_capstone/feature/apply_leave_screen/widgets/apply_leave_modal/widgets/custom_drop_down_profile.dart';
import 'package:final_capstone/feature/apply_leave_screen/widgets/apply_leave_modal/widgets/custom_drop_down_string.dart';
import 'package:final_capstone/feature/apply_leave_screen/widgets/sucessfully_applied_modal.dart';
import 'package:final_capstone/widgets/notes_text_field.dart';
import 'package:final_capstone/models/leave_request.dart';
import 'package:final_capstone/models/leaves.dart';
import 'package:final_capstone/models/profile.dart';
import 'package:final_capstone/utilities/fonts.dart';
import 'package:final_capstone/utilities/global_constants.dart';
import 'package:final_capstone/utilities/svg_icons.dart';
import 'package:final_capstone/widgets/custom_icon_button.dart';
import 'package:final_capstone/widgets/profile_pic.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ApplyLeaveModal extends StatefulWidget {
  final DateTime startDate;
  final DateTime? endDate;
  final Profile myProfile;
  final List<Profile> associatesProfiles;
  final Function(LeaveRequest leaveRequest) sendLeaveRequest;
  final bool isSending;
  final List<LeaveRequest>? leaveRequests;
  final bool isApplying;

  const ApplyLeaveModal({
    Key? key,
    required this.startDate,
    required this.endDate,
    required this.myProfile,
    required this.associatesProfiles,
    required this.sendLeaveRequest,
    required this.isSending,
    required this.leaveRequests,
    required this.isApplying,
  }) : super(key: key);

  @override
  State<ApplyLeaveModal> createState() => _ApplyLeaveModalState();
}

class _ApplyLeaveModalState extends State<ApplyLeaveModal> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  Profile? _chosenSubstitute;
  String? _typeOfLeave;
  String? _typeOfDay;
  String? _notes;
  late String _startDateFormat;
  String? _endDateFormat;
  int _totalDays = 1;
  final _notesController = TextEditingController();

  @override
  void initState() {
    if (!widget.isApplying && widget.leaveRequests != null) {
      for (var value in widget.leaveRequests!) {
        if (value.days.contains(widget.startDate) ||
            value.days.contains(widget.endDate)) {
          _notesController.text = value.notes ?? '';
          _chosenSubstitute = value.chosenSubstitute;
          _typeOfLeave = value.typeOfLeave;
          _typeOfDay = value.typeOfDay;
          _startDateFormat = DateFormat('dd.MM.yy').format(value.days.first);
          if (value.days.length > 1) {
            _endDateFormat = DateFormat('dd.MM.yy').format(value.days.last);
            _totalDays =
                value.days.last.difference(value.days.first).inDays + 1;
          }
        }
      }
    }
    super.initState();
  }

  @override
  void dispose() {
    _notesController.dispose();
    super.dispose();
  }

  Future<void> _sendLeaveRequest() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    _formKey.currentState!.save();
    try {
      await widget.sendLeaveRequest(
        LeaveRequest(
          typeOfLeave: _typeOfLeave!,
          typeOfDay: _typeOfDay!,
          chosenSubstitute: _chosenSubstitute!,
          notes: _notes,
          days: _getAllDays(),
        ),
      );
    } catch (e) {
      print(e);
    } finally {
      Navigator.of(context).pop();
      showCupertinoModalPopup(
        context: context,
        builder: (context) => const SuccessfullyAppliedModal(),
      );
    }
  }

  List<DateTime> _getAllDays() {
    List<DateTime> allDays = [];
    if (widget.endDate != null) {
      for (var i = 0;
          i <= widget.endDate!.difference(widget.startDate).inDays;
          i++) {
        allDays.add(widget.startDate.add(Duration(days: i)));
      }
    } else {
      allDays.add(widget.startDate);
    }
    return allDays;
  }

  String? _typeOfLeaveValidator(String? typeOfLeave) {
    if (typeOfLeave == 'Annual Leave') {
      if (_totalDays > widget.myProfile.leaves!.annualLeave) {
        return 'You only have ${widget.myProfile.leaves!.annualLeave} annual leave/s';
      }
    } else if (typeOfLeave == 'Sick Leave') {
      if (_totalDays > widget.myProfile.leaves!.sickDays) {
        return 'You only have ${widget.myProfile.leaves!.sickDays} sick leave/s';
      }
    } else if (typeOfLeave == 'Vacation Leave') {
      if (_totalDays > widget.myProfile.leaves!.remainingVacation) {
        return 'You only have ${widget.myProfile.leaves!.remainingVacation} vacation leave/s';
      }
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    if (widget.isApplying) {
      _startDateFormat = DateFormat('dd.MM.yy').format(widget.startDate);
      if (widget.endDate != null) {
        _endDateFormat = DateFormat('dd.MM.yy').format(widget.endDate!);
        _totalDays = widget.endDate!.difference(widget.startDate).inDays + 1;
      }
    }
    Map<String, String> leavesSummary = {
      'Tage insgesamt': '$_totalDays',
      'Aktuelles Urlaubsbudget': '${widget.myProfile.leaves?.currentBudget}',
      'Beantragte Urlaubstage':
          '${widget.myProfile.leaves?.totalRequestedLeaves}',
    };
    return Container(
      height: MediaQuery.of(context).size.height * 0.75,
      padding: middleContainerPadding,
      decoration: topContainerRadius,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const AllertaFont(
                  text: 'Zeitraum',
                  fontSize: 22,
                ),
                CustomIconButton(
                  icon: SizedBox(
                    height: 20,
                    width: 20,
                    child: closeIcon,
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ],
            ),
            const SizedBox(height: 10),
            AllertaFont(
              text: (_endDateFormat != null)
                  ? '$_startDateFormat - $_endDateFormat'
                  : _startDateFormat,
              fontSize: 16,
            ),
            const SizedBox(height: 20),
            ListView.separated(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MulishFont(
                    text: leavesSummary.keys.toList()[index],
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                  AllertaFont(
                    text: leavesSummary.values.toList()[index],
                    fontSize: 16,
                  ),
                ],
              ),
              separatorBuilder: (context, index) => const SizedBox(height: 10),
              itemCount: leavesSummary.length,
            ),
            const SizedBox(height: 30),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProfilePic(
                  profile: widget.myProfile,
                  size: 65,
                ),
                const SizedBox(width: 15),
                NotesTextField(
                  onChanged: (notes) => _notes = notes,
                  controller: _notesController,
                  readOnly: !widget.isApplying,
                ),
              ],
            ),
            const SizedBox(height: 30),
            CustomDropDownString(
              isApplying: widget.isApplying,
              header: 'Urlaub',
              formKey: _formKey,
              items: const [
                'Annual Leave',
                'Sick Leave',
                'Vacation Leave',
              ],
              validator: _typeOfLeaveValidator,
              choice: _typeOfLeave,
              onRemoveChoice: () => setState(() {
                _typeOfLeave = null;
              }),
              onChanged: (typeOfLeave) => setState(() {
                _typeOfLeave = typeOfLeave;
              }),
            ),
            const SizedBox(height: 30),
            CustomDropDownString(
              isApplying: widget.isApplying,
              header: 'Wie angegeben',
              items: const [
                'Whole Day',
                'First Half of Day',
                'Second Half of Day',
              ],
              choice: _typeOfDay,
              onRemoveChoice: () => setState(() {
                _typeOfDay = null;
              }),
              onChanged: (typeOfDay) => setState(() {
                _typeOfDay = typeOfDay;
              }),
            ),
            const SizedBox(height: 30),
            CustomDropDownProfile(
              isApplying: widget.isApplying,
              items: widget.associatesProfiles,
              onRemoveChoice: () => setState(() {
                _chosenSubstitute = null;
              }),
              onChanged: (chosenAssociate) => setState(() {
                _chosenSubstitute = chosenAssociate;
              }),
              choice: _chosenSubstitute,
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                if (!widget.isApplying)
                  Row(
                    children: [
                      SizedBox(
                        height: 20,
                        width: 20,
                        child: pendingRequestIcon,
                      ),
                      const SizedBox(width: 10),
                      const RobotoFont(
                        text: 'Warten auf Freigabe',
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        fontColor: CupertinoColors.systemRed,
                      ),
                    ],
                  ),
                const Spacer(),
                IntrinsicWidth(
                  child: CupertinoButton(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    borderRadius: const BorderRadius.all(Radius.circular(25)),
                    color: Colors.orangeAccent,
                    onPressed: (widget.isApplying &&
                            (_typeOfLeave != null &&
                                _typeOfDay != null &&
                                _chosenSubstitute != null))
                        ? _sendLeaveRequest
                        : null,
                    child: (widget.isSending)
                        ? const CupertinoActivityIndicator()
                        : Row(
                            children: [
                              const RobotoFont(
                                text: 'Abschicken',
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                              const SizedBox(width: 10),
                              paperPlaneIcon,
                            ],
                          ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
