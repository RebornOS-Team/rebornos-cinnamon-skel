pkgname=rebornos-cinnamon-skel
pkgdesc="Skeleton for /home used for theming cinnamon"
pkgver=1.0.0
pkgrel=1
arch=('any')

url="https://gitlab.com/rebornos-team/rebornos-packages/cinnamon-packages/rebornos-cinnamon-skel"
depends=('mint-themes' 'mint-y-icons')
license=('GPL3')

source=(user
    pexels-pixabay-258112.jpg)

sha256sums=('16649eebaabb2a165f3ebf00c52a11c3e1ed55ad03ea0c4db7ac53712a384f3f'
    'cacf98a9c1269a614ce4822594b9874e9857e9d86eba1cfd6489555ba7440de0')

package() {

    install -D -m644 "user" "${pkgdir}/etc/skel/.config/dconf/user"
    install -D -m644 "pexels-pixabay-258112.jpg" "${pkgdir}/usr/share/backgrounds/xfce/pexels-pixabay-258112.jpg"
}
