// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(count) =>
      "${Intl.plural(count, few: 'Please enter at least 4 characters', other: 'Please enter at least ${count} characters')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "account": MessageLookupByLibrary.simpleMessage("Account"),
        "accountAddress": MessageLookupByLibrary.simpleMessage("Address"),
        "accountLocation": MessageLookupByLibrary.simpleMessage("Location"),
        "accountPreferences":
            MessageLookupByLibrary.simpleMessage("Preferences"),
        "accountSaveChanges":
            MessageLookupByLibrary.simpleMessage("Save Changes"),
        "accountSecurity":
            MessageLookupByLibrary.simpleMessage("Account Security"),
        "addCardCVC": MessageLookupByLibrary.simpleMessage("CVC"),
        "addCardExpirationDate":
            MessageLookupByLibrary.simpleMessage("Expiration Date"),
        "addCardHolder": MessageLookupByLibrary.simpleMessage("Card Holder"),
        "addCardInputCardHolderName":
            MessageLookupByLibrary.simpleMessage("Enter card holder name"),
        "addCardInputCardNumber":
            MessageLookupByLibrary.simpleMessage("Enter Card Number"),
        "addCardText": MessageLookupByLibrary.simpleMessage("Card Number"),
        "addCardTitle": MessageLookupByLibrary.simpleMessage("Add New Card"),
        "addCardTogle":
            MessageLookupByLibrary.simpleMessage("Mark as default card"),
        "bookIconGym": MessageLookupByLibrary.simpleMessage("Gym"),
        "bookIconLaundry": MessageLookupByLibrary.simpleMessage("Laundry"),
        "bookIconMiniBar": MessageLookupByLibrary.simpleMessage("Mini Bar"),
        "bookIconParking": MessageLookupByLibrary.simpleMessage("Parking"),
        "bookIconWifi": MessageLookupByLibrary.simpleMessage("Wifi"),
        "bookNow": MessageLookupByLibrary.simpleMessage("Book Now"),
        "bookOurFacitilites":
            MessageLookupByLibrary.simpleMessage("Our Facitilities"),
        "bookTabCosts": MessageLookupByLibrary.simpleMessage("Costs"),
        "bookTabDetails": MessageLookupByLibrary.simpleMessage("Details"),
        "bookTabOverview": MessageLookupByLibrary.simpleMessage("Overview"),
        "bookTabReviews": MessageLookupByLibrary.simpleMessage("Reviews"),
        "calendarApply": MessageLookupByLibrary.simpleMessage("Apply"),
        "calendarClear": MessageLookupByLibrary.simpleMessage("Clear"),
        "classBuisnes": MessageLookupByLibrary.simpleMessage("Business"),
        "classEconomy": MessageLookupByLibrary.simpleMessage("Economy"),
        "classLux": MessageLookupByLibrary.simpleMessage("Lux"),
        "congrats": MessageLookupByLibrary.simpleMessage("Congrats!"),
        "days": MessageLookupByLibrary.simpleMessage("Dyas"),
        "distance": MessageLookupByLibrary.simpleMessage("Distance"),
        "duration": MessageLookupByLibrary.simpleMessage("Duration"),
        "emCost": MessageLookupByLibrary.simpleMessage("* Estimated Cost"),
        "filterAll": MessageLookupByLibrary.simpleMessage("All"),
        "filterApartment": MessageLookupByLibrary.simpleMessage("Apartment"),
        "filterApply": MessageLookupByLibrary.simpleMessage("Apply"),
        "filterHomestay": MessageLookupByLibrary.simpleMessage("Homestay"),
        "filterHotel": MessageLookupByLibrary.simpleMessage("Hotel"),
        "filterPriceRange": MessageLookupByLibrary.simpleMessage("Price Range"),
        "filterResort": MessageLookupByLibrary.simpleMessage("Resort"),
        "filterStarRating": MessageLookupByLibrary.simpleMessage("Star Rating"),
        "filterTypeOfAccommodation":
            MessageLookupByLibrary.simpleMessage("Type of Accommodation"),
        "filterVilla": MessageLookupByLibrary.simpleMessage("Villa"),
        "forgotPassButtonSend": MessageLookupByLibrary.simpleMessage("Send"),
        "forgotPassText": MessageLookupByLibrary.simpleMessage(
            "Please enter your email adress to reset your password"),
        "forgotPassword":
            MessageLookupByLibrary.simpleMessage("forgot password?"),
        "getStarted": MessageLookupByLibrary.simpleMessage("Get Started"),
        "haveAcc":
            MessageLookupByLibrary.simpleMessage("Already Have An Account?"),
        "haveNotAcc":
            MessageLookupByLibrary.simpleMessage("Don’t Have An Account?"),
        "homeCategoryEvents": MessageLookupByLibrary.simpleMessage("Events"),
        "homeCategoryHotel": MessageLookupByLibrary.simpleMessage("Hotel"),
        "homeCategoryTransport":
            MessageLookupByLibrary.simpleMessage("Transport"),
        "homeCategoryTrips": MessageLookupByLibrary.simpleMessage("Trips"),
        "homeHeadline":
            MessageLookupByLibrary.simpleMessage("Where Do You Want Go"),
        "homePopularCategories":
            MessageLookupByLibrary.simpleMessage("Popular Categories"),
        "homeSearch": MessageLookupByLibrary.simpleMessage("Search your trip"),
        "homeTopicAll": MessageLookupByLibrary.simpleMessage("All"),
        "homeTopicAmerica": MessageLookupByLibrary.simpleMessage("America"),
        "homeTopicAsia": MessageLookupByLibrary.simpleMessage("Asia"),
        "homeTopicEurope": MessageLookupByLibrary.simpleMessage("Europe"),
        "inputConfirmPassword":
            MessageLookupByLibrary.simpleMessage("Confirm password"),
        "inputEmail": MessageLookupByLibrary.simpleMessage("Enter email"),
        "inputEmailError":
            MessageLookupByLibrary.simpleMessage("Email address incorrect"),
        "inputEmptyError": m0,
        "inputError":
            MessageLookupByLibrary.simpleMessage("Remove invalid characters!"),
        "inputFullName": MessageLookupByLibrary.simpleMessage("Full Name"),
        "inputPassConfirmError":
            MessageLookupByLibrary.simpleMessage("Passwords do not match"),
        "inputPassword": MessageLookupByLibrary.simpleMessage("Password"),
        "inputPhone":
            MessageLookupByLibrary.simpleMessage("Enter your phone number"),
        "logIn": MessageLookupByLibrary.simpleMessage("Log In"),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "more": MessageLookupByLibrary.simpleMessage("more"),
        "next": MessageLookupByLibrary.simpleMessage("Next"),
        "onBoardText1": MessageLookupByLibrary.simpleMessage(
            "Discover the places for your trip in the world and feel great."),
        "onBoardText2": MessageLookupByLibrary.simpleMessage(
            "Select a place for your trip easily and know the exact cost of the tour."),
        "onBoardText3": MessageLookupByLibrary.simpleMessage(
            "Finally, get ready for the tour and go to your desire destination."),
        "onBoardTitle1":
            MessageLookupByLibrary.simpleMessage("Explore Destinations"),
        "onBoardTitle2":
            MessageLookupByLibrary.simpleMessage("Choose a Destination"),
        "onBoardTitle3":
            MessageLookupByLibrary.simpleMessage("Fly to Destination"),
        "or": MessageLookupByLibrary.simpleMessage("OR"),
        "payment": MessageLookupByLibrary.simpleMessage("Payment"),
        "paymentAddNewCard":
            MessageLookupByLibrary.simpleMessage("+ Add new card"),
        "paymentEconomy": MessageLookupByLibrary.simpleMessage("Economy room"),
        "paymentFor": MessageLookupByLibrary.simpleMessage("For"),
        "paymentGuests": MessageLookupByLibrary.simpleMessage("Guests"),
        "paymentSpecialRequest":
            MessageLookupByLibrary.simpleMessage("Special Request"),
        "paymentSuperiorSuite":
            MessageLookupByLibrary.simpleMessage(" Superior Suite"),
        "paymentTotal": MessageLookupByLibrary.simpleMessage("Total"),
        "paymentsPaymentMethod":
            MessageLookupByLibrary.simpleMessage("Payment Method"),
        "regCreateSuccess":
            MessageLookupByLibrary.simpleMessage("Account Ceated Succesfully"),
        "regNotCode":
            MessageLookupByLibrary.simpleMessage("Didn’t Receive a code? "),
        "regResendCode": MessageLookupByLibrary.simpleMessage("Resend Code"),
        "regSignUp": MessageLookupByLibrary.simpleMessage("Sign Up"),
        "regStart": MessageLookupByLibrary.simpleMessage("Get Started"),
        "regTextPhoneNum": MessageLookupByLibrary.simpleMessage(
            "Please enter your phone number, so we can verify you."),
        "regVerifyCodeText": MessageLookupByLibrary.simpleMessage(
            "Check your Sms Inbox, we have sent you the code at"),
        "regVerifyCodeTitle":
            MessageLookupByLibrary.simpleMessage("Verify Code"),
        "register": MessageLookupByLibrary.simpleMessage("Register"),
        "scrhHotels": MessageLookupByLibrary.simpleMessage("City\\Hotels"),
        "scrhResultPerNight":
            MessageLookupByLibrary.simpleMessage("/ Per Night"),
        "srKingBed": MessageLookupByLibrary.simpleMessage("King bed"),
        "srQueenBed": MessageLookupByLibrary.simpleMessage("Queen bed"),
        "srTwinBeds": MessageLookupByLibrary.simpleMessage("Twin beds"),
        "srchAdults": MessageLookupByLibrary.simpleMessage("Adults"),
        "srchArrivalDate": MessageLookupByLibrary.simpleMessage("Arrival date"),
        "srchCheckIn": MessageLookupByLibrary.simpleMessage("Check-In"),
        "srchCheckOut": MessageLookupByLibrary.simpleMessage("Check-out"),
        "srchChildren": MessageLookupByLibrary.simpleMessage("Children"),
        "srchDepartureDate":
            MessageLookupByLibrary.simpleMessage("Departure date"),
        "srchDetails": MessageLookupByLibrary.simpleMessage("Guest Details"),
        "srchHeadline": MessageLookupByLibrary.simpleMessage("Search"),
        "srchHotelTextFieldName":
            MessageLookupByLibrary.simpleMessage("City / Hotels"),
        "srchInfants": MessageLookupByLibrary.simpleMessage("Infants"),
        "srchPassengerDetail":
            MessageLookupByLibrary.simpleMessage("Passenger details"),
        "srchResultsChipFilters":
            MessageLookupByLibrary.simpleMessage("Filters"),
        "srchResultsChipSorts": MessageLookupByLibrary.simpleMessage("Sorts"),
        "srchResultsReviews": MessageLookupByLibrary.simpleMessage("Reviews"),
        "srchRoom": MessageLookupByLibrary.simpleMessage("Room"),
        "srchTransport": MessageLookupByLibrary.simpleMessage("Transport"),
        "srchTripDepature":
            MessageLookupByLibrary.simpleMessage("Point of departure"),
        "srchtTripDestination":
            MessageLookupByLibrary.simpleMessage("Destination"),
        "trips": MessageLookupByLibrary.simpleMessage("Trips"),
        "weatherCloudy": MessageLookupByLibrary.simpleMessage("Cloudy"),
        "weatherRainy": MessageLookupByLibrary.simpleMessage("Rainy"),
        "weatherSunny": MessageLookupByLibrary.simpleMessage("Sunny"),
        "weeks": MessageLookupByLibrary.simpleMessage("Weeks")
      };
}
