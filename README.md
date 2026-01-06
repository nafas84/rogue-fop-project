# Rogue (Recreation)

This is my **first programming project**, created for the course **FOP (Fundamentals of Programming)**.

The project is implemented in **C** using the **ncurses library** to create a text-based interface.  
It is essentially a **recreation of the classic game Rogue**.

---

## Install Dependencies

### - Fedora
```bash
sudo dnf install gcc make pkg-config \
ncurses ncurses-devel \
SDL2 SDL2-devel \
SDL2_mixer SDL2_mixer-devel
```

### - Ubuntu / Debian
```bash
sudo apt update
sudo apt install build-essential pkg-config \
libncursesw5-dev \
libsdl2-dev \
libsdl2-mixer-dev
```

### - Arch Linux
```bash
sudo pacman -S base-devel pkgconf \
ncurses \
sdl2 \
sdl2_mixer
```

---

## Build

After installing the dependencies, build the project using:

```bash
make
```

This will generate the executable file Rogue.

## Run

To run the game:

```bash
./Rogue
```
