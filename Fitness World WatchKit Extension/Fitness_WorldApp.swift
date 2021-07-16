//
//  Fitness_WorldApp.swift
//  Fitness World WatchKit Extension
//
//  Created by testing on 6/9/21.
//

import SwiftUI

@main
struct Fitness_WorldApp: App {
    @StateObject var workoutManager = WorkoutManager()
    @SceneBuilder var body: some Scene{
        WindowGroup {
            NavigationView {
                StartView()
            }
            .environmentObject(workoutManager)
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
