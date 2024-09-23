import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/firebase_auth/auth_util.dart';

List<DateTime> getAvailSlots(
  List<DateTime> reservedSlots,
  DateTime startDateArg,
) {
  List<DateTime> availableBookings = [];
  DateTime now = startDateArg;
  DateTime startTime = DateTime(now.year, now.month, now.day, now.hour);
  DateTime endTime = startTime.add(const Duration(days: 2));

  //loop through the time slots from start to end time
  for (DateTime currentTime = startTime;
      currentTime.isBefore(endTime);
      currentTime = currentTime.add(Duration(hours: 1))) {
    bool isReserved = false;

    //check if the current time slots is reserved
    for (DateTime reservedTime in reservedSlots) {
      if (currentTime.year == reservedTime.year &&
          currentTime.month == reservedTime.month &&
          currentTime.day == reservedTime.day &&
          currentTime.hour == reservedTime.hour) {
        isReserved = true;
        break;
      }
    }

    //Add the current time slot to availoable booking if it's not reserved
    if (!isReserved && currentTime.hour >= 9 && currentTime.hour <= 17) {
      availableBookings.add(currentTime);
    }
  }

  List<DateTime> availableSlots = availableBookings
      .where((DateTime dateTime) => dateTime.day == availableBookings[0].day)
      .toList();
  return availableSlots;
}

int stringToint(String arg1) {
  return int.parse(arg1);
}

double getAvarage(List<int> reviews) {
  int sum = reviews.reduce(((value, element) => value + element));
  return sum / reviews.length;
}

List<ShopsRecord> getShopList(
  List<ShopsRecord> list,
  List<ShopsRecord> searchResults,
) {
  return searchResults.length > 0 ? searchResults : list;
}

List<String> getUniqueCategories(List<String> categories) {
  return categories.toSet().toList();
}

double getRatings(List<int> ratings) {
  int sum = ratings.reduce((int value, int element) => value + element);
  return sum / ratings.length;
}

double negativePrice(double price) {
  return price * -1;
}

double stripeAmount(double cartsum) {
  return cartsum * 100;
}
