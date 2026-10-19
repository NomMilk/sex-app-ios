import SwiftUI;

struct ColorPalette
{
    static let pagebg = Color(hex: "#F5F8FA");
    static let accent = "#425e8a";
    static let border = "#E1E8ED";
    static let inputBorder = "#CFD9DE";
    static let text = "#0F1419";
    static let textMuted = "#536471";
    static let textSubtle = "#657786";
    static let accentRing = "rgba(66, 94, 138, 0.15)";
    static let buttonGlow = "#23395e";
    static let buttonDark = "#2e466e";
    static let buttonLight = "#415989";
    static let buttonBorder = "#1f2f47";
    static let buttonTextShadow = "#263666";
    static let shadow = "rgba(0, 0, 0, 0.2)";
    static let tagbg = "#E8F4FC";
    static let tagBorder = "#C8E6F5";
    static let activebg = "#B7EEB6";
    static let activeBorder = "#96E092";
    static let activeText = "#315F37";
    static let error = "#c0392b";
    static let overlay = "rgba(0, 0, 0, 0.92)";
    static let overlayButton = "rgba(255, 255, 255, 0.15)";
}

extension Color
{
    init(hex: String)
    {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0) // Default fallback to black if string is invalid
        }
        
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue: Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}
