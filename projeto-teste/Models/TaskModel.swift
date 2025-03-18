import Foundation
import Observation

@Observable
class TaskModel: Identifiable {
    var title: String
    var date: Date
    var isDone: Bool
    
    init(title: String, date: Date, isDone: Bool = false) {
        self.title = title
        self.date = date
        self.isDone = isDone
    }
}
