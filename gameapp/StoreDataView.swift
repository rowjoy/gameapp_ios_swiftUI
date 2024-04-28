//
//  StoreDataView.swift
//  gameapp
//
//  Created by Nec Money on 4/28/24.
//

//import SwiftUI
//
//struct StoreDataView: View {
//    @Environment(\.modelContext) private var modelContext
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//#Preview {
//    StoreDataView()
//}


import SwiftUI
import SwiftData

struct StoreDataView : View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [StoreRoom]
    @State private var input: String = ""
    
    
    var body: some View {
        VStack {
            HStack {
                TextField("Add an item", text: $input )
                Button("Add") {
                    if(input.isEmpty){
                        print("Item not found")
                    }else {
                        addItem()
                    }
                    
                }
            }
            
            List{
                ForEach (items) { item in
                    if(!item.userName.isEmpty) {
                        Text(item.userName)
                        Text(item.id)
                    }
                }
            }
        }
        .padding()
    }
    
    func addItem(){
        let item = StoreRoom(name: input, dob: "Janiary 1 2024", sname: "Nec money transfer")
        modelContext.insert(item)
        input = ""
    }
}

#Preview {
    StoreDataView()
}
