import SwiftUI
import WidgetKit
import ActivityKit

struct WidgetLiveActivity: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: CryptoAttributes.self) { context in
            LockScreenLiveActivityView(context: context)
            
        } dynamicIsland: { context in
            DynamicIsland {
                DynamicIslandExpandedRegion(.leading) {
                    Label(context.state.name, systemImage: context.state.isPositivePrice ? "arrow.up.right.circle" : "arrow.down.right.circle")
                        .font(.title2)
                        .frame(width: 100)
                        .lineLimit(1)
                    
                }
                
                DynamicIslandExpandedRegion(.trailing) {
                    Label {
                        VStack{
                            Text(context.state.change)
                                .multilineTextAlignment(.trailing)
                                .foregroundColor(context.state.isPositivePrice ? .green : .red)
                            Text("\(context.state.price) $")
                                .multilineTextAlignment(.trailing)
                                .font(.caption2)
                                .foregroundColor(context.state.isPositivePrice ? .green : .red)
                        }
                    } icon: {
                        
                    }
                    .font(.title2)
                }
                
                DynamicIslandExpandedRegion(.center) {
                }
                
                DynamicIslandExpandedRegion(.bottom) {
                }
            } compactLeading: {
                Label {
                } icon: {
                    Image(systemName: context.state.isPositivePrice ? "arrow.up.right.circle" : "arrow.down.right.circle")
                }
                .font(.caption2)
            } compactTrailing: {
                Text(context.state.change)
                    .multilineTextAlignment(.center)
                    .font(.caption2)
                    .foregroundColor(context.state.isPositivePrice ? .green : .red)
            } minimal: {
                VStack(alignment: .center) {
                    Image(systemName: "timer")
                    Text("test4")
                        .multilineTextAlignment(.center)
                        .monospacedDigit()
                        .font(.caption2)
                }
            }
            .keylineTint(.cyan)
        }
    }
}

struct LockScreenLiveActivityView: View {
    let context: ActivityViewContext<CryptoAttributes>
    
    var body: some View {
        HStack {
            Label {
                Text("\(context.state.name)")
            } icon: {
                Image(systemName: context.state.isPositivePrice ? "arrow.up.right.circle" : "arrow.down.right.circle")
            }
            .font(.title2)
            Spacer()
            Label {
                VStack{
                    
                    Text(context.state.price)
                        .multilineTextAlignment(.trailing)
                        .monospacedDigit()
                        .foregroundColor(context.state.isPositivePrice ? .green : .red)
                    
                    Text(context.state.change)
                        .multilineTextAlignment(.trailing)
                        .monospacedDigit()
                        .foregroundColor(context.state.isPositivePrice ? .green : .red)
                }
            } icon: {
            }
            .font(.title2)
        }
        .padding(.horizontal, 20)
        .background(Color(UIColor.secondarySystemBackground))
    }
}
