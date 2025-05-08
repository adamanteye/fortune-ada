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
sha256sums=('2324ef1665a429a32d4a96a157703955b8b1932ad84c2fe30af090a7e5fc8dce')
package() {
    strfile -c % ada
    install -Dm644 ada.dat "$pkgdir/usr/share/fortune/ada.dat"
    install -Dm644 ada "$pkgdir/usr/share/fortune/ada"
}
