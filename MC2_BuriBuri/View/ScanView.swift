//
//  ScanView.swift
//  FileManagerTest
//
//  Created by xnoag on 2023/05/08.
//

import SwiftUI

struct ScanView: View {
    var body: some View {
        VStack {
            Spacer()
                .frame(width: getWidth() * 1, height: getHeight() * 0.05)
            HStack {
                Spacer()
                    .frame(width: getWidth() * 0.03, height: getHeight() * 0.05)
                Rectangle()
                    .foregroundColor(.green)
                    .aspectRatio(1, contentMode: .fit)
                    .frame(width: getWidth() * 0.1, height: getHeight() * 0.05)
                Spacer()
                    .frame(width: getWidth() * 0.87, height: getHeight() * 0.05)
            }
            Spacer()
                .frame(width: getWidth() * 1, height: getHeight() * 0.75)
            HStack {
                Spacer()
                    .frame(width: getWidth() * 0.03, height: getHeight() * 0.1)
                Rectangle()
                    .aspectRatio(1, contentMode: .fit)
                    .foregroundColor(.blue)
                    .frame(width: getWidth() * 0.2, height: getHeight() * 0.1)
                Spacer()
                    .frame(width: getWidth() * 0.17, height: getHeight() * 0.1)
                Rectangle()
                    .foregroundColor(.blue)
                    .aspectRatio(1, contentMode: .fit)
                    .frame(width: getWidth() * 0.2, height: getHeight() * 0.1)
                Spacer()
                    .frame(width: getWidth() * 0.4, height: getHeight() * 0.1)
            }
            Spacer()
                .frame(width: getWidth() * 1, height: getHeight() * 0.05)
        }
    }
}

struct ScanView_Previews: PreviewProvider {
    static var previews: some View {
        ScanView()
    }
}
