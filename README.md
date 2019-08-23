
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![GPL License][license-shield]][license-url]



<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/F0xedb/mail">
    <img src="https://tos.pbfp.xyz/images/logo.svg" alt="Logo" width="150" height="200">
  </a>

  <h3 align="center">mail server</h3>
  <p align="center">
    A full featured mail server
    <br />
    <a href="https://github.com/F0xedb/mail"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/F0xedb/mail">View Demo</a>
    ·
    <a href="https://github.com/F0xedb/mail/issues">Report Bug</a>
    ·
    <a href="https://github.com/F0xedb/mail/issues">Request Feature</a>
  </p>
</p>



<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
  * [Built With](#built-with)
* [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Installation](#installation)
* [Usage](#usage)
* [Roadmap](#roadmap)
* [Contributing](#contributing)
* [License](#license)
* [Contact](#contact)
* [Acknowledgements](#acknowledgements)



<!-- ABOUT THE PROJECT -->
## About The Project


<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these simple steps.

### Prerequisites

You should have 

* docker 

* docker-compose 

  Installed

### Installation

1. Clone the repo
```sh
git clone https:://github.com/F0xedb/mail.git
```
2. Install docker/docker-compose
```sh
# Arch
pacman -Syu docker docker-compose
# Ubuntu
sudo apt-install docker docker-compose
# Fedora
sudo dnf -y install dnf-plugins-core
sudo dnf config-manager --add-repo  https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf install docker-ce docker-compose
```

While that is installing change a few ENV variables.

First of all open `mailu.env` and change everything according to your configuration. Eg domain name, url, ip address etc. Don't forget to generate a random key



After that open the `docker-compose.yml` file and edit the `front` service. Each port is exposed to your public ip address. Make sure the port section uses your IP address. (The public address)



Start the docker-compose stack

```bash
docker-compose up -d
```

After the mail server is running you need to create an account.

Open the `start.sh` file and edit the 3 variables there to reflect your account.

> username must be the same as POSTMASTER in the mailu.env file otherwise you will get weird bugs

Then run this file in the same directory as your mailserver (by default /mailu)

If this gives you an error that means the database is not yet connected to the containers. Simply restart all your containers `docker-compose down && docker-compose up` 

<!-- USAGE EXAMPLES -->
## Usage

When an account has been succesfully created then it is time to do the final configuration for your mailserver. Head over to `your.domain.com/admin` and login with the credentials provided to the start.sh script. 

Head over to `Mail Domains -> Actions->Details`. In the upper right corner you have a button `Regenerate keys` Press it to generate the dkim key. Once generated add all the entries to your dns records. Once this is completed then you will have a fully working mailserver.



To test it out go to `your.domain.com/rainloop` This is your frontend to send mails.

Alternativly you can go to `your.domain.com/admin` And click on the `Client Setup` link. this gives you all the information needed to use an external mail client.



_For more examples, please refer to the [Documentation](https://tos.pbfp.xyz/blog)_



<!-- ROADMAP -->
## Roadmap

See the [open issues](https://github.com/F0xedb/mail/issues) for a list of proposed features (and known issues).



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request



<!-- LICENSE -->
## License

Distributed under the GPL License. See `LICENSE` for more information.



<!-- CONTACT -->
## Contact

F0xedb - tom@odex.be

Project Link: [https://github.com/F0xedb/mail](https://github.com/F0xedb/mail)



<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements

* [F0xedb](https://github.com/F0xedb/mail)





<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/F0xedb/mail.svg?style=flat-square
[contributors-url]: https://github.com/F0xedb/mail/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/F0xedb/mail.svg?style=flat-square
[forks-url]: https://github.com/F0xedb/mail/network/members
[stars-shield]: https://img.shields.io/github/stars/F0xedb/mail.svg?style=flat-square
[stars-url]: https://github.com/F0xedb/mail/stargazers
[issues-shield]: https://img.shields.io/github/issues/F0xedb/mail.svg?style=flat-square
[issues-url]: https://github.com/F0xedb/mail/issues
[license-shield]: https://img.shields.io/github/license/F0xedb/mail.svg?style=flat-square
[license-url]: https://github.com/F0xedb/mail/blob/master/LICENSE.txt
[product-screenshot]: https://tos.pbfp.xyz/images/logo.svg
