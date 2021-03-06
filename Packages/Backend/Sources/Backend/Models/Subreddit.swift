import Foundation

public struct SubredditResponse: Decodable {
    public let subreddits: [Subreddit]
    
    public init() {
        self.subreddits = []
    }
}

public struct Subreddit: Codable, Identifiable, Equatable, Hashable {
    public var id: String { name }
    public let name: String
    public let subscriberCount: Int
    public let activeUserCount: Int
    public let iconImg: String?
    public let keyColor: String?
}

public let static_subreddit = Subreddit(name: "Games",
                                        subscriberCount: 10000,
                                        activeUserCount: 500,
                                        iconImg: "https://a.thumbs.redditmedia.com/8hr1PTpJ9iWLNWP67vZN0w3IEP8uI3eAQ1kE4XLRg88.png",
                                        keyColor: "#545452")
