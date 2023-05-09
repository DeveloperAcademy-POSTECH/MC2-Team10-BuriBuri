//
//  AlbumView.swift
//  FileManagerTest
//
//  Created by xnoag on 2023/05/09.
//

import SwiftUI

struct AlbumView: View {
    @EnvironmentObject var dataModel: DataModel
    private static let Columns = 3
    @State private var isAddingPhoto = false
    @State private var isEditing = false
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
                        .overlay(alignment: .topTrailing) {
                            if isEditing {
                                Button {
                                    withAnimation {
                                        dataModel.removeItem(item)
                                    }
                                } label: {
                                    Image(systemName: "xmark.square.fill")
                                        .font(Font.title)
                                        .symbolRenderingMode(.palette)
                                        .foregroundStyle(.white, .red)
                                }
                                .offset(x: 7, y: -7)
                            }
                        }
                    }
                }
                .padding()
            }
            .onAppear {
                isAnimation.toggle()
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .sheet(isPresented: $isAddingPhoto) {
            PhotoPicker()
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    isAddingPhoto = true
                } label: {
                    Image(systemName: "plus")
                }
                .disabled(isEditing)
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(isEditing ? "Done" : "Edit") {
                    withAnimation { isEditing.toggle() }
                }
            }
        }
    }
}

struct AlbumView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumView().environmentObject(DataModel())
    }
}
