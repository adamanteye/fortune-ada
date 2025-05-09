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
sha256sums=('105892ffad3f91dbd982aea7ad02d8d3e720ff757cc468981fcfa31db1f1693f')
package() {
    strfile -c % ada > /dev/null
    install -Dm644 ada.dat "$pkgdir/usr/share/fortune/ada.dat"
    install -Dm644 ada "$pkgdir/usr/share/fortune/ada"
}
