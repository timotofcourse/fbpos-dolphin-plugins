# Maintainer: Timot <filmabemtv2@gmail.com>
pkgname=fbpos-dolphin-scripts
pkgver=24.0
pkgrel=1
pkgdesc="Set of scripts for FBP OS to add extra options on dolphins context menus"
arch=('any')
url="github.com/timot_of_course"
license=('GPL')
depends=('ffmpeg' 'konsole' 'imagemagick')
source=(
  "convert_to_mp4.sh"
  "convert_to_mov.sh"
  "convert-png.sh"
  "convert-jpg.sh"
  "convert-webp.sh"
  "convert_to_mp4.desktop"
)
sha256sums=(

)

package() {
  install -Dm755 "$srcdir/convert-mp4.sh" "$pkgdir/usr/bin/convert-mp4"
  install -Dm755 "$srcdir/convert-mov.sh" "$pkgdir/usr/bin/convert-mov"
  install -Dm755 "$srcdir/convert-png.sh" "$pkgdir/usr/bin/convert-png"
  install -Dm755 "$srcdir/convert-jpg.sh" "$pkgdir/usr/bin/convert-jpg"
  install -Dm755 "$srcdir/convert-webp.sh" "$pkgdir/usr/bin/convert-webp"
  install -Dm644 "$srcdir/convert-mp4.desktop" "$pkgdir/usr/share/kservices5/ServiceMenus/convert-mp4.desktop"
}
