# Personal Task Manager - Flutter Application

## 📱 Application Overview

A simple, elegant task manager built with Flutter for managing personal tasks without any backend or database.

## ✨ Features

- ✅ Add new tasks with title, description, and priority
- ✅ View all tasks in a clean list
- ✅ Mark tasks as completed/incomplete
- ✅ Delete tasks with confirmation
- ✅ View task details
- ✅ Priority indicators (High/Medium/Low)
- ✅ Snackbar notifications for user actions

## 📸 Screenshots

### Splash Screen

![Splash Screen](screenshots/splash.png)

### Home Screen (Empty)

![Home Screen Empty](screenshots/Home_Screen.png)

### Home Screen (With Tasks)

![Home Screen](screenshots/Home Screen after task added.png)

### Add Task Screen

![Add Task](screenshots/Add New Task.png)

### Task Details Screen

![Task Details](screenshots/Add New Task_2.png)

## 🛠️ Technologies Used

- **Flutter**: UI Framework
- **Dart**: Programming Language
- **Material Design**: UI Components
- **StatefulWidget**: State Management

## 🚀 Getting Started

### Prerequisites

- Flutter SDK installed
- Android Studio/VSCode with Flutter extension
- Git

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/task-manager.git
   cd task-manager
   ```

## 2.Install dependencies:

flutter pub get

## 3. Run the application:

## Project Structure

            flutter run
    ##task_manager/
    ├── lib/
    │   ├── main.dart
    │   ├── screens/
    │   │   ├── splash_screen.dart
    │   │   ├── home_screen.dart
    │   │   ├── add_task_screen.dart
    │   │   └── task_detail_screen.dart
    │   ├── models/
    │   │   └── task.dart
    │   ├── widgets/
    │   │   └── task_card.dart
    │   └── utils/
    │       └── constants.dart
    └── assets/
        └── screenshots/

## 🎯 Key Implementation Points

State Management

    Uses StatefulWidget and setState() for state management

    Tasks are stored in memory during runtime

    No persistent storage (as per assignment requirements)

Navigation

    Uses Flutter's built-in Navigator class

    Push/pop navigation between screens

    Data passing between screens

UI Components

    Scaffold with AppBar

    ListView for task listing

    Card for task items

    FloatingActionButton for adding tasks

    Dialog for delete confirmation

    Snackbar for notifications

📊 Assessment Criteria Coverage

    User Interface Design (25%):

        Clean, intuitive Material Design

        Responsive layout

        Consistent color scheme

        Proper spacing and typography

    Navigation and State Management (25%):

        Proper screen navigation flow

        Effective use of setState()

        Task state persistence during runtime

    Functionality (20%):

        All required features implemented

        Form validation

        User feedback mechanisms

    Code Quality (15%):

        Clean, commented code

        Proper file organization

        Follows Dart conventions

    Documentation and Git Usage (15%):

        Comprehensive README

        Screenshots included

        Proper Git repository structure

⚠️ Important Notes

    No backend or database used (as per requirements)

    All data is stored in memory (lost on app close)

    No authentication required

    Simple, beginner-friendly implementation

