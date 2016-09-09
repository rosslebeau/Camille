import Bot

let bot = try SlackBot(
    configDataSource: DefaultConfigDataSource,
    authenticator: TokenAuthentication.self,
    storage: MemoryStorage.self,
    services: [
        SwiftDocService(),
        HelloService(),
        KarmaService(options: KarmaOptions(
            targets: ["bot-laboratory"],
            addText: "++",
            removeText: "--",
            textDistanceThreshold: 4
            ))
    ]
)

bot.start()
