import 'package:banquetbookingz/models/selection.dart';
import 'package:banquetbookingz/views/adduser.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

// Define the provider
final selectionModelProvider =
    StateNotifierProvider<SelectionModelNotifier, SelectionModel>((ref) {
  return SelectionModelNotifier();
});

// StateNotifier implementation remains the same as previously defined
class SelectionModelNotifier extends StateNotifier<SelectionModel> {
  SelectionModelNotifier() : super(SelectionModel());

  void toggleCheckBox(bool? checkBoxValue) {
    if (checkBoxValue != null) {
      state = state.copyWith(checkBox: checkBoxValue);
    }
  }

  void toggleAddUser(bool? value) {
    state = state.copyWith(addUser: value);
  }

  void toggleEditUser(bool? value) {
    state = state.copyWith(editUser: value);
  }

// void toggleDashboard() {

//       state = state.copyWith(dashboard: !state.dashboard!);

//   }

  void userIndex(int? value) {
    state = state.copyWith(userIndex: value);
  }

  void subscriberIndex(int? value) {
    state = state.copyWith(subscriberIndex: value);
  }

  void subDetails(bool? value) {
    state = state.copyWith(subDetails: value);
  }

  void toggleAddSubscriber(bool? value) {
    state = state.copyWith(addSubscriber: value);
  }

  void setGender(String gender) {
    state = state.copyWith(gender: gender);
  }

  void setSub(String gender) {
    state = state.copyWith(sub: gender);
  }

  void updateEnteredemail(String newText) {
    state.email.text = newText;

    state = state
        .copyWith(); // This is a hacky way to force a rebuild. Consider better state management for TextEditingController.
  }

  void updateEnteredName(String newText) {
    state.name.text = newText;

    state = state
        .copyWith(); // This is a hacky way to force a rebuild. Consider better state management for TextEditingController.
  }

  void updateEnteredMobile(String newText) {
    state.mobile.text = newText;

    state = state
        .copyWith(); // This is a hacky way to force a rebuild. Consider better state management for TextEditingController.
  }

  void updateEnteredPassword(String newText) {
    state.password.text = newText;

    state = state
        .copyWith(); // This is a hacky way to force a rebuild. Consider better state management for TextEditingController.
  }

  void updateSubname(String newText) {
    state.subName.text = newText;

    state = state
        .copyWith(); // This is a hacky way to force a rebuild. Consider better state management for TextEditingController.
  }

  void updateAnnualP(String newText) {
    state.annualP.text = newText;

    state = state
        .copyWith(); // This is a hacky way to force a rebuild. Consider better state management for TextEditingController.
  }

  void updateQuaterlyP(String newText) {
    state.quaterlyP.text = newText;

    state = state
        .copyWith(); // This is a hacky way to force a rebuild. Consider better state management for TextEditingController.
  }

  void updateMonthlyP(String newText) {
    state.monthlyP.text = newText;

    state = state
        .copyWith(); // This is a hacky way to force a rebuild. Consider better state management for TextEditingController.
  }
}
