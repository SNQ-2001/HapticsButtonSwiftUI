//
//  ContentView.swift
//  Demo
//
//  Created by 宮本大新 on 2023/06/16.
//

import SwiftUI
import HapticsButtonSwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                impactSection()
                notificationSection()
                selectionSection()
            }
            .navigationTitle("Haptics")
        }
    }

    private func impactSection() -> some View {
        Section {
            Button(haptics: .impact(.light)) {
                // action
            } label: {
                Text("Light")
            }
            
            Button(haptics: .impact(.medium)) {
                // action
            } label: {
                Text("Medium")
            }
            
            Button(haptics: .impact(.heavy)) {
                // action
            } label: {
                Text("Heavy")
            }
            
            Button(haptics: .impact(.rigid)) {
                // action
            } label: {
                Text("Rigid")
            }
            
            Button(haptics: .impact(.soft)) {
                // action
            } label: {
                Text("Soft")
            }
        } header: {
            Text("Impact")
        }
    }

    private func notificationSection() -> some View {
        Section {
            Button(haptics: .notification(.success)) {
                // action
            } label: {
                Text("Success")
            }
            
            Button(haptics: .notification(.warning)) {
                // action
            } label: {
                Text("Warning")
            }
            
            Button(haptics: .notification(.error)) {
                // action
            } label: {
                Text("Error")
            }
        } header: {
            Text("Notification")
        }
    }

    private func selectionSection() -> some View {
        Section {
            Button(haptics: .selection) {
                // action
            } label: {
                Text("Success")
            }
        } header: {
            Text("Notification")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
