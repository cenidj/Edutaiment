import SwiftUI

struct ContentView: View {
    @State private var tableIndex: Int = 0
    @State private var questions: Int = 0
    
    private var table: Int {
        tableIndex + 2
    }
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Table Options") {
                    VStack(alignment: .leading){
                        Text("Which table do you want to play with?")
                        Picker("Which table do you want", selection: $tableIndex) {
                            ForEach(2..<13) {
                                Text("\($0)")
                            }
                        }
                        .pickerStyle(.segmented)
                    }
                }
                
                Section("Table of number \(table)") {
                    VStack(alignment: .center) {
                        ForEach(1..<13) {
                            Text("\($0) x \(table) = \($0 * (table))")
                        }
                    }
                }
                
            }
            .navigationTitle("Edutainment")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
