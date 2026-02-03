# Fitness App


A comprehensive fitness application built with Flutter. This app provides users with a platform to manage their fitness journey, including workout plans, social interaction, and progress tracking.

## Features

-   **User Authentication:** Secure sign-up and login functionality.
-   **Personalized Onboarding:** Tailors the user experience by collecting information like gender and fitness goals (e.g., Weight Loss, Better Sleep, Nutrition Tracking).
-   **Workout Dashboard:** A home screen displaying workout exercises and training plans.
-   **Detailed Workout Plans:** View detailed schedules for workout plans, including steps, duration, and instructional videos.
-   **Social Integration:**
    -   **Messaging:** A real-time chat feature to connect with other users.
    -   **Profile & Followers:** A user profile page displaying personal exercises, followers, and following statistics.
-   **Notifications:** Keep users updated with relevant notifications.
-   **Customizable Drawer Menu:** Easy navigation to different sections of the app like Home, About, Exercises, and more.

## Technology Stack

-   **Framework:** Flutter
-   **Language:** Dart
-   **UI Packages:**
    -   `google_fonts`: For custom font styling.
    -   `smooth_page_indicator`: For visually appealing page indicators in the onboarding flow.

## Project Structure

The project is structured to maintain a clean and scalable codebase:

```
lib/
├── common/         # Shared constants like colors and image paths
├── fitness_app/    # Main application widget
├── models/         # Data models (e.g., ChatMessage, NotificationItem)
├── screens/        # Top-level screens/pages
├── services/       # Business logic and utility services (e.g., ValidatorService)
├── tabs/           # Widgets for each tab in the main navigation
└── widgets/        # Reusable UI components
```

## Screenshots

| Splash & Auth                                                                                          | Onboarding & Home                                                                                      |
| ------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------ |
| <img src="https://github.com/user-attachments/assets/5379d8b0-03ee-4760-8c59-b85dc6149607" width="250"> | <img src="https://github.com/user-attachments/assets/3a997cb9-2262-43fd-8701-a929e07dffcc" width="250"> |
| <img src="https://github.com/user-attachments/assets/a4a306c6-4746-461f-a38d-ac868d6bf0dd" width="250"> | <img src="https://github.com/user-attachments/assets/5818a00f-d81b-4373-a5b0-b8da80916142" width="250"> |
| <img src="https://github.com/user-attachments/assets/4bf566f9-94dd-4a77-bbee-550b6b34ece2" width="250"> | <img src="https://github.com/user-attachments/assets/727fdedc-0d53-47f9-8dbe-ab608ee422aa" width="250"> |

| Profile & Details                                                                                      | Messaging & Notifications                                                                              |
| ------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------ |
| <img src="https://github.com/user-attachments/assets/58d1dea9-7029-4cab-89d9-fcc5d5a9a578" width="250"> | <img src="https://github.com/user-attachments/assets/f3c097e4-0276-402b-a284-5c0d644c65a1" width="250"> |
| <img src="https://github.com/user-attachments/assets/7505c2db-c5c6-4b95-a51c-63bb530ef708" width="250"> | <img src="https://github.com/user-attachments/assets/7d0f4089-8a53-4dce-8658-42070b3a2af2" width="250"> |
| <img src="https://github.com/user-attachments/assets/d259297c-4b9b-44ee-8169-d85df190e664" width="250"> | <img src="https://github.com/user-attachments/assets/51463f3e-ac47-4b80-92de-bf7cee3833f7" width="250"> |

## Getting Started

To get a local copy up and running, follow these simple steps.

### Prerequisites

-   Flutter SDK: [Installation Guide](https://docs.flutter.dev/get-started/install)
-   Git

### Installation

1.  **Clone the repository:**
    ```sh
    git clone https://github.com/mohamedshabaan223/fitness_app.git
    ```

2.  **Navigate to the project directory:**
    ```sh
    cd fitness_app
    ```

3.  **Install dependencies:**
    ```sh
    flutter pub get
    ```

4.  **Run the application:**
    ```sh
    flutter run
