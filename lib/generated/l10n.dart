// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Account`
  String get account {
    return Intl.message(
      'Account',
      name: 'account',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get accountAddress {
    return Intl.message(
      'Address',
      name: 'accountAddress',
      desc: '',
      args: [],
    );
  }

  /// `Location`
  String get accountLocation {
    return Intl.message(
      'Location',
      name: 'accountLocation',
      desc: '',
      args: [],
    );
  }

  /// `Preferences`
  String get accountPreferences {
    return Intl.message(
      'Preferences',
      name: 'accountPreferences',
      desc: '',
      args: [],
    );
  }

  /// `Save Changes`
  String get accountSaveChanges {
    return Intl.message(
      'Save Changes',
      name: 'accountSaveChanges',
      desc: '',
      args: [],
    );
  }

  /// `Account Security`
  String get accountSecurity {
    return Intl.message(
      'Account Security',
      name: 'accountSecurity',
      desc: '',
      args: [],
    );
  }

  /// `CVC`
  String get addCardCVC {
    return Intl.message(
      'CVC',
      name: 'addCardCVC',
      desc: '',
      args: [],
    );
  }

  /// `Expiration Date`
  String get addCardExpirationDate {
    return Intl.message(
      'Expiration Date',
      name: 'addCardExpirationDate',
      desc: '',
      args: [],
    );
  }

  /// `Card Holder`
  String get addCardHolder {
    return Intl.message(
      'Card Holder',
      name: 'addCardHolder',
      desc: '',
      args: [],
    );
  }

  /// `Enter card holder name`
  String get addCardInputCardHolderName {
    return Intl.message(
      'Enter card holder name',
      name: 'addCardInputCardHolderName',
      desc: '',
      args: [],
    );
  }

  /// `Enter Card Number`
  String get addCardInputCardNumber {
    return Intl.message(
      'Enter Card Number',
      name: 'addCardInputCardNumber',
      desc: '',
      args: [],
    );
  }

  /// `Card Number`
  String get addCardText {
    return Intl.message(
      'Card Number',
      name: 'addCardText',
      desc: '',
      args: [],
    );
  }

  /// `Add New Card`
  String get addCardTitle {
    return Intl.message(
      'Add New Card',
      name: 'addCardTitle',
      desc: '',
      args: [],
    );
  }

  /// `Mark as default card`
  String get addCardTogle {
    return Intl.message(
      'Mark as default card',
      name: 'addCardTogle',
      desc: '',
      args: [],
    );
  }

  /// `Gym`
  String get bookIconGym {
    return Intl.message(
      'Gym',
      name: 'bookIconGym',
      desc: '',
      args: [],
    );
  }

  /// `Laundry`
  String get bookIconLaundry {
    return Intl.message(
      'Laundry',
      name: 'bookIconLaundry',
      desc: '',
      args: [],
    );
  }

  /// `Mini Bar`
  String get bookIconMiniBar {
    return Intl.message(
      'Mini Bar',
      name: 'bookIconMiniBar',
      desc: '',
      args: [],
    );
  }

  /// `Parking`
  String get bookIconParking {
    return Intl.message(
      'Parking',
      name: 'bookIconParking',
      desc: '',
      args: [],
    );
  }

  /// `Wifi`
  String get bookIconWifi {
    return Intl.message(
      'Wifi',
      name: 'bookIconWifi',
      desc: '',
      args: [],
    );
  }

  /// `Book Now`
  String get bookNow {
    return Intl.message(
      'Book Now',
      name: 'bookNow',
      desc: '',
      args: [],
    );
  }

  /// `Our Facitilities`
  String get bookOurFacitilites {
    return Intl.message(
      'Our Facitilities',
      name: 'bookOurFacitilites',
      desc: '',
      args: [],
    );
  }

  /// `Costs`
  String get bookTabCosts {
    return Intl.message(
      'Costs',
      name: 'bookTabCosts',
      desc: '',
      args: [],
    );
  }

  /// `Details`
  String get bookTabDetails {
    return Intl.message(
      'Details',
      name: 'bookTabDetails',
      desc: '',
      args: [],
    );
  }

  /// `Overview`
  String get bookTabOverview {
    return Intl.message(
      'Overview',
      name: 'bookTabOverview',
      desc: '',
      args: [],
    );
  }

  /// `Reviews`
  String get bookTabReviews {
    return Intl.message(
      'Reviews',
      name: 'bookTabReviews',
      desc: '',
      args: [],
    );
  }

  /// `Apply`
  String get calendarApply {
    return Intl.message(
      'Apply',
      name: 'calendarApply',
      desc: '',
      args: [],
    );
  }

  /// `Clear`
  String get calendarClear {
    return Intl.message(
      'Clear',
      name: 'calendarClear',
      desc: '',
      args: [],
    );
  }

  /// `Business`
  String get classBuisnes {
    return Intl.message(
      'Business',
      name: 'classBuisnes',
      desc: '',
      args: [],
    );
  }

  /// `Economy`
  String get classEconomy {
    return Intl.message(
      'Economy',
      name: 'classEconomy',
      desc: '',
      args: [],
    );
  }

  /// `Lux`
  String get classLux {
    return Intl.message(
      'Lux',
      name: 'classLux',
      desc: '',
      args: [],
    );
  }

  /// `Congrats!`
  String get congrats {
    return Intl.message(
      'Congrats!',
      name: 'congrats',
      desc: '',
      args: [],
    );
  }

  /// `Dyas`
  String get days {
    return Intl.message(
      'Dyas',
      name: 'days',
      desc: '',
      args: [],
    );
  }

  /// `Distance`
  String get distance {
    return Intl.message(
      'Distance',
      name: 'distance',
      desc: '',
      args: [],
    );
  }

  /// `Duration`
  String get duration {
    return Intl.message(
      'Duration',
      name: 'duration',
      desc: '',
      args: [],
    );
  }

  /// `* Estimated Cost`
  String get emCost {
    return Intl.message(
      '* Estimated Cost',
      name: 'emCost',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get filterAll {
    return Intl.message(
      'All',
      name: 'filterAll',
      desc: '',
      args: [],
    );
  }

  /// `Apartment`
  String get filterApartment {
    return Intl.message(
      'Apartment',
      name: 'filterApartment',
      desc: '',
      args: [],
    );
  }

  /// `Apply`
  String get filterApply {
    return Intl.message(
      'Apply',
      name: 'filterApply',
      desc: '',
      args: [],
    );
  }

  /// `Homestay`
  String get filterHomestay {
    return Intl.message(
      'Homestay',
      name: 'filterHomestay',
      desc: '',
      args: [],
    );
  }

  /// `Hotel`
  String get filterHotel {
    return Intl.message(
      'Hotel',
      name: 'filterHotel',
      desc: '',
      args: [],
    );
  }

  /// `Price Range`
  String get filterPriceRange {
    return Intl.message(
      'Price Range',
      name: 'filterPriceRange',
      desc: '',
      args: [],
    );
  }

  /// `Resort`
  String get filterResort {
    return Intl.message(
      'Resort',
      name: 'filterResort',
      desc: '',
      args: [],
    );
  }

  /// `Star Rating`
  String get filterStarRating {
    return Intl.message(
      'Star Rating',
      name: 'filterStarRating',
      desc: '',
      args: [],
    );
  }

  /// `Type of Accommodation`
  String get filterTypeOfAccommodation {
    return Intl.message(
      'Type of Accommodation',
      name: 'filterTypeOfAccommodation',
      desc: '',
      args: [],
    );
  }

  /// `Villa`
  String get filterVilla {
    return Intl.message(
      'Villa',
      name: 'filterVilla',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get forgotPassButtonSend {
    return Intl.message(
      'Send',
      name: 'forgotPassButtonSend',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your email adress to reset your password`
  String get forgotPassText {
    return Intl.message(
      'Please enter your email adress to reset your password',
      name: 'forgotPassText',
      desc: '',
      args: [],
    );
  }

  /// `forgot password?`
  String get forgotPassword {
    return Intl.message(
      'forgot password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get getStarted {
    return Intl.message(
      'Get Started',
      name: 'getStarted',
      desc: '',
      args: [],
    );
  }

  /// `Already Have An Account?`
  String get haveAcc {
    return Intl.message(
      'Already Have An Account?',
      name: 'haveAcc',
      desc: '',
      args: [],
    );
  }

  /// `Don’t Have An Account?`
  String get haveNotAcc {
    return Intl.message(
      'Don’t Have An Account?',
      name: 'haveNotAcc',
      desc: '',
      args: [],
    );
  }

  /// `Events`
  String get homeCategoryEvents {
    return Intl.message(
      'Events',
      name: 'homeCategoryEvents',
      desc: '',
      args: [],
    );
  }

  /// `Hotel`
  String get homeCategoryHotel {
    return Intl.message(
      'Hotel',
      name: 'homeCategoryHotel',
      desc: '',
      args: [],
    );
  }

  /// `Transport`
  String get homeCategoryTransport {
    return Intl.message(
      'Transport',
      name: 'homeCategoryTransport',
      desc: '',
      args: [],
    );
  }

  /// `Trips`
  String get homeCategoryTrips {
    return Intl.message(
      'Trips',
      name: 'homeCategoryTrips',
      desc: '',
      args: [],
    );
  }

  /// `Where Do You Want Go`
  String get homeHeadline {
    return Intl.message(
      'Where Do You Want Go',
      name: 'homeHeadline',
      desc: '',
      args: [],
    );
  }

  /// `Popular Categories`
  String get homePopularCategories {
    return Intl.message(
      'Popular Categories',
      name: 'homePopularCategories',
      desc: '',
      args: [],
    );
  }

  /// `Search your trip`
  String get homeSearch {
    return Intl.message(
      'Search your trip',
      name: 'homeSearch',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get homeTopicAll {
    return Intl.message(
      'All',
      name: 'homeTopicAll',
      desc: '',
      args: [],
    );
  }

  /// `America`
  String get homeTopicAmerica {
    return Intl.message(
      'America',
      name: 'homeTopicAmerica',
      desc: '',
      args: [],
    );
  }

  /// `Asia`
  String get homeTopicAsia {
    return Intl.message(
      'Asia',
      name: 'homeTopicAsia',
      desc: '',
      args: [],
    );
  }

  /// `Europe`
  String get homeTopicEurope {
    return Intl.message(
      'Europe',
      name: 'homeTopicEurope',
      desc: '',
      args: [],
    );
  }

  /// `Confirm password`
  String get inputConfirmPassword {
    return Intl.message(
      'Confirm password',
      name: 'inputConfirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Enter email`
  String get inputEmail {
    return Intl.message(
      'Enter email',
      name: 'inputEmail',
      desc: '',
      args: [],
    );
  }

  /// `Email address incorrect`
  String get inputEmailError {
    return Intl.message(
      'Email address incorrect',
      name: 'inputEmailError',
      desc: '',
      args: [],
    );
  }

  /// `{count, plural,few{Please enter at least 4 characters} other{Please enter at least {count} characters}}`
  String inputEmptyError(num count) {
    return Intl.plural(
      count,
      few: 'Please enter at least 4 characters',
      other: 'Please enter at least $count characters',
      name: 'inputEmptyError',
      desc: '',
      args: [count],
    );
  }

  /// `Remove invalid characters!`
  String get inputError {
    return Intl.message(
      'Remove invalid characters!',
      name: 'inputError',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get inputFullName {
    return Intl.message(
      'Full Name',
      name: 'inputFullName',
      desc: '',
      args: [],
    );
  }

  /// `Passwords do not match`
  String get inputPassConfirmError {
    return Intl.message(
      'Passwords do not match',
      name: 'inputPassConfirmError',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get inputPassword {
    return Intl.message(
      'Password',
      name: 'inputPassword',
      desc: '',
      args: [],
    );
  }

  /// `Enter your phone number`
  String get inputPhone {
    return Intl.message(
      'Enter your phone number',
      name: 'inputPhone',
      desc: '',
      args: [],
    );
  }

  /// `Log In`
  String get logIn {
    return Intl.message(
      'Log In',
      name: 'logIn',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `more`
  String get more {
    return Intl.message(
      'more',
      name: 'more',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Discover the places for your trip in the world and feel great.`
  String get onBoardText1 {
    return Intl.message(
      'Discover the places for your trip in the world and feel great.',
      name: 'onBoardText1',
      desc: '',
      args: [],
    );
  }

  /// `Select a place for your trip easily and know the exact cost of the tour.`
  String get onBoardText2 {
    return Intl.message(
      'Select a place for your trip easily and know the exact cost of the tour.',
      name: 'onBoardText2',
      desc: '',
      args: [],
    );
  }

  /// `Finally, get ready for the tour and go to your desire destination.`
  String get onBoardText3 {
    return Intl.message(
      'Finally, get ready for the tour and go to your desire destination.',
      name: 'onBoardText3',
      desc: '',
      args: [],
    );
  }

  /// `Explore Destinations`
  String get onBoardTitle1 {
    return Intl.message(
      'Explore Destinations',
      name: 'onBoardTitle1',
      desc: '',
      args: [],
    );
  }

  /// `Choose a Destination`
  String get onBoardTitle2 {
    return Intl.message(
      'Choose a Destination',
      name: 'onBoardTitle2',
      desc: '',
      args: [],
    );
  }

  /// `Fly to Destination`
  String get onBoardTitle3 {
    return Intl.message(
      'Fly to Destination',
      name: 'onBoardTitle3',
      desc: '',
      args: [],
    );
  }

  /// `OR`
  String get or {
    return Intl.message(
      'OR',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `Payment`
  String get payment {
    return Intl.message(
      'Payment',
      name: 'payment',
      desc: '',
      args: [],
    );
  }

  /// `+ Add new card`
  String get paymentAddNewCard {
    return Intl.message(
      '+ Add new card',
      name: 'paymentAddNewCard',
      desc: '',
      args: [],
    );
  }

  /// `Economy room`
  String get paymentEconomy {
    return Intl.message(
      'Economy room',
      name: 'paymentEconomy',
      desc: '',
      args: [],
    );
  }

  /// `For`
  String get paymentFor {
    return Intl.message(
      'For',
      name: 'paymentFor',
      desc: '',
      args: [],
    );
  }

  /// `Guests`
  String get paymentGuests {
    return Intl.message(
      'Guests',
      name: 'paymentGuests',
      desc: '',
      args: [],
    );
  }

  /// `Special Request`
  String get paymentSpecialRequest {
    return Intl.message(
      'Special Request',
      name: 'paymentSpecialRequest',
      desc: '',
      args: [],
    );
  }

  /// ` Superior Suite`
  String get paymentSuperiorSuite {
    return Intl.message(
      ' Superior Suite',
      name: 'paymentSuperiorSuite',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get paymentTotal {
    return Intl.message(
      'Total',
      name: 'paymentTotal',
      desc: '',
      args: [],
    );
  }

  /// `Payment Method`
  String get paymentsPaymentMethod {
    return Intl.message(
      'Payment Method',
      name: 'paymentsPaymentMethod',
      desc: '',
      args: [],
    );
  }

  /// `Account Ceated Succesfully`
  String get regCreateSuccess {
    return Intl.message(
      'Account Ceated Succesfully',
      name: 'regCreateSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Didn’t Receive a code? `
  String get regNotCode {
    return Intl.message(
      'Didn’t Receive a code? ',
      name: 'regNotCode',
      desc: '',
      args: [],
    );
  }

  /// `Resend Code`
  String get regResendCode {
    return Intl.message(
      'Resend Code',
      name: 'regResendCode',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get regSignUp {
    return Intl.message(
      'Sign Up',
      name: 'regSignUp',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get regStart {
    return Intl.message(
      'Get Started',
      name: 'regStart',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your phone number, so we can verify you.`
  String get regTextPhoneNum {
    return Intl.message(
      'Please enter your phone number, so we can verify you.',
      name: 'regTextPhoneNum',
      desc: '',
      args: [],
    );
  }

  /// `Check your Sms Inbox, we have sent you the code at`
  String get regVerifyCodeText {
    return Intl.message(
      'Check your Sms Inbox, we have sent you the code at',
      name: 'regVerifyCodeText',
      desc: '',
      args: [],
    );
  }

  /// `Verify Code`
  String get regVerifyCodeTitle {
    return Intl.message(
      'Verify Code',
      name: 'regVerifyCodeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get register {
    return Intl.message(
      'Register',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `City\Hotels`
  String get scrhHotels {
    return Intl.message(
      'City\\Hotels',
      name: 'scrhHotels',
      desc: '',
      args: [],
    );
  }

  /// `/ Per Night`
  String get scrhResultPerNight {
    return Intl.message(
      '/ Per Night',
      name: 'scrhResultPerNight',
      desc: '',
      args: [],
    );
  }

  /// `King bed`
  String get srKingBed {
    return Intl.message(
      'King bed',
      name: 'srKingBed',
      desc: '',
      args: [],
    );
  }

  /// `Queen bed`
  String get srQueenBed {
    return Intl.message(
      'Queen bed',
      name: 'srQueenBed',
      desc: '',
      args: [],
    );
  }

  /// `Twin beds`
  String get srTwinBeds {
    return Intl.message(
      'Twin beds',
      name: 'srTwinBeds',
      desc: '',
      args: [],
    );
  }

  /// `Adults`
  String get srchAdults {
    return Intl.message(
      'Adults',
      name: 'srchAdults',
      desc: '',
      args: [],
    );
  }

  /// `Arrival date`
  String get srchArrivalDate {
    return Intl.message(
      'Arrival date',
      name: 'srchArrivalDate',
      desc: '',
      args: [],
    );
  }

  /// `Check-In`
  String get srchCheckIn {
    return Intl.message(
      'Check-In',
      name: 'srchCheckIn',
      desc: '',
      args: [],
    );
  }

  /// `Check-out`
  String get srchCheckOut {
    return Intl.message(
      'Check-out',
      name: 'srchCheckOut',
      desc: '',
      args: [],
    );
  }

  /// `Children`
  String get srchChildren {
    return Intl.message(
      'Children',
      name: 'srchChildren',
      desc: '',
      args: [],
    );
  }

  /// `Departure date`
  String get srchDepartureDate {
    return Intl.message(
      'Departure date',
      name: 'srchDepartureDate',
      desc: '',
      args: [],
    );
  }

  /// `Guest Details`
  String get srchDetails {
    return Intl.message(
      'Guest Details',
      name: 'srchDetails',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get srchHeadline {
    return Intl.message(
      'Search',
      name: 'srchHeadline',
      desc: '',
      args: [],
    );
  }

  /// `City / Hotels`
  String get srchHotelTextFieldName {
    return Intl.message(
      'City / Hotels',
      name: 'srchHotelTextFieldName',
      desc: '',
      args: [],
    );
  }

  /// `Infants`
  String get srchInfants {
    return Intl.message(
      'Infants',
      name: 'srchInfants',
      desc: '',
      args: [],
    );
  }

  /// `Passenger details`
  String get srchPassengerDetail {
    return Intl.message(
      'Passenger details',
      name: 'srchPassengerDetail',
      desc: '',
      args: [],
    );
  }

  /// `Filters`
  String get srchResultsChipFilters {
    return Intl.message(
      'Filters',
      name: 'srchResultsChipFilters',
      desc: '',
      args: [],
    );
  }

  /// `Sorts`
  String get srchResultsChipSorts {
    return Intl.message(
      'Sorts',
      name: 'srchResultsChipSorts',
      desc: '',
      args: [],
    );
  }

  /// `Reviews`
  String get srchResultsReviews {
    return Intl.message(
      'Reviews',
      name: 'srchResultsReviews',
      desc: '',
      args: [],
    );
  }

  /// `Room`
  String get srchRoom {
    return Intl.message(
      'Room',
      name: 'srchRoom',
      desc: '',
      args: [],
    );
  }

  /// `Transport`
  String get srchTransport {
    return Intl.message(
      'Transport',
      name: 'srchTransport',
      desc: '',
      args: [],
    );
  }

  /// `Point of departure`
  String get srchTripDepature {
    return Intl.message(
      'Point of departure',
      name: 'srchTripDepature',
      desc: '',
      args: [],
    );
  }

  /// `Destination`
  String get srchtTripDestination {
    return Intl.message(
      'Destination',
      name: 'srchtTripDestination',
      desc: '',
      args: [],
    );
  }

  /// `Trips`
  String get trips {
    return Intl.message(
      'Trips',
      name: 'trips',
      desc: '',
      args: [],
    );
  }

  /// `Cloudy`
  String get weatherCloudy {
    return Intl.message(
      'Cloudy',
      name: 'weatherCloudy',
      desc: '',
      args: [],
    );
  }

  /// `Rainy`
  String get weatherRainy {
    return Intl.message(
      'Rainy',
      name: 'weatherRainy',
      desc: '',
      args: [],
    );
  }

  /// `Sunny`
  String get weatherSunny {
    return Intl.message(
      'Sunny',
      name: 'weatherSunny',
      desc: '',
      args: [],
    );
  }

  /// `Weeks`
  String get weeks {
    return Intl.message(
      'Weeks',
      name: 'weeks',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru', countryCode: 'RU'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
