//
//  AddTaskView.swift
//  projeto-teste
//
//  Created by user on 13/03/25.
//

import SwiftUI

struct AddTaskView: View {
    @State var TaskName: String = ""
    @State var DateTask: Date = Date()
    
    
    var body: some View {
        NavigationStack{
            Form{
                TextField("TaskName", text: $TaskName)
                DatePicker("Date ", selection: $DateTask)
            }.toolbar {
                ToolbarItem(placement: .confirmationAction){
                    Button{
                        print("Salvar")
                    } label: {
                        Text("save")
                    }
                }
                ToolbarItem(placement: .cancellationAction){
                    Button{
                        print("Cancelar")
                    } label: {
                        Text("cancel")
                    }
                }
            }
        }
    }
}

#Preview {
    AddTaskView()
}
