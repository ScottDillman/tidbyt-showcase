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
I was fortunate enough to be gifted a Tidbyte the other day and started to kick the tires a bit. I quickyly realized that creating apps for this little thing is pretty addictive. I started churning these out to see what they would look like and each one of them makes me smile every time they appear in rotation. Many of these graphics are not mine and the rights belong to the respective copyright holders. But have fun with them, open a PR if you would like to add to the library, but be respectful of content owners and general sensibilities, but most of all have fun.

## Usage

There is a script in the `scripts` directory that will install the entire library on your device. After you run it use the mobile app to clean out anything you don't want. There is no magic here it is a simple bash script that calls the [pixlet](https://github.com/tidbyt/pixlet) utility.

1.👥  Clone the repository

```shell
git clone --recursive https://github.com/ScottDillman/tidbyt-showcase.git
```

2. 📝 modify the device values

```bash
cd tidbyt-showcase/scripts
cp  env.sample .env
nano .env
```

Add your token and device ID to the .env file you created: (and no that is not a _real_ token 🤦)
```
TOKEN="eyJhbGciOiJFUzI1NiIsImtpZCI6IjY1YzMu_GfP6aM-2DY6aILz5tJKZ-dFhMmUzNzodHRwczovL2FwaS50aWRieXQuY2JjZjljMTQ1MTQyNzk5ODZhMzYyNmQ1Y2QzNTI0N2IiLCJ0eXAiOiJKV1QifQ.eyJhdWQiOiJodHRwczovL2FwaS50aWRieXQuY_GfP6aM-2DY6aILz5tJKZ-dE29tIiwiZXhwIjozMjgzOTY3NTU0LCJpYXQiOjE3MDcxNjc1NTQsImlzcyI6Imh0dHBzOi8vYXBpLnwNWQifQ.mUG-duvz5WhfpqMuh3jCeRpZGJ5dC5jb20iLCJzdWIiOiJzTUZnMkNJdkl0UzJTSXJEZGpJRVN5YmN6aDAzIiwic2NvcGUiOiJkZXZpY2UiLCJkZXZpY2UiOiJvd2xpc2hs"
DEVICE="this-is-my-device-id"
```

3. 🚀 Run the installer

```bash
./tb-push
```

All images in the ./assets directory will be installed on your Tidbyt. If there are images you are not interested in just remove them or rename them so they don't have the webp extension and they will not be installed.

You can add or remove images from the assets directory and re-run the installer to add them to your Tidbyt. Just be sure they are 64pxx32px webp images, and make sure they are named with only letters,numbers, and hypens. During install hyphens will be replaced with zeros a requirement of Tidbyt apps.

4. 😁 Have fun


Right now this is very bare bones and was about an evening's worth of playing around with the device. I plan to add things here and there to make the process of working with my Tidbyt easier. If you have ideas, suggestions, complaints, praise or want to make contributions just create an issue. Just remember this all for fun..

## Current library of images

#### Abstract
![abstract-spin-0001](./assets/abstract-spin-001.webp)
![abstract-spin-0002](./assets/abstract-spin-002.webp)
#### Logos
![logo-sega-001](./assets/logo-sega-001.webp)
![logo-sega-002](./assets/logo-sega-002.webp)
![logo-wittij-001](./assets/logo-wittij-001.webp)
#### Coffee
![bw-coffee-001](./assets/bw-coffee-001.webp)
![misc-coffee-001](./assets/misc-coffee-001.webp)
#### Metalslug
![ms-boom-001](./assets/ms-boom-001.webp)
![ms-mummy-001](./assets/ms-mummy-001.webp)
![ms-mummy-002](./assets/ms-mummy-002.webp)
![ms-ufo-001](./assets/ms-ufo-001.webp)
![ms-zombie-001](./assets/ms-zombie-001.webp)
