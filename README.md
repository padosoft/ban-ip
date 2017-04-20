
# ban-ip
Bash command to ban IP to iptable and optionally automatic save rules. 

[![Software License][ico-license]](LICENSE.md)

Table of Contents
=================

  * [ban-ip](#ban-ip)
  * [Table of Contents](#table-of-contents)
  * [Prerequisites](#prerequisites)
  * [Install](#install)
  * [Usage](#usage)
  * [Example](#example)
  * [Contributing](#contributing)
  * [Credits](#credits)
  * [About Padosoft](#about-padosoft)
  * [License](#license)

# Prerequisites

bash

# Install

This package can be installed easy.

``` bash
cd /root/myscript
git clone https://github.com/padosoft/ban-ip.git
cd ban-ip
chmod +x banip.sh
```

# Usage
``` bash
bash banip.sh IPTOBAN [NOSAVE 0|1]
```

## Example
``` bash
bash /root/myscript/ban-ip/banip.sh 192.168.0.18
bash /root/myscript/ban-ip/banip.sh 192.168.0.18 1

```
For help:
``` bash
bash banip.sh
```

# Contributing

Please see [CONTRIBUTING](CONTRIBUTING.md) and [CONDUCT](CONDUCT.md) for details.


# Credits

- [Lorenzo Padovani](https://github.com/lopadova)
- [Padosoft](https://github.com/padosoft)
- [All Contributors](../../contributors)

# About Padosoft
Padosoft is a software house based in Florence, Italy. Specialized in E-commerce and web sites.

# License

The MIT License (MIT). Please see [License File](LICENSE.md) for more information.

[ico-license]: https://img.shields.io/badge/license-MIT-brightgreen.svg?style=flat-square
