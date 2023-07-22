# Cruv test

A seat finder mobile app built in Flutter.

## Packages used
1. Provider: For state management purposes.

## Project Overview
1. screens
   This directory contains files for screens.

2. provider
   This directory contains files for provider and state management codes.

3. constants
   This directory contains files for values that remain constant throughout the codebase.
     a. size.dart : Contains Dimens class for constant dimension values.
     b. components.dart : Contains Components class which contains reusable components.
     c. strings.dart : Contains constant string values used throughout the app.

## User flow
  1. Being a single-screen mobile app, the user is displayed a single screen with the title 'Seat Finder' at the top. Below lies a search bar, which allows the user to search for
     their screen. Below lies a grid of all seats available.

  2. On tapping the search bar, the find button appears. If the seat is found, a snack bar appears with a 'seat found' confirmation message. The found seat is highlighted in
     all the seats available.

  3. If the seat is not found, a snack bar appears with a 'seat not found' message.

  4. If user tries to find a seat with empty text in the search bar, a snack bar appears with 'seat not available text'.

## Working
  1. A grid view builder is used to render Containers as seats on the screen. Grid view is built with List<int> seats in the seatProvider.
  2. Search bar is a text field with an assigned controller.
  3. As the controller.text.isNotEmpty is true, seatProvider.seatStatus( ) is called. This function is fed with the seat number, and a context.
  4. The seatStatus( ) function checks for the availability of seats in the List<int> seats and renders a snack bar with the context provided.
  5. The seat variable is set to the available seat integer from the List<int> seats. The consumer set in the scaffold, listens to changes in the seatProvider.seat variable.
  6. If the seatProvider.seat variable matches the index of the container rendered in the grid view, the color and border color of the container changes. Thus highlighting
     the seat found.

## Working preview

https://github.com/prithviraj2002/cruv_test/assets/82358330/2808c831-2d6b-4bc8-91ed-cde5a752ec5c

