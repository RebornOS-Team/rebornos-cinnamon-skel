pkgname=rebornos-cinnamon-skel
pkgdesc="Skeleton for /home, used for configuring RebornOS Cinnamon"
pkgver=1.1.0
pkgrel=1
arch=('any')

url="https://github.com/rebornos-team/rebornos-cinnamon-skel"
depends=()
license=('GPL-3.0-or-later')

source=(user
    pexels-pixabay-258112.jpg)

sha256sums=('72484107948c7441edf7544fad66b27072fe59dc575eee365d3fbd2e0355f594'
            'cacf98a9c1269a614ce4822594b9874e9857e9d86eba1cfd6489555ba7440de0')

package() {
    # To bypass makepkg's dependency check during build-time
    depends+=('mint-themes' 'mint-y-icons')

    install -D -m644 "${startdir}/user" "${pkgdir}/etc/skel/.config/dconf/user"
    install -D -m644 "${startdir}/pexels-pixabay-258112.jpg" "${pkgdir}/usr/share/backgrounds/xfce/pexels-pixabay-258112.jpg"
}
