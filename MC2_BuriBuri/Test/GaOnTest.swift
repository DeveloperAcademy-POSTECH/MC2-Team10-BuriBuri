//
//  GaOnTest.swift
//  MC2_BuriBuri
//
//  Created by xnoag on 2023/05/10.
//

//import SwiftUI
//
//struct GaOnTest: View {
//    @State private var isUnBoxing = false
//    var body: some View {
//                VStack {
//                    HStack {
//                        Spacer()
//                            .frame(width: getWidth() * 0.03, height: getHeight() * 0.05)
//                        NavigationLink(destination: ScanView()) {
//                            Rectangle()
//                                .aspectRatio(1, contentMode: .fit)
//                                .foregroundColor(.green)
//                                .frame(width: getWidth() * 0.1, height: getHeight() * 0.05)
//                        }
//                        Spacer()
//                            .frame(width: getWidth() * 0.87, height: getHeight() * 0.05)
//                    }
//                    Spacer()
//                        .frame(width: getWidth() * 1, height: getHeight() * 0.7)
//                    Button(action: {
//                        isUnBoxing.toggle()
//                    }) {
//                        Rectangle()
//                            .aspectRatio(1, contentMode: .fit)
//                            .foregroundColor(.blue)
//                            .frame(width: getWidth() * 1, height: getHeight() * 0.1)
//                    }
//                    Spacer()
//                        .frame(width: getWidth() * 1, height: getHeight() * 0.1)
//                }
//                .popover(isPresented: $isUnBoxing) {
//                    NavigationView {
//                        AlbumForChildView()
//                    }
//                    .presentationDetents([.height(getHeight() * 0.4)])
//                }
//    }
//}
//
//
//struct GaOnTest_Previews: PreviewProvider {
//    static var previews: some View {
//        GaOnTest()
//    }
//}



//struct ContentView: View {
//    @State private var showDecision = false
//
//    var body: some View {
//        VStack {
//            Button("Show Sheet") {
//                showSheet.toggle()
//            }
//            .buttonStyle(.bordered)
//            .sheet(isPresented: $showDecision) {
//                Text("Expandable Bottom Sheet")
//                    .presentationDetents([.medium, .large])
//            }
//
//            Spacer()
//        }
//    }
//}
