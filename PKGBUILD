# Maintainer Panda <panda@rebornos.org>

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
            '037a33987bc975af8466d226d5f90f06769e0090420d792ab35ac95da91c966b')

package() {

    install -D -m644 "user" "${pkgdir}/etc/skel/.config/dconf/user"
    install -D -m644 "pexels-pixabay-258112.jpg" "${pkgdir}/usr/share/backgrounds/xfce/pexels-pixabay-258112.jpg"
}