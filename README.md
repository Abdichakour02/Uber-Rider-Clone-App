# Uber Clone App

This is a Flutter-based Uber Clone application for riders and drivers. It provides key features of a ride-hailing app, including booking rides, tracking driver location, and an earnings dashboard for drivers.

## Features

- **User Registration and Login**: Secure user authentication for both riders and drivers.
- **Real-time Map Integration**: Interactive map to show driver location and routes.
- **Ride Booking**: Book rides with estimated fare and destination details.
- **Driver Earnings Page**: View earnings, trips, and ratings for drivers.
- **Profile Management**: Manage personal details such as name, email, and car information.
- **Ratings and Reviews**: Rate rides and view ratings for drivers.
- **Light and Dark Mode**: Switch between light and dark themes.

---

## Screenshots

> Include screenshots of different screens like the home page, booking page, driver earnings page, profile, etc.

### App Drawer Screen
![App drawer Screen](/screenshots/appdrawer.png) <!-- Replace # with the path to the image in your repo -->

### Registeration Screen
![Registeration Screen](/screenshots/registerationpage.png) <!-- Replace # with the path to the image in your repo -->

### Login Screen
![Login Screen](/screenshots/loginpage.png) <!-- Replace # with the path to the image in your repo -->

### Home Screen
![Home Screen](/screenshots/hometabpage.png) <!-- Replace # with the path to the image in your repo -->

### Rating Screen
![Rating Page](/screenshots/ratingstabpage.png)

### Driver Profile Screen
![Driver Profile Screen](/screenshots/profiletabpage.png)

### Earnings Page
![Earnings Page](/screenshots/earningstabpage.png)


---

## Getting Started

Follow these instructions to set up and run the Uber Clone app on your local machine.

### Prerequisites

- Flutter SDK: [Install Flutter](https://flutter.dev/docs/get-started/install)
- Android Studio or Xcode: For running the app on Android or iOS devices.
- Google Maps API Key: [Obtain a Google Maps API Key](https://developers.google.com/maps/gmp-get-started)

### Installation

1. **Clone the repository**:

   ```bash
   git clone https://github.com/yourusername/uber-clone.git
   cd uber-clone

2. **Install dependencies**:
  ```bash
  flutter pub get  
  ```

3. **Run the App**:
  ```bash
flutter run
  ```


## Project Structure
This project uses a structured approach to separate UI, services, and data logic:

lib/
  auth/: Authentication screens and logic.
  pages/: Main app pages like home, profile, and earnings.
  widgets/: Custom widgets like the earnings card and profile details.
  models/: Data models used across the app.
  services/: Services for maps, authentication, etc.

## Contributing
Feel free to submit issues or pull requests to help improve the app. When contributing, please ensure that your changes follow best practices.

## License
This project is open-source and available under the MIT License.


Happy Coding!
