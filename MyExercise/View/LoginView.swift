//
//  LoginView.swift
//  MyExercise
//
//  Created by haju Kim on 2021/12/04.
//

import SwiftUI
import Firebase
import GoogleSignIn

struct LoginView: View {
    
    @EnvironmentObject var viewModel: LoginViewModel
    @State var isLoding: Bool = false

    var body: some View {
        
        VStack {
            
            //->헤더 이미지
            Image("login")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: getRect().height / 3)
                .padding(.horizontal,20)
                .offset(y:-10)
                .background(
                    Circle().fill(Color("lightBlue")).scaleEffect(2,anchor: .bottom)
                        .offset(y:20)
                )
            
            VStack(spacing:20){
                Text("MyExerciseApp")
                    .font(.largeTitle)
                    .fontWeight(.light)
                    .kerning(1.1)
                    .foregroundColor(Color.black.opacity(0.8))
                    .multilineTextAlignment(.center)
                
                Button{
                    viewModel.signIn()
                } label: {
                    HStack(spacing: 15){
                        Image("google").resizable().renderingMode(.template).aspectRatio(contentMode: .fit)
                            .frame(width: 28, height: 28)
                        
                        Text("create Account")
                            .font(.title3)
                            .fontWeight(.medium)
                            .kerning(1.1)
                    }
                    .foregroundColor(Color("deepCyan"))
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(
                        Capsule().strokeBorder(Color("deepCyan"))
                    )
                }
                .padding(.top,25)
                
                // MARK: - 문구
                
                Text("구글 로그인을 하시려면 사용자 권한에 동의하셔야 합니다. ")
                    .font(.body.bold())
                    .foregroundColor(.gray)
                    .kerning(1.1)
                    .lineSpacing(8)
                    .multilineTextAlignment(.center)
                    .frame(maxHeight: .infinity, alignment: .bottom)
                    .padding(.bottom,10)
            }
            .padding()
            .padding(.top,40)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .overlay(
            
            ZStack{
                if isLoding {
                    Color.black.opacity(0.25).ignoresSafeArea()
                    
                    ProgressView()
                        .font(.title2)
                        .frame(width: 60, height: 60)
                        .background(Color.white)
                        .cornerRadius(10)
                    
                }
            }
        )
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

// MARK: - 확장 처리
extension View{
    func getRect()->CGRect{
        return UIScreen.main.bounds
    }
}

