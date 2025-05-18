Absolutely! Here’s your README with emojis added for a friendlier, more engaging look:

````markdown
# 📝 Flutter Todo App

A simple Flutter Todo app featuring task creation, completion tracking, and persistent local storage using Hive. 🚀

---

## ✨ Features

- ➕ Add new tasks via a dialog input box  
- ✅ Mark tasks as completed/uncompleted with a checkbox  
- 🗑️ Delete tasks easily  
- 💾 Persistent local storage using Hive database  
- 🎨 Custom reusable button widget  
- 🌈 Clean and colorful UI with Flutter Material Design  

---

## 📸 Screenshots
![Screenshot_20250519_001446](https://github.com/user-attachments/assets/2766f6f1-55c8-41d8-9737-4bf712736e7f)
![Screenshot_20250519_001507](https://github.com/user-attachments/assets/9217c105-2e7e-4045-91d7-7ce8e4de3062)
![Screenshot_20250519_001446](https://github.com/user-attachments/assets/0d16bba3-d23e-4d12-bdff-c4564fae5c43)


---

## 🚀 Getting Started

### 🔧 Prerequisites

- Flutter SDK (>= 3.0 recommended)  
- Dart SDK  
- Device or emulator to run the app  

### 📥 Installation

1. Clone the repo:

```bash
git clone https://github.com/nathanyakob19/Todoapp-.git
cd Todoapp-
````

2. Fetch dependencies:

```bash
flutter pub get
```

3. Run the app:

```bash
flutter run
```

---

## 🧩 Code Overview

### Main Components

* **home.dart**

  * The main screen UI
  * Handles displaying the todo list, adding tasks, toggling completion, and deleting tasks

* **database.dart**

  * Handles Hive database initialization and CRUD operations
  * Stores the todo list persistently under the key `"TODOLIST"`

* **dialog.dart**

  * Custom dialog box with a `TextField` and Save/Cancel buttons
  * Used for adding new tasks

* **button.dart**

  * Custom reusable button widget with consistent styling

### 🔍 How It Works

* The app initializes Hive and loads saved tasks on startup (`home.dart`).
* When adding a new task, a dialog box (`dialog.dart`) appears with a text input and buttons.
* Tasks are stored as a list of `[taskName, isCompleted]` pairs in Hive.
* Checking/unchecking a task updates its completion status and saves to the database.
* Deleting a task removes it from the list and updates the database.

---

## 📦 Dependencies and Setup

This Flutter Todo app uses the following key packages:

* 🧰 **flutter**: The Flutter SDK for app development
* 🗄️ **hive**: Lightweight and fast key-value database for local storage
* 🐦 **hive\_flutter**: Flutter extensions for Hive initialization and integration
* 🔄 **flutter\_slidable**: Swipeable list items for easy task deletion
* 🌐 **universal\_html**: Utilities for HTML (used if targeting web or specific features)
* 🍎 **cupertino\_icons**: iOS style icons

### 👩‍💻 Developer dependencies:

* 🔧 **hive\_generator** and **build\_runner**: For generating Hive type adapters (optional, needed only if you use Hive custom types)
* 🧹 **flutter\_lints**: Provides recommended linting rules for clean, consistent code

### ⚙️ Adding dependencies

Ensure your `pubspec.yaml` includes:

```yaml
dependencies:
  flutter:
    sdk: flutter
  hive: ^2.2.3
  hive_flutter: ^1.1.0
  flutter_slidable: ^3.0.0
  universal_html: ^2.2.3
  cupertino_icons: ^1.0.8

dev_dependencies:
  flutter_test:
    sdk: flutter
  hive_generator: ^1.1.3
  build_runner: ^2.1.11
  flutter_lints: ^5.0.0
```

After editing `pubspec.yaml`, run:

```bash
flutter pub get
```

---

## 🗂️ Folder Structure

```
lib/
├── data/
│   └── database.dart        # Hive database handler
├── util/
│   ├── dialog.dart          # Add task dialog widget
│   └── button.dart          # Custom button widget
└── home.dart                # Main app UI and logic
```

---

## 🤝 Contribution

Feel free to fork and submit pull requests or raise issues for improvements! 🙌

---

## 📄 License

MIT License

---

`
