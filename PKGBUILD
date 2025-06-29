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
sha256sums=('d027288c99ea25e77b3bd5dfaa94ab502a92a6b9cb87cfb765b369b41bdb2fe0')
build() {
    strfile -c % ada > /dev/null
}
package() {
    install -Dm644 ada.dat "$pkgdir/usr/share/fortune/ada.dat"
    install -Dm644 ada "$pkgdir/usr/share/fortune/ada"
}
