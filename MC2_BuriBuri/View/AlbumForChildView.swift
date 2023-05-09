//
//  AlbumForChildView.swift
//  MC2_BuriBuri
//
//  Created by xnoag on 2023/05/09.
//

import SwiftUI

struct AlbumForChildView: View {
    @EnvironmentObject var dataModel: DataModel
    private static let Columns = 3
    @State private var gridColumns = Array(repeating: GridItem(.flexible()), count: Columns)
    @State private var numColumns = Columns
    @State var isAnimation = false
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: gridColumns) {
                    ForEach(dataModel.items) { item in
                        GeometryReader { geo in
                            GridItemView(size: geo.size.width, item: item)
                                .rotationEffect((Angle(degrees: isAnimation ? 5 : -5)))
                                .animation(.easeInOut(duration: 0.3)
                                    .repeatForever(autoreverses: true), value: isAnimation)
                        }
                        .cornerRadius(8.0)
                        .aspectRatio(1, contentMode: .fit)
                    }
                }
                .padding()
            }
            .onAppear {
                isAnimation.toggle()
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
