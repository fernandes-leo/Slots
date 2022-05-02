//
//  ContentView.swift
//  Slots
//
//  Created by Leonardo Fernandes on 26/01/22.
//

import SwiftUI

struct ContentView: View {

    @State var credits = 100
    @State var slot1 = 4
    @State var slot2 = 4
    @State var slot3 = 4
    @State var slot4 = 4
    @State var slot5 = 4
    @State var slot6 = 4
    @State var slot7 = 4
    @State var slot8 = 4
    @State var slot9 = 4


    var body: some View {

        VStack(spacing: 20.0) {
            Spacer()
            Text("Slots ").font(.largeTitle)
            Spacer()

          Text("Créditos \(credits)")
            .font(.title)
          Spacer()


          VStack {
            HStack {

                Image("fruit\(slot1)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)

                Image("fruit\(slot2)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)

                Image("fruit\(slot3)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }


          HStack {

              Image("fruit\(slot4)")
                  .resizable()
                  .aspectRatio(contentMode: .fit)

              Image("fruit\(slot5)")
                  .resizable()
                  .aspectRatio(contentMode: .fit)

              Image("fruit\(slot6)")
                  .resizable()
                  .aspectRatio(contentMode: .fit)
          }

          HStack {

              Image("fruit\(slot7)")
                  .resizable()
                  .aspectRatio(contentMode: .fit)

              Image("fruit\(slot8)")
                  .resizable()
                  .aspectRatio(contentMode: .fit)

              Image("fruit\(slot9)")
                  .resizable()
                  .aspectRatio(contentMode: .fit)
            }
          }
          .padding()


            Spacer()
            Button("  Girar  ") {

                // SORTEAR NUMEROS
                slot1 = Int.random(in: 1...9)
                slot2 = Int.random(in: 1...9)
                slot3 = Int.random(in: 1...9)
                slot4 = Int.random(in: 1...9)
                slot5 = Int.random(in: 1...9)
                slot6 = Int.random(in: 1...9)
                slot7 = Int.random(in: 1...9)
                slot8 = Int.random(in: 1...9)
                slot9 = Int.random(in: 1...9)


                // UPDATE CREDITOS


              //Diagonal1
                if slot1 == slot5 && slot5 == slot9 {
                    credits += 100
                }
                else {
                    credits -= 5
                }

                //linha
                if slot4 == slot5 && slot5 == slot6 {

                  credits += 500
                }
                else {
                  credits -= 5
                }

                //diagonal2
                if slot3 == slot5 && slot5 == slot7 {

                    credits += 100
                }
                else {
                    credits -= 5
                }

              if self.credits <= 0 {

              }

            }



            .padding()
            .padding([.leading, .trailing], 40)
            .foregroundColor(.white)
            .background(Color(.systemPink))
            .cornerRadius(25)
            .font(.system(size: 18, weight: .bold, design: .default))
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

