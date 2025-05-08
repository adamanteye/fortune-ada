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
sha256sums=('c79369a6ce0fd805e329d6c921fb79febea1a751b159ab6cb963d44708cdc75f')
package() {
    strfile -c % ada > /dev/null
    install -Dm644 ada.dat "$pkgdir/usr/share/fortune/ada.dat"
    install -Dm644 ada "$pkgdir/usr/share/fortune/ada"
}
