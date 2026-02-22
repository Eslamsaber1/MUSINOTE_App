# 🎵 MusiNote

A feature-rich Flutter music learning app that helps users discover music, practice instruments, and track their listening journey — all wrapped in a beautiful purple-gradient UI.

---

## 📱 Screenshots & Features

### 🏠 Home Screen
Browse featured music, recently played songs, and genre categories (Chill Vibes, Jazz, Rock, Metal, Classic, and more). A persistent mini-player lets you control playback from anywhere.

### 🔍 Search
Search songs, artists, and albums. Filter by instrument type or explore curated playlists like *Electronic Beats*, *Festival Hits 2025*, *Jazz Essentials*, and *Rock Classics*.

### 📚 Library
View and manage your playlists — Liked Songs, Chill Piano, Guitar Music, Rock Classics, Jazz Ways, and Electronic Beats — with a sleek sweep-gradient thumbnail for each.

### ❤️ Liked Songs
A dedicated view listing your saved tracks with artist name, date added, and album artwork.

### 🎸 Instrument Selector
Browse available instruments (Piano, Guitar, Violin, Saxophone) with lesson counts and difficulty levels. Tap *Start Now* to begin learning.

### 🎤 Artist Profile
Explore artist pages with a hero image, monthly listener count, follower/following/song stats, a bio section, and a list of popular songs. Follow or Shuffle Play directly from the profile.

### 🎧 Player Screen
Full-featured music player with album art, progress bar, playback controls (shuffle, skip, pause, like), and quick access to **Notes** and **Practice Mode**.

### 🎼 Song Notes
View scrollable sheet music images synced to the current song, with playback controls and a queue indicator.

### 🥁 Practice Mode
A focused learning environment featuring:
- **Playback Speed** slider (25% – 100%)
- **Loop Selection** for repeating song sections
- **Metronome** with BPM display
- **Display Options** toggles (Show Note Hints, Show Chords)

### 🎚️ Audio Controls
Fine-tune your listening experience with a 5-band equalizer (Bass, Low Mid, Mid, High Mid, Treble) and a metronome section.

### 📊 Stats
Track your music habits with weekly listening time, songs played, unique artists, liked songs, a line chart of daily minutes, and a genre distribution breakdown.

### 🔐 Authentication
- **Start Screen** – App landing page with journey cards and sign-in/sign-up options
- **Register** – Create an account with name, email, phone, and password
- **Login** – Sign in with email/password or via Google, Facebook, or Phone
- **Forgot Password** – Account recovery via OTP email flow
- **Password Change** – Secure password reset

### ⚙️ Settings / Logout
A settings card showing user info with options to log out or return home.

---

## 🗂️ Project Structure

```
lib/
├── core/
│   ├── utils/
│   │   ├── app_colors.dart          # All gradients and color constants
│   │   ├── app_text_styles.dart     # Shared text styles
│   │   └── on_generate_routes.dart  # Named route configuration
│   └── widgets/
│       ├── build_button.dart
│       ├── build_search_text_field.dart
│       ├── build_search_instrument_text_field.dart
│       ├── custom_profile_container.dart
│       ├── gradient_scaffold.dart
│       ├── note_section_app_bar.dart
│       ├── play_back_controlls.dart
│       └── song_info_section.dart
│
└── features/
    ├── authentication/              # Start, Login, Register, Forgot Password, Change Password
    ├── home/                        # Home screen, mini player, song cards, bottom nav
    ├── search/                      # Search view, recent searches, playlist grid
    ├── library/                     # Library view, playlist items, filter chips
    ├── liked_songs/                 # Liked songs list view
    ├── artist_profile/              # Artist hero, stats, popular songs, about section
    ├── play song/                   # Full player screen, album art, controls, progress bar
    ├── song_notes/                  # Sheet music notes viewer
    ├── practice_mode/               # Speed, loop, metronome, display options
    ├── audio_controls/              # EQ sliders, metronome section
    ├── instrument/                  # Instrument picker cards
    ├── stats/                       # Listening stats, charts, genre distribution
    └── logout/                      # Logout confirmation card
```

---

## 🚀 Getting Started

### Prerequisites

- Flutter SDK `>=3.0.0`
- Dart SDK `>=3.0.0`
- Android Studio / Xcode (for device/emulator)

### Installation

```bash
# Clone the repository
git clone https://github.com/Eslamsaber1/musinote.git
cd musinote

# Install dependencies
flutter pub get

# Run the app
flutter run
```

---

## 📦 Dependencies

| Package | Purpose |
|---|---|
| `flutter_svg` | Render SVG icons throughout the app |
| `fl_chart` | Line chart on the Stats screen |
| `font_awesome_flutter` | Social login icons (Google, Facebook, Phone) |

> See `pubspec.yaml` for the full dependency list and version constraints.

---

## 🎨 Design System

All colors and gradients are centralized in `AppColors` and text styles in `AppTextStyles`.

**Primary Colors**
- Primary Purple: `#602F94`
- Secondary Purple: `#9C27B0`
- Light Gray: `#999999`
- Gray: `#D9D9D9`

**Key Gradients**
- `backgroundGradient1` — Dark purple top-right to gray bottom-left (used across most feature screens)
- `linearGradient2` — Deep purple to gray (Practice Mode, Audio Controls)
- `followButtonGradient` — Dark purple to magenta (Follow / filter buttons)
- `likedSongsGradient` — Sweep gradient white → purple → red (Liked Songs thumbnail)

---

## 🗺️ Navigation

All routes are registered in `on_generate_routes.dart` using named routes. Navigation uses `Navigator.pushNamed` and `Navigator.pushNamedAndRemoveUntil` for auth flows.

| Screen | Route |
|---|---|
| Start Screen | `/start_screen` |
| Register | `/register_screen` |
| Login | `/login_screen` |
| Forgot Password | `/forgot_password_screen` |
| Password Change | `/password_change_screen` |
| Music Selection | `/music_selection_screen` |
| Home | `/home_screen` |
| Search | `/search` |
| Library | `/library` |
| Liked Songs | `/liked-songs` |
| Artist Profile | `/artist-profile` |
| Player | `/player_screen` |
| Song Notes | `/song-notes` |
| Practice Mode | `/practice-mode` |
| Audio Controls | `/audio-controls` |
| Instrument | `/instrument` |
| Stats | `/stats_screen` |
| Logout | `/logout` |

---

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch: `git checkout -b feature/your-feature`
3. Commit your changes: `git commit -m 'Add your feature'`
4. Push to the branch: `git push origin feature/your-feature`
5. Open a Pull Request

---

## 📄 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
