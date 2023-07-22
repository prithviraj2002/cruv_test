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


## Steps to download

### Android Studio

To install a Flutter project from a GitHub repository in Android Studio, follow these steps:

1. **Install Flutter and Dart SDK:**
   - Before you start, make sure you have Flutter and Dart SDK installed on your system. You can download and install them from the official Flutter website: https://flutter.dev/docs/get-started/install

2. **Install Android Studio:**
   - If you don't have Android Studio installed, download and install it from the official website: https://developer.android.com/studio

3. **Configure Flutter in Android Studio:**
   - Launch Android Studio, open "Preferences" (on macOS) or "Settings" (on Windows/Linux).
   - Navigate to "Plugins" and search for "Flutter" in the Marketplace. Install the Flutter plugin and Dart plugin if not already installed.
   - Restart Android Studio to apply the changes.

4. **Clone the GitHub repository:**
   - Open your terminal (or command prompt) and navigate to the folder where you want to clone the repository.
   - Use the following command to clone the repository:
     ```
     git clone <repository_url>
     ```
   - Replace `<repository_url>` with the URL of the GitHub repository you want to clone.

5. **Open the project in Android Studio:**
   - Open Android Studio.
   - From the Welcome Screen, select "Open an existing Android Studio project," or if you already have a project open, go to "File" > "Open" and navigate to the folder where you cloned the repository.

6. **Install Flutter and Dart plugins in the project:**
   - When you open the project for the first time, Android Studio will prompt you to install the Flutter and Dart plugins if they are not already installed. Click "Install" and follow the installation process.

7. **Set up an emulator or connect a physical device:**
   - To run the Flutter app, you'll need an Android emulator or a physical Android device connected to your computer. Follow the instructions in Android Studio to set up an emulator or connect your device.

8. **Get Flutter dependencies:**
   - Once the project is open in Android Studio, navigate to the project directory (usually named "lib") and open the "pubspec.yaml" file.
   - Click on the "Pub get" or "Get dependencies" prompt that should appear at the top of the file or right-click on the file and select "Flutter" > "Pub Get."

9. **Run the app:**
   - After the dependencies are fetched successfully, you should be able to run the Flutter app.
   - Choose the emulator or connected device from the device dropdown in the toolbar.
   - Click on the "Run" button (usually a green play button) in the top toolbar or press Shift + F10 (or Fn + Shift + F10 on macOS) to run the app.

That's it! Android Studio will compile the Flutter project and run the app on the selected emulator or device. Now you can explore and modify the Flutter project within Android Studio.

### Visual Studio Code

Sure! Here are the steps to install a Flutter project from a GitHub repository in Visual Studio Code:

1. **Install Flutter and Dart SDK:**
   - Before you start, make sure you have Flutter and Dart SDK installed on your system. You can download and install them from the official Flutter website: https://flutter.dev/docs/get-started/install

2. **Install Visual Studio Code:**
   - If you don't have Visual Studio Code installed, download and install it from the official website: https://code.visualstudio.com/

3. **Install Flutter and Dart extensions:**
   - Open Visual Studio Code.
   - Go to the Extensions view by clicking on the Extensions icon in the Activity Bar on the side of the window, or use the shortcut Ctrl+Shift+X (Cmd+Shift+X on macOS).
   - Search for "Flutter" in the Extensions marketplace and install the official Flutter extension provided by Dart Code.
   - Search for "Dart" in the Extensions marketplace and install the official Dart extension.

4. **Clone the GitHub repository:**
   - Open your terminal (or command prompt) and navigate to the folder where you want to clone the repository.
   - Use the following command to clone the repository:
     ```
     git clone <repository_url>
     ```
   - Replace `<repository_url>` with the URL of the GitHub repository you want to clone.

5. **Open the project in Visual Studio Code:**
   - Open Visual Studio Code.
   - Go to "File" > "Open Folder" and navigate to the folder where you cloned the repository.
   - Select the folder and click "Open."

6. **Get Flutter dependencies:**
   - Once the project is open in Visual Studio Code, open the integrated terminal by going to "View" > "Terminal" or using the shortcut Ctrl+`.

   - In the terminal, navigate to the project directory (usually named "lib") where the "pubspec.yaml" file is located.
   - Run the following command to get the Flutter dependencies:
     ```
     flutter pub get
     ```

7. **Set up an emulator or connect a physical device:**
   - To run the Flutter app, you'll need an Android emulator or a physical Android device connected to your computer. Follow the instructions in the Flutter documentation to set up an emulator or connect your device.

8. **Run the app:**
   - After the dependencies are fetched successfully, you should be able to run the Flutter app.
   - Click on the "Run and Debug" icon in the Activity Bar on the side of the window, or use the shortcut F5.
   - Choose the emulator or connected device from the device dropdown in the top toolbar.
   - Click on the green play button (usually labeled "Run and Debug") to run the app.

That's it! Visual Studio Code will compile the Flutter project and run the app on the selected emulator or device. Now you can explore and modify the Flutter project within Visual Studio Code.
