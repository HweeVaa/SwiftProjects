
import Foundation
import SwiftUI


/// This is the darta model of the messages
/// that will appear in the app.
/// it contains a text string and a color.
/// Moreover it inherits from the Identifiable protocol.
struct DataItemModel: Identifiable {
    let id = UUID()
    let text: LocalizedStringKey
    let color: Color
}
