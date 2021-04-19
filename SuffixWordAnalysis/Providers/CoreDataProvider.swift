//
//  CoreDataProvider.swift
//  SuffixWordAnalysis
//
//  Created by Dmitry Samartcev on 19.04.2021.
//

import Foundation
import CoreData

class CoreDataProvider: Singletonable {
    required init(container: IContainer, args: Void) { }
    
    lazy var context: NSManagedObjectContext = {
        let container = NSPersistentContainer(name: "SuffixWordAnalysisModel")
        
        var context: NSManagedObjectContext = .init(concurrencyType: .privateQueueConcurrencyType)
       
        container.loadPersistentStores { (storeDescription, error)  in
            if let error = error {
                assertionFailure(error.localizedDescription)
            }
            context = container.viewContext
            context.automaticallyMergesChangesFromParent = true
            
            print("🟢 Core Data stack has been initialized with description:\n \(storeDescription)")
        }
        return context
    }()
    
    func saveContext()  {
        self.context.perform {
            if self.context.hasChanges {
                try! self.context.save()
            }
        }
    }
}
