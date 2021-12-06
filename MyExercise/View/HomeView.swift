//
//  HomeView.swift
//  MyExercise
//
//  Created by haju Kim on 2021/12/04.
//

import SwiftUI
import Firebase
import GoogleSignIn
import SDWebImageSwiftUI

struct HomeView: View {
    
    @EnvironmentObject var viewModel: LoginViewModel
    private let user = GIDSignIn.sharedInstance.currentUser
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading, spacing: 10){
                    Text("안녕하세요. \(user?.profile?.name ?? "")")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text("오늘도 함께 힘내봐요!")
                }
                .foregroundColor(.black)
                
                Spacer(minLength: 0)
                
                Button(action: {}){
                    
                    WebImage(url: user?.profile?.imageURL(withDimension: 75))
                        .resizable()
                        .renderingMode(.original)
                        .frame(width: 50, height: 50)
                    
                }
            }.padding()
            
            ScrollView{
                VStack{
                    HStack{
                        Text("모든 탭 보기")
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        Spacer(minLength: 0)
                    }
                    .foregroundColor(.black)
                    .padding(.top,15)
                }
                .padding()
            }
        }
        .background(Color.black.opacity(0.05).ignoresSafeArea(.all, edges: .all))
    }
}

// MARK: - 카드뷰
struct CardView : View {
    
    var select : HomeSelectModel
    
    var body: some View {
        VStack{
            Image(select.asset)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .padding(.top,10)
                .padding(.leading,10)
                .background(Color(select.asset))
            
            HStack {
                VStack(alignment: .leading, spacing: 12){
                    
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

