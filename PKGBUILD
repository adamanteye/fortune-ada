# Maintainer: adamanteye <ada@adamanteye.cc>
pkgname=fortune-mod-ada
pkgver=0.1.0
pkgrel=1
pkgdesc="A collection of quotes selected by adamanteye."
arch=('any')
url='https://github.com/adamanteye/fortune-ada'
license=('CC0-1.0')
depends=('fortune-mod')
source=("ada")
sha256sums=('87918a7db706ffff35c80bbdedab66d3562032f9123974fa971197cd57becaea')
package() {
    strfile -c % ada
    install -Dm644 ada.dat "$pkgdir/usr/share/fortune/ada.dat"
    install -Dm644 ada "$pkgdir/usr/share/fortune/ada"
}
