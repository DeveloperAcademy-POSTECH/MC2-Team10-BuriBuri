//
//  AlbumForChildView.swift
//  MC2_BuriBuri
//
//  Created by xnoag on 2023/05/09.
//

//* -> 현재 단계
// -> 코드 설명

import SwiftUI

//* 아이를 위한 앨범을 만든다.
struct AlbumForChildView: View {
    // 파일 DataModel을 받아올 준비를한다.
    @EnvironmentObject var dataModel: DataModel
    // 앨범은 3열로 설정한다.
    private static let Columns = 3
    // 앨범은 3XN 형태이다.
    @State private var gridColumns = Array(repeating: GridItem(.flexible()), count: Columns)
    // isAnimation의 Boolean 값에 따라 이미지가 흔들거리는 효과 여부를 결정한다.
    @State var isAnimationChild = false
    
    var body: some View {
        VStack {
            // 스크롤 가능하게 한다.
            ScrollView {
                // 부모 Album과 달리 탭바가 없으니 약간의 여백을 준다.
                Spacer()
                    .frame(height: getHeight() * 0.05)
                // 수직(V)방향으로 Grid를 사용한다.
                LazyVGrid(columns: gridColumns) {
                    ForEach(dataModel.items) { item in
                        GeometryReader { geo in
                            // GridItemView를 불러와서 item에 item을 넘겨준다.
                            GridItemView(size: geo.size.width, item: item)
                                // 좌우 5도씩 흔들거리는 효과
                                .rotationEffect((Angle(degrees: isAnimationChild ? 5 : -5)))
                            // 0.3초마다 왔다갔다하게 하는 효과
                                .animation(.easeInOut(duration: 0.3)
                                    .repeatForever(autoreverses: true), value: isAnimationChild)
                        }
                        .cornerRadius(8.0)
                        .aspectRatio(1, contentMode: .fit)
                    }
                }
                .padding()
            }
            .onAppear {
                isAnimationChild.toggle()
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct AlbumForChildView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumForChildView()
    }
}
