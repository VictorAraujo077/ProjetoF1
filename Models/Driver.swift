import Foundation

struct Driver: Codable, Hashable {
    let meetingKey: Int
    let sessionKey: Int
    let driverNumber: Int
    let broadcastName: String
    let fullName: String
    let nameAcronym: String
    let teamName: String
    let teamColour: String
    let firstName: String
    let lastName: String
    let headshotURL: String
    let countryCode: String?

    enum CodingKeys: String, CodingKey {
        case meetingKey = "meeting_key"
        case sessionKey = "session_key"
        case driverNumber = "driver_number"
        case broadcastName = "broadcast_name"
        case fullName = "full_name"
        case nameAcronym = "name_acronym"
        case teamName = "team_name"
        case teamColour = "team_colour"
        case firstName = "first_name"
        case lastName = "last_name"
        case headshotURL = "headshot_url"
        case countryCode = "country_code"
    }
}
