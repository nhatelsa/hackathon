import SwiftUI

struct PhotoThumbnail: View {
  let image: UIImage?

  var body: some View {
    Group {
      // if we have Image then we'll show image
      if let image {
        Image(uiImage: image)
          .resizable()
          .aspectRatio(contentMode: .fill)
          .frame(width: 60, height: 60)
          .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
      }

      // else just show black view
      Rectangle()
        .frame(width: 50, height: 50, alignment: .center)
        .foregroundColor(.clear)
    }
  }
}

struct CaptureButton: View {

  var action: () -> Void

  var body: some View {
    Button(action: action) {
      Circle()
        .foregroundColor(.white)
        .frame(width: 70, height: 70, alignment: .center)
        .overlay(
          Circle()
            .stroke(Color.black.opacity(0.8), lineWidth: 2)
            .frame(width: 59, height: 59, alignment: .center)
        )
    }
  }
}

struct CameraSwitchButton: View {

  var action: () -> Void

  var body: some View {
    Button(action: action) {
      Circle()
        .foregroundColor(Color.gray.opacity(0.2))
        .frame(width: 45, height: 45, alignment: .center)
        .overlay(
          Image(systemName: "camera.rotate.fill")
            .foregroundColor(.white))
    }
  }
}
