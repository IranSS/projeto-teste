//
//  DetailsTaskView.swift
//  projeto-teste
//
//  Created by user on 18/03/25.
//

import SwiftUI

struct DetailsTaskView: View {
    var task: TaskModel
    var body: some View {
        VStack{
            HStack{
                Text("Titulo:")
                Text(task.title)
            }
            HStack{
                Text("Data: ")
                
            }
            HStack{
                Text("Está feito?")
                Text(task.title)
            }
        }
    }
}

#Preview {
    DetailsTaskView(task: TaskModel(title: "Teste", date: Date(), isDone: false))
}
