//
//  ListTask.swift
//  projeto-teste
//
//  Created by user on 13/03/25.
//

import SwiftUI

struct ListTask: View {
    var tasks : [TaskModel] = [
        TaskModel(title: "Task1", date: Date()),
        TaskModel(title: "Task2", date: Date()),
        TaskModel(title: "Task3", date: Date()),
        TaskModel(title: "Task4", date: Date()),
        TaskModel(title: "Task5", date: Date()),
        TaskModel(title: "Task6", date: Date()),
        TaskModel(title: "Task7", date: Date()),
        TaskModel(title: "Task8", date: Date()),
        TaskModel(title: "Task9", date: Date())
    ]
    
    @State var addTask: Bool = false
    
    var body: some View {
        List{
            Section{
                Button{
                    addTask.toggle()
                    print(addTask)
                }
                label: {
                    Label{
                        Text("Add Task")
                    }icon: {
                        Image(systemName: "plus")
                    }
                }
            }
            Section{
                //percorre toda o array
                ForEach(tasks) { tasks in
                    TaskView(task: tasks)
                }
            }
            header: {
                Text("Lista")
            }
            footer: {
                Text("Total \(tasks.count)")
            }
        }
        .listStyle(.insetGrouped)
        //Direcina para a nova página
        .sheet(isPresented: $addTask) {
            AddTaskView()
        }
    }
}

#Preview {
    ListTask()
}
