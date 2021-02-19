//
//  SideMenuView.swift
//  SideMenu
//
//  Created by Troye on 2021/2/18.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing: Bool

    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea(.all)
            VStack {
                // Header
                SideMenuHeaderView(isShowing: $isShowing)
                    .frame(height: 240)
                // Cell items
                ForEach(SideMenuViewModel.allCases,id: \.self){ option in
                    NavigationLink(destination: Text(option.title)) {
                        SideMenuOptionView(viewModel: option)
                    }
                }

                Spacer()
            }
        }.navigationBarHidden(true)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isShowing: .constant(true))
    }
}
