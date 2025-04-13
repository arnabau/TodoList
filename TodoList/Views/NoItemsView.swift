//
//  NoItemsView.swift
//  TodoList
//
//  Created by Arnaldo Baumanis on 2/18/25.
//

import SwiftUI

struct NoItemsView: View {
    @State var animate: Bool = false
    
    var body: some View {
        ScrollView {
            VStack {
                Text("No items found.")
                    .font(.title)
                    .fontWeight(.bold)
                NavigationLink(
                    destination: AddView(),
                    label: {
                        Text("Add saomething")
                            .foregroundColor(.white)
                            .font(.headline)
                            .frame(height: 50)
                            .frame(maxWidth: .infinity)
                            .background(animate ? Color.red : Color.accentColor)
                            .cornerRadius(10)
                    }
                )
                .padding(.horizontal, animate ? 30 : 50)
            }
            .multilineTextAlignment(.center)
            .padding(50)
            .onAppear(perform: addAnimation)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    func addAnimation() {
        guard !animate else { return }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            withAnimation(
                Animation
                    .easeInOut(duration: 1)
                    //.repeatForever()
            ) {
                animate.toggle()
            }
        }
    }
}

struct NoItemsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            NoItemsView()
                .navigationTitle("Title")
        }
    }
}
