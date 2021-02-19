//
//  SideMenuOptionView.swift
//  SideMenu
//
//  Created by Troye on 2021/2/18.
//

import SwiftUI

struct SideMenuOptionView: View {
    let viewModel:SideMenuViewModel
    var body: some View {
        HStack {
            Image(systemName: viewModel.imageName)
                .frame(width: 24,height: 24)

            Text(viewModel.title)
                .font(.system(size: 15, weight: .semibold))

            Spacer()
        }
        .foregroundColor(.white)
        .padding()
    }
}

struct SideMenuOptionView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOptionView(viewModel: .profile)
    }
}
