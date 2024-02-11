# tidbyt-showcase
Content for the Tidbyt device https://tidbyt.com/products/tidbyt
<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://gitea.bitwise.ws/DreamOS/chat-ripper">
    <img src="./tidbyt01.png" alt="Logo" width=300">
  </a>
  <h3 align="center">tidbyt-showcase</h3>
</p>

-----

## Background
I was fortunate enough to be gifted a Tidbyte the other day and started to kick the tires a bit. I quickly realized that creating apps for this little thing is pretty addictive. I started churning animations out to see what they would look like, and each one of them makes me smile every time they appear in rotation. Many of these graphics are not mine and the rights belong to the respective copyright holders. But have fun with them, open a PR if you would like to add to the library, but be respectful of content owners and people's general sensibilities, but most of all have fun.

## Usage

There is a both a make file in the root and a script in the `scripts` directory that will install/remove the entire library on your device. After you run it apps will appear in the moble app and can be managed there. There is no magic here, it is a simple bash script that calls the [pixlet](https://github.com/tidbyt/pixlet) utility to do the work.

1.👥  Clone the repository ( _make sure to clone recursive, there are submodules_ )

```shell
git clone --recursive https://github.com/ScottDillman/tidbyt-showcase.git
```

2. 📝 modify the device values and add your personal token

```bash
cd tidbyt-showcase
cp  ./scripts/env.sample ./scripts/.env
nano ./scripts/.env
```

Add your token and device ID to the .env file you created: (and no that is not a _real_ token 🤦)
```
TOKEN="eyJhbGciOiJFUzI1NiIsImtpZCI6IjY1YzMu_GfP6aM-2DY6aILz5tJKZ-dFhMmUzNzodHRwczovL2FwaS50aWRieXQuY2JjZjljMTQ1MTQyNzk5ODZhMzYyNmQ1Y2QzNTI0N2IiLCJ0eXAiOiJKV1QifQ.eyJhdWQiOiJodHRwczovL2FwaS50aWRieXQuY_GfP6aM-2DY6aILz5tJKZ-dE29tIiwiZXhwIjozMjgzOTY3NTU0LCJpYXQiOjE3MDcxNjc1NTQsImlzcyI6Imh0dHBzOi8vYXBpLnwNWQifQ.mUG-duvz5WhfpqMuh3jCeRpZGJ5dC5jb20iLCJzdWIiOiJzTUZnMkNJdkl0UzJTSXJEZGpJRVN5YmN6aDAzIiwic2NvcGUiOiJkZXZpY2UiLCJkZXZpY2UiOiJvd2xpc2hs"
DEVICE="this-is-my-device-id"
```

3. 🚀 Run the installer

```bash
make install
```

**or**

```bash
./scripts/tb-util install all
```

All images in the ./assets directory will be installed on your Tidbyt. If there are images you are not interested in just remove them or rename them so they don't have the webp extension and they will not be installed.

You can add or remove images from the assets directory and re-run the installer to add them to your Tidbyt. Just be sure they are 64x32 pixel [webp](https://developers.google.com/speed/webp) images, and make sure they are named with only letters,numbers, and hypens. During install hyphens will be replaced with zeros to meet a requirement of Tidbyt apps.

4. 😁 Have fun


Right now this is very bare bones and was about an evening's worth of playing around with the device. I plan to add things here and there to make the process of working with my Tidbyt easier. If you have ideas, suggestions, complaints, praise or want to make contributions just create an issue. Just remember this all for fun..

5. 🗑️ Uninstall

Uninstalling all the images in the ./assets directory is easy with the following command:

```bash
make uninstall
```

**or**

```bash
./tb-util remove all
```

## 🤓 Advanced

You can also use the script directly to install/remove apps based on pattern matching using bash regular expressions.
For example let's say you just want all the logos:

```bash
./tb-util install "^logo.*"
```

or maybe all the _trippy_ apps:

```bash
./tb-util install ".*trippy.*"
```

or get real crazy and install only apps that have 2 and 4 versions 😜:

```bash
./tb-util install ".*[0]{2}[24]$"
```

You can pass scope regular expressions to both the _install_ and _remove_ commands.

There is also the _none_ scope just to maintain symmetry with the _all_ scope which just dumps out a list of currently installed apps to the command line and exits.

**NB:** I do not do any error trapping on API return values from pixlet, so you can ask it to remove apps that are not there, say for instance giving the install command an all scope when you only have one app installed. You will get the following warning:

![WARN](warn001.png)

**This is completely harmless and can be ignored.**

The `mklst.abs` file in the scripts directory can be ignored,it is just a simple [ABS](https://www.abs-lang.org)) script to generate the library section below. Why? because I'm lazy and automate everything I can.

## 👷Todo

- Add more content of course 🥳
- Change remove to only try to remove installed apps ( cleanup )
- Whatever I can think of
- Add a section on the animation file creation process and naming scheme
- Maybe allow favorites?


## Current library of images

#### Abstract
![abstract-color-001](./assets/abstract-color-001.webp)
![abstract-color-002](./assets/abstract-color-002.webp)
![abstract-donut-001](./assets/abstract-donut-001.webp)
![abstract-spin-001](./assets/abstract-spin-001.webp)
![abstract-spin-002](./assets/abstract-spin-002.webp)
![abstract-spin-003](./assets/abstract-spin-003.webp)
![abstract-spin-004](./assets/abstract-spin-004.webp)
![abstract-trippy-001](./assets/abstract-trippy-001.webp)
![abstract-trippy-002](./assets/abstract-trippy-002.webp)
![abstract-trippy-003](./assets/abstract-trippy-003.webp)
![abstract-trippy-004](./assets/abstract-trippy-004.webp)
![abstract-trippy-005](./assets/abstract-trippy-005.webp)
![abstract-trippy-006](./assets/abstract-trippy-006.webp)
![abstract-trippy-007](./assets/abstract-trippy-007.webp)
![abstract-trippy-008](./assets/abstract-trippy-008.webp)
![abstract-trippy-009](./assets/abstract-trippy-009.webp)
![abstract-trippy-010](./assets/abstract-trippy-010.webp)
![abstract-trippy-011](./assets/abstract-trippy-011.webp)
![abstract-trippy-012](./assets/abstract-trippy-012.webp)
![abstract-trippy-013](./assets/abstract-trippy-013.webp)
![abstract-trippy-014](./assets/abstract-trippy-014.webp)
![abstract-trippy-016](./assets/abstract-trippy-016.webp)
![abstract-trippy-017](./assets/abstract-trippy-017.webp)
![abstract-trippy-018](./assets/abstract-trippy-018.webp)
![abstract-trippy-019](./assets/abstract-trippy-019.webp)
![abstract-trippy-020](./assets/abstract-trippy-020.webp)
![abstract-wave-001](./assets/abstract-wave-001.webp)
![abstract-wave-002](./assets/abstract-wave-002.webp)
![abstract-wave-003](./assets/abstract-wave-003.webp)
![abstract-wave-004](./assets/abstract-wave-004.webp)
#### Film
![film-lotr-001](./assets/film-lotr-001.webp)
![film-lotr-002](./assets/film-lotr-002.webp)
#### Games
![games-sonic-001](./assets/games-sonic-001.webp)
#### Logo
![logo-sega-001](./assets/logo-sega-001.webp)
![logo-sega-002](./assets/logo-sega-002.webp)
![logo-wittij-001](./assets/logo-wittij-001.webp)
#### Metalslug
![metalslug-boom-001](./assets/metalslug-boom-001.webp)
![metalslug-mummy-001](./assets/metalslug-mummy-001.webp)
![metalslug-mummy-002](./assets/metalslug-mummy-002.webp)
![metalslug-ufo-001](./assets/metalslug-ufo-001.webp)
#### Misc
![misc-bluefire-001](./assets/misc-bluefire-001.webp)
![misc-coffee-001](./assets/misc-coffee-001.webp)
![misc-coffee-002](./assets/misc-coffee-002.webp)
![misc-duck-001](./assets/misc-duck-001.webp)
![misc-eq-001](./assets/misc-eq-001.webp)
#### Tv
![tv-botp-001](./assets/tv-botp-001.webp)
![tv-python-001](./assets/tv-python-001.webp)

## Building
The only time you really need to do this is if you add additional arguments with argbash and need to regenerate the script.
Make changes to the ./src/tb-util.tpl template and run `make build`, the [ArgBash CLI](https://github.com/matejak/argbash?tab=readme-ov-file#argbash) is required.

## Proudly made using

- [Argbash](https://argbash.dev)
- [scripts-common](https://gitlab.com/bertrand-benoit/scripts-common)
- [shdotenv](https://github.com/ko1nksm/shdotenv/)
- [pixlet](https://github.com/tidbyt/pixlet)
- [ffmpeg](https://ffmpeg.org)
- [GIMP](https://www.gimp.org)
- [ABS](https://www.abs-lang.org)