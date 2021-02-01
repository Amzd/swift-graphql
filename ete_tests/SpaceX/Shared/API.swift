import SwiftGraphQL

// MARK: - Operations

enum Operations {}

/* Query */

extension Operations {
    struct Query: Encodable {
    
        /* Query */
    
        /* Properties */
        let users: [String: [Objects.Users]]
        let usersAggregate: [String: Objects.UsersAggregate]
        let usersByPk: [String: Objects.Users]
        let capsules: [String: [Objects.Capsule?]]
        let capsulesPast: [String: [Objects.Capsule?]]
        let capsulesUpcoming: [String: [Objects.Capsule?]]
        let capsule: [String: Objects.Capsule]
        let company: [String: Objects.Info]
        let cores: [String: [Objects.Core?]]
        let coresPast: [String: [Objects.Core?]]
        let coresUpcoming: [String: [Objects.Core?]]
        let core: [String: Objects.Core]
        let dragons: [String: [Objects.Dragon?]]
        let dragon: [String: Objects.Dragon]
        let histories: [String: [Objects.History?]]
        let historiesResult: [String: Objects.HistoriesResult]
        let history: [String: Objects.History]
        let landpads: [String: [Objects.Landpad?]]
        let landpad: [String: Objects.Landpad]
        let launches: [String: [Objects.Launch?]]
        let launchesPast: [String: [Objects.Launch?]]
        let launchesPastResult: [String: Objects.LaunchesPastResult]
        let launchesUpcoming: [String: [Objects.Launch?]]
        let launch: [String: Objects.Launch]
        let launchLatest: [String: Objects.Launch]
        let launchNext: [String: Objects.Launch]
        let launchpads: [String: [Objects.Launchpad?]]
        let launchpad: [String: Objects.Launchpad]
        let missions: [String: [Objects.Mission?]]
        let missionsResult: [String: Objects.MissionResult]
        let mission: [String: Objects.Mission]
        let payloads: [String: [Objects.Payload?]]
        let payload: [String: Objects.Payload]
        let roadster: [String: Objects.Roadster]
        let rockets: [String: [Objects.Rocket?]]
        let rocketsResult: [String: Objects.RocketsResult]
        let rocket: [String: Objects.Rocket]
        let ships: [String: [Objects.Ship?]]
        let shipsResult: [String: Objects.ShipsResult]
        let ship: [String: Objects.Ship]
    }
}

extension Operations.Query: GraphQLHttpOperation {
    static var operation: String { "query" } 
}

extension Operations.Query: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "users":
                    if let value = try container.decode([Objects.Users]?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "usersAggregate":
                    if let value = try container.decode(Objects.UsersAggregate?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "usersByPk":
                    if let value = try container.decode(Objects.Users?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "capsules":
                    if let value = try container.decode([Objects.Capsule?]?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "capsulesPast":
                    if let value = try container.decode([Objects.Capsule?]?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "capsulesUpcoming":
                    if let value = try container.decode([Objects.Capsule?]?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "capsule":
                    if let value = try container.decode(Objects.Capsule?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "company":
                    if let value = try container.decode(Objects.Info?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "cores":
                    if let value = try container.decode([Objects.Core?]?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "coresPast":
                    if let value = try container.decode([Objects.Core?]?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "coresUpcoming":
                    if let value = try container.decode([Objects.Core?]?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "core":
                    if let value = try container.decode(Objects.Core?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "dragons":
                    if let value = try container.decode([Objects.Dragon?]?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "dragon":
                    if let value = try container.decode(Objects.Dragon?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "histories":
                    if let value = try container.decode([Objects.History?]?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "historiesResult":
                    if let value = try container.decode(Objects.HistoriesResult?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "history":
                    if let value = try container.decode(Objects.History?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "landpads":
                    if let value = try container.decode([Objects.Landpad?]?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "landpad":
                    if let value = try container.decode(Objects.Landpad?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "launches":
                    if let value = try container.decode([Objects.Launch?]?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "launchesPast":
                    if let value = try container.decode([Objects.Launch?]?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "launchesPastResult":
                    if let value = try container.decode(Objects.LaunchesPastResult?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "launchesUpcoming":
                    if let value = try container.decode([Objects.Launch?]?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "launch":
                    if let value = try container.decode(Objects.Launch?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "launchLatest":
                    if let value = try container.decode(Objects.Launch?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "launchNext":
                    if let value = try container.decode(Objects.Launch?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "launchpads":
                    if let value = try container.decode([Objects.Launchpad?]?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "launchpad":
                    if let value = try container.decode(Objects.Launchpad?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "missions":
                    if let value = try container.decode([Objects.Mission?]?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "missionsResult":
                    if let value = try container.decode(Objects.MissionResult?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "mission":
                    if let value = try container.decode(Objects.Mission?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "payloads":
                    if let value = try container.decode([Objects.Payload?]?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "payload":
                    if let value = try container.decode(Objects.Payload?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "roadster":
                    if let value = try container.decode(Objects.Roadster?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "rockets":
                    if let value = try container.decode([Objects.Rocket?]?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "rocketsResult":
                    if let value = try container.decode(Objects.RocketsResult?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "rocket":
                    if let value = try container.decode(Objects.Rocket?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "ships":
                    if let value = try container.decode([Objects.Ship?]?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "shipsResult":
                    if let value = try container.decode(Objects.ShipsResult?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "ship":
                    if let value = try container.decode(Objects.Ship?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.users = map["users"]
        self.usersAggregate = map["usersAggregate"]
        self.usersByPk = map["usersByPk"]
        self.capsules = map["capsules"]
        self.capsulesPast = map["capsulesPast"]
        self.capsulesUpcoming = map["capsulesUpcoming"]
        self.capsule = map["capsule"]
        self.company = map["company"]
        self.cores = map["cores"]
        self.coresPast = map["coresPast"]
        self.coresUpcoming = map["coresUpcoming"]
        self.core = map["core"]
        self.dragons = map["dragons"]
        self.dragon = map["dragon"]
        self.histories = map["histories"]
        self.historiesResult = map["historiesResult"]
        self.history = map["history"]
        self.landpads = map["landpads"]
        self.landpad = map["landpad"]
        self.launches = map["launches"]
        self.launchesPast = map["launchesPast"]
        self.launchesPastResult = map["launchesPastResult"]
        self.launchesUpcoming = map["launchesUpcoming"]
        self.launch = map["launch"]
        self.launchLatest = map["launchLatest"]
        self.launchNext = map["launchNext"]
        self.launchpads = map["launchpads"]
        self.launchpad = map["launchpad"]
        self.missions = map["missions"]
        self.missionsResult = map["missionsResult"]
        self.mission = map["mission"]
        self.payloads = map["payloads"]
        self.payload = map["payload"]
        self.roadster = map["roadster"]
        self.rockets = map["rockets"]
        self.rocketsResult = map["rocketsResult"]
        self.rocket = map["rocket"]
        self.ships = map["ships"]
        self.shipsResult = map["shipsResult"]
        self.ship = map["ship"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Operations.Query {
    /// fetch data from the table: "users"
    func users<Type>(distinctOn: OptionalArgument<[Enums.UsersSelectColumn]> = .absent, limit: OptionalArgument<Int> = .absent, offset: OptionalArgument<Int> = .absent, orderBy: OptionalArgument<[InputObjects.UsersOrderBy]> = .absent, `where`: OptionalArgument<InputObjects.UsersBoolExp> = .absent, _ selection: Selection<Type, [Objects.Users]>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "users",
            arguments: [
                Argument(name: "distinctOn", type: "[users_select_column!]", value: distinctOn),
                Argument(name: "limit", type: "Int", value: limit),
                Argument(name: "offset", type: "Int", value: offset),
                Argument(name: "orderBy", type: "[users_order_by!]", value: orderBy),
                Argument(name: "where", type: "users_bool_exp", value: `where`),
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            if let data = data.users[field.alias!] {
                return try selection.decode(data: data)
            }
            throw SG.HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }
    /// fetch aggregated fields from the table: "users"
    func usersAggregate<Type>(distinctOn: OptionalArgument<[Enums.UsersSelectColumn]> = .absent, limit: OptionalArgument<Int> = .absent, offset: OptionalArgument<Int> = .absent, orderBy: OptionalArgument<[InputObjects.UsersOrderBy]> = .absent, `where`: OptionalArgument<InputObjects.UsersBoolExp> = .absent, _ selection: Selection<Type, Objects.UsersAggregate>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "users_aggregate",
            arguments: [
                Argument(name: "distinctOn", type: "[users_select_column!]", value: distinctOn),
                Argument(name: "limit", type: "Int", value: limit),
                Argument(name: "offset", type: "Int", value: offset),
                Argument(name: "orderBy", type: "[users_order_by!]", value: orderBy),
                Argument(name: "where", type: "users_bool_exp", value: `where`),
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            if let data = data.usersAggregate[field.alias!] {
                return try selection.decode(data: data)
            }
            throw SG.HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }
    /// fetch data from the table: "users" using primary key columns
    func usersByPk<Type>(id: String, _ selection: Selection<Type, Objects.Users?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "users_by_pk",
            arguments: [
                Argument(name: "id", type: "uuid!", value: id),
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.usersByPk[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func capsules<Type>(find: OptionalArgument<InputObjects.CapsulesFind> = .absent, limit: OptionalArgument<Int> = .absent, offset: OptionalArgument<Int> = .absent, order: OptionalArgument<String> = .absent, sort: OptionalArgument<String> = .absent, _ selection: Selection<Type, [Objects.Capsule?]?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "capsules",
            arguments: [
                Argument(name: "find", type: "CapsulesFind", value: find),
                Argument(name: "limit", type: "Int", value: limit),
                Argument(name: "offset", type: "Int", value: offset),
                Argument(name: "order", type: "String", value: order),
                Argument(name: "sort", type: "String", value: sort),
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.capsules[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func capsulesPast<Type>(find: OptionalArgument<InputObjects.CapsulesFind> = .absent, limit: OptionalArgument<Int> = .absent, offset: OptionalArgument<Int> = .absent, order: OptionalArgument<String> = .absent, sort: OptionalArgument<String> = .absent, _ selection: Selection<Type, [Objects.Capsule?]?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "capsulesPast",
            arguments: [
                Argument(name: "find", type: "CapsulesFind", value: find),
                Argument(name: "limit", type: "Int", value: limit),
                Argument(name: "offset", type: "Int", value: offset),
                Argument(name: "order", type: "String", value: order),
                Argument(name: "sort", type: "String", value: sort),
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.capsulesPast[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func capsulesUpcoming<Type>(find: OptionalArgument<InputObjects.CapsulesFind> = .absent, limit: OptionalArgument<Int> = .absent, offset: OptionalArgument<Int> = .absent, order: OptionalArgument<String> = .absent, sort: OptionalArgument<String> = .absent, _ selection: Selection<Type, [Objects.Capsule?]?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "capsulesUpcoming",
            arguments: [
                Argument(name: "find", type: "CapsulesFind", value: find),
                Argument(name: "limit", type: "Int", value: limit),
                Argument(name: "offset", type: "Int", value: offset),
                Argument(name: "order", type: "String", value: order),
                Argument(name: "sort", type: "String", value: sort),
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.capsulesUpcoming[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func capsule<Type>(id: String, _ selection: Selection<Type, Objects.Capsule?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "capsule",
            arguments: [
                Argument(name: "id", type: "ID!", value: id),
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.capsule[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func company<Type>(_ selection: Selection<Type, Objects.Info?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "company",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.company[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func cores<Type>(find: OptionalArgument<InputObjects.CoresFind> = .absent, limit: OptionalArgument<Int> = .absent, offset: OptionalArgument<Int> = .absent, order: OptionalArgument<String> = .absent, sort: OptionalArgument<String> = .absent, _ selection: Selection<Type, [Objects.Core?]?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "cores",
            arguments: [
                Argument(name: "find", type: "CoresFind", value: find),
                Argument(name: "limit", type: "Int", value: limit),
                Argument(name: "offset", type: "Int", value: offset),
                Argument(name: "order", type: "String", value: order),
                Argument(name: "sort", type: "String", value: sort),
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.cores[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func coresPast<Type>(find: OptionalArgument<InputObjects.CoresFind> = .absent, limit: OptionalArgument<Int> = .absent, offset: OptionalArgument<Int> = .absent, order: OptionalArgument<String> = .absent, sort: OptionalArgument<String> = .absent, _ selection: Selection<Type, [Objects.Core?]?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "coresPast",
            arguments: [
                Argument(name: "find", type: "CoresFind", value: find),
                Argument(name: "limit", type: "Int", value: limit),
                Argument(name: "offset", type: "Int", value: offset),
                Argument(name: "order", type: "String", value: order),
                Argument(name: "sort", type: "String", value: sort),
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.coresPast[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func coresUpcoming<Type>(find: OptionalArgument<InputObjects.CoresFind> = .absent, limit: OptionalArgument<Int> = .absent, offset: OptionalArgument<Int> = .absent, order: OptionalArgument<String> = .absent, sort: OptionalArgument<String> = .absent, _ selection: Selection<Type, [Objects.Core?]?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "coresUpcoming",
            arguments: [
                Argument(name: "find", type: "CoresFind", value: find),
                Argument(name: "limit", type: "Int", value: limit),
                Argument(name: "offset", type: "Int", value: offset),
                Argument(name: "order", type: "String", value: order),
                Argument(name: "sort", type: "String", value: sort),
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.coresUpcoming[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func core<Type>(id: String, _ selection: Selection<Type, Objects.Core?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "core",
            arguments: [
                Argument(name: "id", type: "ID!", value: id),
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.core[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func dragons<Type>(limit: OptionalArgument<Int> = .absent, offset: OptionalArgument<Int> = .absent, _ selection: Selection<Type, [Objects.Dragon?]?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "dragons",
            arguments: [
                Argument(name: "limit", type: "Int", value: limit),
                Argument(name: "offset", type: "Int", value: offset),
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.dragons[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func dragon<Type>(id: String, _ selection: Selection<Type, Objects.Dragon?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "dragon",
            arguments: [
                Argument(name: "id", type: "ID!", value: id),
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.dragon[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func histories<Type>(find: OptionalArgument<InputObjects.HistoryFind> = .absent, limit: OptionalArgument<Int> = .absent, offset: OptionalArgument<Int> = .absent, order: OptionalArgument<String> = .absent, sort: OptionalArgument<String> = .absent, _ selection: Selection<Type, [Objects.History?]?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "histories",
            arguments: [
                Argument(name: "find", type: "HistoryFind", value: find),
                Argument(name: "limit", type: "Int", value: limit),
                Argument(name: "offset", type: "Int", value: offset),
                Argument(name: "order", type: "String", value: order),
                Argument(name: "sort", type: "String", value: sort),
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.histories[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func historiesResult<Type>(find: OptionalArgument<InputObjects.HistoryFind> = .absent, limit: OptionalArgument<Int> = .absent, offset: OptionalArgument<Int> = .absent, order: OptionalArgument<String> = .absent, sort: OptionalArgument<String> = .absent, _ selection: Selection<Type, Objects.HistoriesResult?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "historiesResult",
            arguments: [
                Argument(name: "find", type: "HistoryFind", value: find),
                Argument(name: "limit", type: "Int", value: limit),
                Argument(name: "offset", type: "Int", value: offset),
                Argument(name: "order", type: "String", value: order),
                Argument(name: "sort", type: "String", value: sort),
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.historiesResult[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func history<Type>(id: String, _ selection: Selection<Type, Objects.History?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "history",
            arguments: [
                Argument(name: "id", type: "ID!", value: id),
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.history[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func landpads<Type>(limit: OptionalArgument<Int> = .absent, offset: OptionalArgument<Int> = .absent, _ selection: Selection<Type, [Objects.Landpad?]?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "landpads",
            arguments: [
                Argument(name: "limit", type: "Int", value: limit),
                Argument(name: "offset", type: "Int", value: offset),
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.landpads[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func landpad<Type>(id: String, _ selection: Selection<Type, Objects.Landpad?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "landpad",
            arguments: [
                Argument(name: "id", type: "ID!", value: id),
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.landpad[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func launches<Type>(find: OptionalArgument<InputObjects.LaunchFind> = .absent, limit: OptionalArgument<Int> = .absent, offset: OptionalArgument<Int> = .absent, order: OptionalArgument<String> = .absent, sort: OptionalArgument<String> = .absent, _ selection: Selection<Type, [Objects.Launch?]?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "launches",
            arguments: [
                Argument(name: "find", type: "LaunchFind", value: find),
                Argument(name: "limit", type: "Int", value: limit),
                Argument(name: "offset", type: "Int", value: offset),
                Argument(name: "order", type: "String", value: order),
                Argument(name: "sort", type: "String", value: sort),
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.launches[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func launchesPast<Type>(find: OptionalArgument<InputObjects.LaunchFind> = .absent, limit: OptionalArgument<Int> = .absent, offset: OptionalArgument<Int> = .absent, order: OptionalArgument<String> = .absent, sort: OptionalArgument<String> = .absent, _ selection: Selection<Type, [Objects.Launch?]?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "launchesPast",
            arguments: [
                Argument(name: "find", type: "LaunchFind", value: find),
                Argument(name: "limit", type: "Int", value: limit),
                Argument(name: "offset", type: "Int", value: offset),
                Argument(name: "order", type: "String", value: order),
                Argument(name: "sort", type: "String", value: sort),
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.launchesPast[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func launchesPastResult<Type>(find: OptionalArgument<InputObjects.LaunchFind> = .absent, limit: OptionalArgument<Int> = .absent, offset: OptionalArgument<Int> = .absent, order: OptionalArgument<String> = .absent, sort: OptionalArgument<String> = .absent, _ selection: Selection<Type, Objects.LaunchesPastResult?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "launchesPastResult",
            arguments: [
                Argument(name: "find", type: "LaunchFind", value: find),
                Argument(name: "limit", type: "Int", value: limit),
                Argument(name: "offset", type: "Int", value: offset),
                Argument(name: "order", type: "String", value: order),
                Argument(name: "sort", type: "String", value: sort),
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.launchesPastResult[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func launchesUpcoming<Type>(find: OptionalArgument<InputObjects.LaunchFind> = .absent, limit: OptionalArgument<Int> = .absent, offset: OptionalArgument<Int> = .absent, order: OptionalArgument<String> = .absent, sort: OptionalArgument<String> = .absent, _ selection: Selection<Type, [Objects.Launch?]?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "launchesUpcoming",
            arguments: [
                Argument(name: "find", type: "LaunchFind", value: find),
                Argument(name: "limit", type: "Int", value: limit),
                Argument(name: "offset", type: "Int", value: offset),
                Argument(name: "order", type: "String", value: order),
                Argument(name: "sort", type: "String", value: sort),
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.launchesUpcoming[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func launch<Type>(id: String, _ selection: Selection<Type, Objects.Launch?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "launch",
            arguments: [
                Argument(name: "id", type: "ID!", value: id),
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.launch[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func launchLatest<Type>(offset: OptionalArgument<Int> = .absent, _ selection: Selection<Type, Objects.Launch?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "launchLatest",
            arguments: [
                Argument(name: "offset", type: "Int", value: offset),
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.launchLatest[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func launchNext<Type>(offset: OptionalArgument<Int> = .absent, _ selection: Selection<Type, Objects.Launch?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "launchNext",
            arguments: [
                Argument(name: "offset", type: "Int", value: offset),
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.launchNext[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func launchpads<Type>(limit: OptionalArgument<Int> = .absent, offset: OptionalArgument<Int> = .absent, _ selection: Selection<Type, [Objects.Launchpad?]?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "launchpads",
            arguments: [
                Argument(name: "limit", type: "Int", value: limit),
                Argument(name: "offset", type: "Int", value: offset),
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.launchpads[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func launchpad<Type>(id: String, _ selection: Selection<Type, Objects.Launchpad?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "launchpad",
            arguments: [
                Argument(name: "id", type: "ID!", value: id),
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.launchpad[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func missions<Type>(find: OptionalArgument<InputObjects.MissionsFind> = .absent, limit: OptionalArgument<Int> = .absent, offset: OptionalArgument<Int> = .absent, _ selection: Selection<Type, [Objects.Mission?]?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "missions",
            arguments: [
                Argument(name: "find", type: "MissionsFind", value: find),
                Argument(name: "limit", type: "Int", value: limit),
                Argument(name: "offset", type: "Int", value: offset),
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.missions[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func missionsResult<Type>(find: OptionalArgument<InputObjects.MissionsFind> = .absent, limit: OptionalArgument<Int> = .absent, offset: OptionalArgument<Int> = .absent, _ selection: Selection<Type, Objects.MissionResult?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "missionsResult",
            arguments: [
                Argument(name: "find", type: "MissionsFind", value: find),
                Argument(name: "limit", type: "Int", value: limit),
                Argument(name: "offset", type: "Int", value: offset),
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.missionsResult[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func mission<Type>(id: String, _ selection: Selection<Type, Objects.Mission?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "mission",
            arguments: [
                Argument(name: "id", type: "ID!", value: id),
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.mission[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func payloads<Type>(find: OptionalArgument<InputObjects.PayloadsFind> = .absent, limit: OptionalArgument<Int> = .absent, offset: OptionalArgument<Int> = .absent, order: OptionalArgument<String> = .absent, sort: OptionalArgument<String> = .absent, _ selection: Selection<Type, [Objects.Payload?]?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "payloads",
            arguments: [
                Argument(name: "find", type: "PayloadsFind", value: find),
                Argument(name: "limit", type: "Int", value: limit),
                Argument(name: "offset", type: "Int", value: offset),
                Argument(name: "order", type: "String", value: order),
                Argument(name: "sort", type: "String", value: sort),
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.payloads[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func payload<Type>(id: String, _ selection: Selection<Type, Objects.Payload?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "payload",
            arguments: [
                Argument(name: "id", type: "ID!", value: id),
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.payload[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func roadster<Type>(_ selection: Selection<Type, Objects.Roadster?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "roadster",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.roadster[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func rockets<Type>(limit: OptionalArgument<Int> = .absent, offset: OptionalArgument<Int> = .absent, _ selection: Selection<Type, [Objects.Rocket?]?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "rockets",
            arguments: [
                Argument(name: "limit", type: "Int", value: limit),
                Argument(name: "offset", type: "Int", value: offset),
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.rockets[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func rocketsResult<Type>(limit: OptionalArgument<Int> = .absent, offset: OptionalArgument<Int> = .absent, _ selection: Selection<Type, Objects.RocketsResult?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "rocketsResult",
            arguments: [
                Argument(name: "limit", type: "Int", value: limit),
                Argument(name: "offset", type: "Int", value: offset),
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.rocketsResult[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func rocket<Type>(id: String, _ selection: Selection<Type, Objects.Rocket?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "rocket",
            arguments: [
                Argument(name: "id", type: "ID!", value: id),
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.rocket[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func ships<Type>(find: OptionalArgument<InputObjects.ShipsFind> = .absent, limit: OptionalArgument<Int> = .absent, offset: OptionalArgument<Int> = .absent, order: OptionalArgument<String> = .absent, sort: OptionalArgument<String> = .absent, _ selection: Selection<Type, [Objects.Ship?]?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "ships",
            arguments: [
                Argument(name: "find", type: "ShipsFind", value: find),
                Argument(name: "limit", type: "Int", value: limit),
                Argument(name: "offset", type: "Int", value: offset),
                Argument(name: "order", type: "String", value: order),
                Argument(name: "sort", type: "String", value: sort),
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.ships[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func shipsResult<Type>(find: OptionalArgument<InputObjects.ShipsFind> = .absent, limit: OptionalArgument<Int> = .absent, offset: OptionalArgument<Int> = .absent, order: OptionalArgument<String> = .absent, sort: OptionalArgument<String> = .absent, _ selection: Selection<Type, Objects.ShipsResult?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "shipsResult",
            arguments: [
                Argument(name: "find", type: "ShipsFind", value: find),
                Argument(name: "limit", type: "Int", value: limit),
                Argument(name: "offset", type: "Int", value: offset),
                Argument(name: "order", type: "String", value: order),
                Argument(name: "sort", type: "String", value: sort),
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.shipsResult[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func ship<Type>(id: String, _ selection: Selection<Type, Objects.Ship?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "ship",
            arguments: [
                Argument(name: "id", type: "ID!", value: id),
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.ship[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
}


/* Mutation */

extension Operations {
    struct Mutation: Encodable {
    
        /* Mutation */
    
        /* Properties */
        let deleteUsers: [String: Objects.UsersMutationResponse]
        let insertUsers: [String: Objects.UsersMutationResponse]
        let updateUsers: [String: Objects.UsersMutationResponse]
    }
}

extension Operations.Mutation: GraphQLHttpOperation {
    static var operation: String { "mutation" } 
}

extension Operations.Mutation: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "deleteUsers":
                    if let value = try container.decode(Objects.UsersMutationResponse?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "insertUsers":
                    if let value = try container.decode(Objects.UsersMutationResponse?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "updateUsers":
                    if let value = try container.decode(Objects.UsersMutationResponse?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.deleteUsers = map["deleteUsers"]
        self.insertUsers = map["insertUsers"]
        self.updateUsers = map["updateUsers"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Operations.Mutation {
    /// delete data from the table: "users"
    func deleteUsers<Type>(`where`: InputObjects.UsersBoolExp, _ selection: Selection<Type, Objects.UsersMutationResponse?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "delete_users",
            arguments: [
                Argument(name: "where", type: "users_bool_exp!", value: `where`),
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.deleteUsers[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// insert data into the table: "users"
    func insertUsers<Type>(objects: [InputObjects.UsersInsertInput], onConflict: OptionalArgument<InputObjects.UsersOnConflict> = .absent, _ selection: Selection<Type, Objects.UsersMutationResponse?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "insert_users",
            arguments: [
                Argument(name: "objects", type: "[users_insert_input!]!", value: objects),
                Argument(name: "onConflict", type: "users_on_conflict", value: onConflict),
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.insertUsers[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// update data of the table: "users"
    func updateUsers<Type>(set: OptionalArgument<InputObjects.UsersSetInput> = .absent, `where`: InputObjects.UsersBoolExp, _ selection: Selection<Type, Objects.UsersMutationResponse?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "update_users",
            arguments: [
                Argument(name: "set", type: "users_set_input", value: set),
                Argument(name: "where", type: "users_bool_exp!", value: `where`),
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.updateUsers[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
}


/* Subscription */

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Operations {
    struct Subscription: Encodable {
    
        /* Subscription */
    
        /* Properties */
        let users: [String: [Objects.Users]]
        let usersAggregate: [String: Objects.UsersAggregate]
        let usersByPk: [String: Objects.Users]
    }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Operations.Subscription: GraphQLWebSocketOperation {
    static var operation: String { "subscription" } 
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Operations.Subscription: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "users":
                    if let value = try container.decode([Objects.Users]?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "usersAggregate":
                    if let value = try container.decode(Objects.UsersAggregate?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "usersByPk":
                    if let value = try container.decode(Objects.Users?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.users = map["users"]
        self.usersAggregate = map["usersAggregate"]
        self.usersByPk = map["usersByPk"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Fields where TypeLock == Operations.Subscription {
    /// fetch data from the table: "users"
    func users<Type>(distinctOn: OptionalArgument<[Enums.UsersSelectColumn]> = .absent, limit: OptionalArgument<Int> = .absent, offset: OptionalArgument<Int> = .absent, orderBy: OptionalArgument<[InputObjects.UsersOrderBy]> = .absent, `where`: OptionalArgument<InputObjects.UsersBoolExp> = .absent, _ selection: Selection<Type, [Objects.Users]>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "users",
            arguments: [
                Argument(name: "distinctOn", type: "[users_select_column!]", value: distinctOn),
                Argument(name: "limit", type: "Int", value: limit),
                Argument(name: "offset", type: "Int", value: offset),
                Argument(name: "orderBy", type: "[users_order_by!]", value: orderBy),
                Argument(name: "where", type: "users_bool_exp", value: `where`),
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            if let data = data.users[field.alias!] {
                return try selection.decode(data: data)
            }
            throw SG.HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }
    /// fetch aggregated fields from the table: "users"
    func usersAggregate<Type>(distinctOn: OptionalArgument<[Enums.UsersSelectColumn]> = .absent, limit: OptionalArgument<Int> = .absent, offset: OptionalArgument<Int> = .absent, orderBy: OptionalArgument<[InputObjects.UsersOrderBy]> = .absent, `where`: OptionalArgument<InputObjects.UsersBoolExp> = .absent, _ selection: Selection<Type, Objects.UsersAggregate>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "users_aggregate",
            arguments: [
                Argument(name: "distinctOn", type: "[users_select_column!]", value: distinctOn),
                Argument(name: "limit", type: "Int", value: limit),
                Argument(name: "offset", type: "Int", value: offset),
                Argument(name: "orderBy", type: "[users_order_by!]", value: orderBy),
                Argument(name: "where", type: "users_bool_exp", value: `where`),
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            if let data = data.usersAggregate[field.alias!] {
                return try selection.decode(data: data)
            }
            throw SG.HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }
    /// fetch data from the table: "users" using primary key columns
    func usersByPk<Type>(id: String, _ selection: Selection<Type, Objects.Users?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "users_by_pk",
            arguments: [
                Argument(name: "id", type: "uuid!", value: id),
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.usersByPk[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
}

// MARK: - Objects

enum Objects {}

/* Users */

extension Objects {
    struct Users: Encodable {
    
        /* Users */
    
        /* Properties */
        let id: [String: String]
        let name: [String: String]
        let rocket: [String: String]
        let timestamp: [String: String]
        let twitter: [String: String]
    }
}
extension Objects.Users: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "id":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "name":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "rocket":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "timestamp":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "twitter":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.id = map["id"]
        self.name = map["name"]
        self.rocket = map["rocket"]
        self.timestamp = map["timestamp"]
        self.twitter = map["twitter"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.Users {
    /// 
    func id() throws -> String {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "id",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            if let data = data.id[field.alias!] {
                return data
            }
            throw SG.HttpError.badpayload
        case .mocking:
            return String.mockValue
        }
    }
    /// 
    func name() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "name",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.name[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func rocket() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "rocket",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.rocket[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func timestamp() throws -> String {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "timestamp",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            if let data = data.timestamp[field.alias!] {
                return data
            }
            throw SG.HttpError.badpayload
        case .mocking:
            return String.mockValue
        }
    }
    /// 
    func twitter() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "twitter",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.twitter[field.alias!]
        case .mocking:
            return nil
        }
    }
}


/* UsersAggregate */

extension Objects {
    struct UsersAggregate: Encodable {
    
        /* UsersAggregate */
    
        /* Properties */
        let aggregate: [String: Objects.UsersAggregateFields]
        let nodes: [String: [Objects.Users]]
    }
}
extension Objects.UsersAggregate: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "aggregate":
                    if let value = try container.decode(Objects.UsersAggregateFields?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "nodes":
                    if let value = try container.decode([Objects.Users]?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.aggregate = map["aggregate"]
        self.nodes = map["nodes"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.UsersAggregate {
    /// 
    func aggregate<Type>(_ selection: Selection<Type, Objects.UsersAggregateFields?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "aggregate",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.aggregate[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func nodes<Type>(_ selection: Selection<Type, [Objects.Users]>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "nodes",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            if let data = data.nodes[field.alias!] {
                return try selection.decode(data: data)
            }
            throw SG.HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }
}


/* UsersAggregateFields */

extension Objects {
    struct UsersAggregateFields: Encodable {
    
        /* UsersAggregateFields */
    
        /* Properties */
        let count: [String: Int]
        let max: [String: Objects.UsersMaxFields]
        let min: [String: Objects.UsersMinFields]
    }
}
extension Objects.UsersAggregateFields: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "count":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "max":
                    if let value = try container.decode(Objects.UsersMaxFields?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "min":
                    if let value = try container.decode(Objects.UsersMinFields?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.count = map["count"]
        self.max = map["max"]
        self.min = map["min"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.UsersAggregateFields {
    /// 
    func count(columns: OptionalArgument<[Enums.UsersSelectColumn]> = .absent, distinct: OptionalArgument<Bool> = .absent) throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "count",
            arguments: [
                Argument(name: "columns", type: "[users_select_column!]", value: columns),
                Argument(name: "distinct", type: "Boolean", value: distinct),
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.count[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func max<Type>(_ selection: Selection<Type, Objects.UsersMaxFields?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "max",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.max[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func min<Type>(_ selection: Selection<Type, Objects.UsersMinFields?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "min",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.min[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
}


/* UsersMaxFields */

extension Objects {
    struct UsersMaxFields: Encodable {
    
        /* UsersMaxFields */
    
        /* Properties */
        let name: [String: String]
        let rocket: [String: String]
        let timestamp: [String: String]
        let twitter: [String: String]
    }
}
extension Objects.UsersMaxFields: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "name":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "rocket":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "timestamp":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "twitter":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.name = map["name"]
        self.rocket = map["rocket"]
        self.timestamp = map["timestamp"]
        self.twitter = map["twitter"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.UsersMaxFields {
    /// 
    func name() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "name",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.name[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func rocket() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "rocket",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.rocket[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func timestamp() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "timestamp",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.timestamp[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func twitter() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "twitter",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.twitter[field.alias!]
        case .mocking:
            return nil
        }
    }
}


/* UsersMinFields */

extension Objects {
    struct UsersMinFields: Encodable {
    
        /* UsersMinFields */
    
        /* Properties */
        let name: [String: String]
        let rocket: [String: String]
        let timestamp: [String: String]
        let twitter: [String: String]
    }
}
extension Objects.UsersMinFields: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "name":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "rocket":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "timestamp":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "twitter":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.name = map["name"]
        self.rocket = map["rocket"]
        self.timestamp = map["timestamp"]
        self.twitter = map["twitter"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.UsersMinFields {
    /// 
    func name() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "name",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.name[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func rocket() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "rocket",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.rocket[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func timestamp() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "timestamp",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.timestamp[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func twitter() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "twitter",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.twitter[field.alias!]
        case .mocking:
            return nil
        }
    }
}


/* Capsule */

extension Objects {
    struct Capsule: Encodable {
    
        /* Capsule */
    
        /* Properties */
        let id: [String: String]
        let landings: [String: Int]
        let missions: [String: [Objects.CapsuleMission?]]
        let originalLaunch: [String: String]
        let reuseCount: [String: Int]
        let status: [String: String]
        let type: [String: String]
        let dragon: [String: Objects.Dragon]
    }
}
extension Objects.Capsule: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "id":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "landings":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "missions":
                    if let value = try container.decode([Objects.CapsuleMission?]?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "originalLaunch":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "reuseCount":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "status":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "type":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "dragon":
                    if let value = try container.decode(Objects.Dragon?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.id = map["id"]
        self.landings = map["landings"]
        self.missions = map["missions"]
        self.originalLaunch = map["originalLaunch"]
        self.reuseCount = map["reuseCount"]
        self.status = map["status"]
        self.type = map["type"]
        self.dragon = map["dragon"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.Capsule {
    /// 
    func id() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "id",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.id[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func landings() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "landings",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.landings[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func missions<Type>(_ selection: Selection<Type, [Objects.CapsuleMission?]?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "missions",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.missions[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func originalLaunch() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "original_launch",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.originalLaunch[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func reuseCount() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "reuse_count",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.reuseCount[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func status() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "status",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.status[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func type() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "type",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.type[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func dragon<Type>(_ selection: Selection<Type, Objects.Dragon?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "dragon",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.dragon[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
}


/* CapsuleMission */

extension Objects {
    struct CapsuleMission: Encodable {
    
        /* CapsuleMission */
    
        /* Properties */
        let flight: [String: Int]
        let name: [String: String]
    }
}
extension Objects.CapsuleMission: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "flight":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "name":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.flight = map["flight"]
        self.name = map["name"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.CapsuleMission {
    /// 
    func flight() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "flight",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.flight[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func name() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "name",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.name[field.alias!]
        case .mocking:
            return nil
        }
    }
}


/* Dragon */

extension Objects {
    struct Dragon: Encodable {
    
        /* Dragon */
    
        /* Properties */
        let active: [String: Bool]
        let crewCapacity: [String: Int]
        let description: [String: String]
        let diameter: [String: Objects.Distance]
        let dryMassKg: [String: Int]
        let dryMassLb: [String: Int]
        let firstFlight: [String: String]
        let heatShield: [String: Objects.DragonHeatShield]
        let heightWTrunk: [String: Objects.Distance]
        let id: [String: String]
        let launchPayloadMass: [String: Objects.Mass]
        let launchPayloadVol: [String: Objects.Volume]
        let name: [String: String]
        let orbitDurationYr: [String: Int]
        let pressurizedCapsule: [String: Objects.DragonPressurizedCapsule]
        let returnPayloadMass: [String: Objects.Mass]
        let returnPayloadVol: [String: Objects.Volume]
        let sidewallAngleDeg: [String: Double]
        let thrusters: [String: [Objects.DragonThrust?]]
        let trunk: [String: Objects.DragonTrunk]
        let type: [String: String]
        let wikipedia: [String: String]
    }
}
extension Objects.Dragon: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "active":
                    if let value = try container.decode(Bool?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "crewCapacity":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "description":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "diameter":
                    if let value = try container.decode(Objects.Distance?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "dryMassKg":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "dryMassLb":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "firstFlight":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "heatShield":
                    if let value = try container.decode(Objects.DragonHeatShield?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "heightWTrunk":
                    if let value = try container.decode(Objects.Distance?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "id":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "launchPayloadMass":
                    if let value = try container.decode(Objects.Mass?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "launchPayloadVol":
                    if let value = try container.decode(Objects.Volume?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "name":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "orbitDurationYr":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "pressurizedCapsule":
                    if let value = try container.decode(Objects.DragonPressurizedCapsule?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "returnPayloadMass":
                    if let value = try container.decode(Objects.Mass?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "returnPayloadVol":
                    if let value = try container.decode(Objects.Volume?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "sidewallAngleDeg":
                    if let value = try container.decode(Double?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "thrusters":
                    if let value = try container.decode([Objects.DragonThrust?]?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "trunk":
                    if let value = try container.decode(Objects.DragonTrunk?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "type":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "wikipedia":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.active = map["active"]
        self.crewCapacity = map["crewCapacity"]
        self.description = map["description"]
        self.diameter = map["diameter"]
        self.dryMassKg = map["dryMassKg"]
        self.dryMassLb = map["dryMassLb"]
        self.firstFlight = map["firstFlight"]
        self.heatShield = map["heatShield"]
        self.heightWTrunk = map["heightWTrunk"]
        self.id = map["id"]
        self.launchPayloadMass = map["launchPayloadMass"]
        self.launchPayloadVol = map["launchPayloadVol"]
        self.name = map["name"]
        self.orbitDurationYr = map["orbitDurationYr"]
        self.pressurizedCapsule = map["pressurizedCapsule"]
        self.returnPayloadMass = map["returnPayloadMass"]
        self.returnPayloadVol = map["returnPayloadVol"]
        self.sidewallAngleDeg = map["sidewallAngleDeg"]
        self.thrusters = map["thrusters"]
        self.trunk = map["trunk"]
        self.type = map["type"]
        self.wikipedia = map["wikipedia"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.Dragon {
    /// 
    func active() throws -> Bool? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "active",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.active[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func crewCapacity() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "crew_capacity",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.crewCapacity[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func description() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "description",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.description[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func diameter<Type>(_ selection: Selection<Type, Objects.Distance?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "diameter",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.diameter[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func dryMassKg() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "dry_mass_kg",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.dryMassKg[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func dryMassLb() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "dry_mass_lb",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.dryMassLb[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func firstFlight() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "first_flight",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.firstFlight[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func heatShield<Type>(_ selection: Selection<Type, Objects.DragonHeatShield?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "heat_shield",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.heatShield[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func heightWTrunk<Type>(_ selection: Selection<Type, Objects.Distance?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "height_w_trunk",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.heightWTrunk[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func id() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "id",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.id[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func launchPayloadMass<Type>(_ selection: Selection<Type, Objects.Mass?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "launch_payload_mass",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.launchPayloadMass[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func launchPayloadVol<Type>(_ selection: Selection<Type, Objects.Volume?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "launch_payload_vol",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.launchPayloadVol[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func name() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "name",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.name[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func orbitDurationYr() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "orbit_duration_yr",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.orbitDurationYr[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func pressurizedCapsule<Type>(_ selection: Selection<Type, Objects.DragonPressurizedCapsule?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "pressurized_capsule",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.pressurizedCapsule[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func returnPayloadMass<Type>(_ selection: Selection<Type, Objects.Mass?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "return_payload_mass",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.returnPayloadMass[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func returnPayloadVol<Type>(_ selection: Selection<Type, Objects.Volume?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "return_payload_vol",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.returnPayloadVol[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func sidewallAngleDeg() throws -> Double? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "sidewall_angle_deg",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.sidewallAngleDeg[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func thrusters<Type>(_ selection: Selection<Type, [Objects.DragonThrust?]?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "thrusters",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.thrusters[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func trunk<Type>(_ selection: Selection<Type, Objects.DragonTrunk?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "trunk",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.trunk[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func type() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "type",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.type[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func wikipedia() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "wikipedia",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.wikipedia[field.alias!]
        case .mocking:
            return nil
        }
    }
}


/* Distance */

extension Objects {
    struct Distance: Encodable {
    
        /* Distance */
    
        /* Properties */
        let feet: [String: Double]
        let meters: [String: Double]
    }
}
extension Objects.Distance: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "feet":
                    if let value = try container.decode(Double?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "meters":
                    if let value = try container.decode(Double?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.feet = map["feet"]
        self.meters = map["meters"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.Distance {
    /// 
    func feet() throws -> Double? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "feet",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.feet[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func meters() throws -> Double? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "meters",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.meters[field.alias!]
        case .mocking:
            return nil
        }
    }
}


/* DragonHeatShield */

extension Objects {
    struct DragonHeatShield: Encodable {
    
        /* DragonHeatShield */
    
        /* Properties */
        let devPartner: [String: String]
        let material: [String: String]
        let sizeMeters: [String: Double]
        let tempDegrees: [String: Int]
    }
}
extension Objects.DragonHeatShield: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "devPartner":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "material":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "sizeMeters":
                    if let value = try container.decode(Double?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "tempDegrees":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.devPartner = map["devPartner"]
        self.material = map["material"]
        self.sizeMeters = map["sizeMeters"]
        self.tempDegrees = map["tempDegrees"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.DragonHeatShield {
    /// 
    func devPartner() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "dev_partner",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.devPartner[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func material() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "material",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.material[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func sizeMeters() throws -> Double? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "size_meters",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.sizeMeters[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func tempDegrees() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "temp_degrees",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.tempDegrees[field.alias!]
        case .mocking:
            return nil
        }
    }
}


/* Mass */

extension Objects {
    struct Mass: Encodable {
    
        /* Mass */
    
        /* Properties */
        let kg: [String: Int]
        let lb: [String: Int]
    }
}
extension Objects.Mass: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "kg":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "lb":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.kg = map["kg"]
        self.lb = map["lb"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.Mass {
    /// 
    func kg() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "kg",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.kg[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func lb() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "lb",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.lb[field.alias!]
        case .mocking:
            return nil
        }
    }
}


/* Volume */

extension Objects {
    struct Volume: Encodable {
    
        /* Volume */
    
        /* Properties */
        let cubicFeet: [String: Int]
        let cubicMeters: [String: Int]
    }
}
extension Objects.Volume: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "cubicFeet":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "cubicMeters":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.cubicFeet = map["cubicFeet"]
        self.cubicMeters = map["cubicMeters"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.Volume {
    /// 
    func cubicFeet() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "cubic_feet",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.cubicFeet[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func cubicMeters() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "cubic_meters",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.cubicMeters[field.alias!]
        case .mocking:
            return nil
        }
    }
}


/* DragonPressurizedCapsule */

extension Objects {
    struct DragonPressurizedCapsule: Encodable {
    
        /* DragonPressurizedCapsule */
    
        /* Properties */
        let payloadVolume: [String: Objects.Volume]
    }
}
extension Objects.DragonPressurizedCapsule: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "payloadVolume":
                    if let value = try container.decode(Objects.Volume?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.payloadVolume = map["payloadVolume"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.DragonPressurizedCapsule {
    /// 
    func payloadVolume<Type>(_ selection: Selection<Type, Objects.Volume?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "payload_volume",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.payloadVolume[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
}


/* DragonThrust */

extension Objects {
    struct DragonThrust: Encodable {
    
        /* DragonThrust */
    
        /* Properties */
        let amount: [String: Int]
        let fuel1: [String: String]
        let fuel2: [String: String]
        let pods: [String: Int]
        let thrust: [String: Objects.Force]
        let type: [String: String]
    }
}
extension Objects.DragonThrust: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "amount":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "fuel1":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "fuel2":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "pods":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "thrust":
                    if let value = try container.decode(Objects.Force?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "type":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.amount = map["amount"]
        self.fuel1 = map["fuel1"]
        self.fuel2 = map["fuel2"]
        self.pods = map["pods"]
        self.thrust = map["thrust"]
        self.type = map["type"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.DragonThrust {
    /// 
    func amount() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "amount",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.amount[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func fuel1() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "fuel_1",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.fuel1[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func fuel2() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "fuel_2",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.fuel2[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func pods() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "pods",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.pods[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func thrust<Type>(_ selection: Selection<Type, Objects.Force?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "thrust",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.thrust[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func type() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "type",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.type[field.alias!]
        case .mocking:
            return nil
        }
    }
}


/* Force */

extension Objects {
    struct Force: Encodable {
    
        /* Force */
    
        /* Properties */
        let kN: [String: Double]
        let lbf: [String: Double]
    }
}
extension Objects.Force: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "kN":
                    if let value = try container.decode(Double?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "lbf":
                    if let value = try container.decode(Double?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.kN = map["kN"]
        self.lbf = map["lbf"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.Force {
    /// 
    func kN() throws -> Double? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "kN",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.kN[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func lbf() throws -> Double? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "lbf",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.lbf[field.alias!]
        case .mocking:
            return nil
        }
    }
}


/* DragonTrunk */

extension Objects {
    struct DragonTrunk: Encodable {
    
        /* DragonTrunk */
    
        /* Properties */
        let cargo: [String: Objects.DragonTrunkCargo]
        let trunkVolume: [String: Objects.Volume]
    }
}
extension Objects.DragonTrunk: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "cargo":
                    if let value = try container.decode(Objects.DragonTrunkCargo?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "trunkVolume":
                    if let value = try container.decode(Objects.Volume?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.cargo = map["cargo"]
        self.trunkVolume = map["trunkVolume"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.DragonTrunk {
    /// 
    func cargo<Type>(_ selection: Selection<Type, Objects.DragonTrunkCargo?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "cargo",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.cargo[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func trunkVolume<Type>(_ selection: Selection<Type, Objects.Volume?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "trunk_volume",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.trunkVolume[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
}


/* DragonTrunkCargo */

extension Objects {
    struct DragonTrunkCargo: Encodable {
    
        /* DragonTrunkCargo */
    
        /* Properties */
        let solarArray: [String: Int]
        let unpressurizedCargo: [String: Bool]
    }
}
extension Objects.DragonTrunkCargo: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "solarArray":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "unpressurizedCargo":
                    if let value = try container.decode(Bool?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.solarArray = map["solarArray"]
        self.unpressurizedCargo = map["unpressurizedCargo"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.DragonTrunkCargo {
    /// 
    func solarArray() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "solar_array",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.solarArray[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func unpressurizedCargo() throws -> Bool? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "unpressurized_cargo",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.unpressurizedCargo[field.alias!]
        case .mocking:
            return nil
        }
    }
}


/* Info */

extension Objects {
    struct Info: Encodable {
    
        /* Info */
    
        /* Properties */
        let ceo: [String: String]
        let coo: [String: String]
        let ctoPropulsion: [String: String]
        let cto: [String: String]
        let employees: [String: Int]
        let founded: [String: Int]
        let founder: [String: String]
        let headquarters: [String: Objects.Address]
        let launchSites: [String: Int]
        let links: [String: Objects.InfoLinks]
        let name: [String: String]
        let summary: [String: String]
        let testSites: [String: Int]
        let valuation: [String: Double]
        let vehicles: [String: Int]
    }
}
extension Objects.Info: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "ceo":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "coo":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "ctoPropulsion":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "cto":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "employees":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "founded":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "founder":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "headquarters":
                    if let value = try container.decode(Objects.Address?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "launchSites":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "links":
                    if let value = try container.decode(Objects.InfoLinks?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "name":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "summary":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "testSites":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "valuation":
                    if let value = try container.decode(Double?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "vehicles":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.ceo = map["ceo"]
        self.coo = map["coo"]
        self.ctoPropulsion = map["ctoPropulsion"]
        self.cto = map["cto"]
        self.employees = map["employees"]
        self.founded = map["founded"]
        self.founder = map["founder"]
        self.headquarters = map["headquarters"]
        self.launchSites = map["launchSites"]
        self.links = map["links"]
        self.name = map["name"]
        self.summary = map["summary"]
        self.testSites = map["testSites"]
        self.valuation = map["valuation"]
        self.vehicles = map["vehicles"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.Info {
    /// 
    func ceo() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "ceo",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.ceo[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func coo() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "coo",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.coo[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func ctoPropulsion() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "cto_propulsion",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.ctoPropulsion[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func cto() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "cto",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.cto[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func employees() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "employees",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.employees[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func founded() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "founded",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.founded[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func founder() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "founder",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.founder[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func headquarters<Type>(_ selection: Selection<Type, Objects.Address?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "headquarters",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.headquarters[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func launchSites() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "launch_sites",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.launchSites[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func links<Type>(_ selection: Selection<Type, Objects.InfoLinks?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "links",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.links[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func name() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "name",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.name[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func summary() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "summary",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.summary[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func testSites() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "test_sites",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.testSites[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func valuation() throws -> Double? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "valuation",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.valuation[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func vehicles() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "vehicles",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.vehicles[field.alias!]
        case .mocking:
            return nil
        }
    }
}


/* Address */

extension Objects {
    struct Address: Encodable {
    
        /* Address */
    
        /* Properties */
        let address: [String: String]
        let city: [String: String]
        let state: [String: String]
    }
}
extension Objects.Address: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "address":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "city":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "state":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.address = map["address"]
        self.city = map["city"]
        self.state = map["state"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.Address {
    /// 
    func address() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "address",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.address[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func city() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "city",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.city[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func state() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "state",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.state[field.alias!]
        case .mocking:
            return nil
        }
    }
}


/* InfoLinks */

extension Objects {
    struct InfoLinks: Encodable {
    
        /* InfoLinks */
    
        /* Properties */
        let elonTwitter: [String: String]
        let flickr: [String: String]
        let twitter: [String: String]
        let website: [String: String]
    }
}
extension Objects.InfoLinks: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "elonTwitter":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "flickr":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "twitter":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "website":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.elonTwitter = map["elonTwitter"]
        self.flickr = map["flickr"]
        self.twitter = map["twitter"]
        self.website = map["website"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.InfoLinks {
    /// 
    func elonTwitter() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "elon_twitter",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.elonTwitter[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func flickr() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "flickr",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.flickr[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func twitter() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "twitter",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.twitter[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func website() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "website",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.website[field.alias!]
        case .mocking:
            return nil
        }
    }
}


/* Core */

extension Objects {
    struct Core: Encodable {
    
        /* Core */
    
        /* Properties */
        let asdsAttempts: [String: Int]
        let asdsLandings: [String: Int]
        let block: [String: Int]
        let id: [String: String]
        let missions: [String: [Objects.CapsuleMission?]]
        let originalLaunch: [String: String]
        let reuseCount: [String: Int]
        let rtlsAttempts: [String: Int]
        let rtlsLandings: [String: Int]
        let status: [String: String]
        let waterLanding: [String: Bool]
    }
}
extension Objects.Core: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "asdsAttempts":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "asdsLandings":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "block":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "id":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "missions":
                    if let value = try container.decode([Objects.CapsuleMission?]?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "originalLaunch":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "reuseCount":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "rtlsAttempts":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "rtlsLandings":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "status":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "waterLanding":
                    if let value = try container.decode(Bool?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.asdsAttempts = map["asdsAttempts"]
        self.asdsLandings = map["asdsLandings"]
        self.block = map["block"]
        self.id = map["id"]
        self.missions = map["missions"]
        self.originalLaunch = map["originalLaunch"]
        self.reuseCount = map["reuseCount"]
        self.rtlsAttempts = map["rtlsAttempts"]
        self.rtlsLandings = map["rtlsLandings"]
        self.status = map["status"]
        self.waterLanding = map["waterLanding"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.Core {
    /// 
    func asdsAttempts() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "asds_attempts",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.asdsAttempts[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func asdsLandings() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "asds_landings",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.asdsLandings[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func block() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "block",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.block[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func id() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "id",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.id[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func missions<Type>(_ selection: Selection<Type, [Objects.CapsuleMission?]?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "missions",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.missions[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func originalLaunch() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "original_launch",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.originalLaunch[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func reuseCount() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "reuse_count",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.reuseCount[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func rtlsAttempts() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "rtls_attempts",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.rtlsAttempts[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func rtlsLandings() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "rtls_landings",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.rtlsLandings[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func status() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "status",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.status[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func waterLanding() throws -> Bool? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "water_landing",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.waterLanding[field.alias!]
        case .mocking:
            return nil
        }
    }
}


/* History */

extension Objects {
    struct History: Encodable {
    
        /* History */
    
        /* Properties */
        let details: [String: String]
        let eventDateUnix: [String: String]
        let eventDateUtc: [String: String]
        let id: [String: String]
        let links: [String: Objects.Link]
        let title: [String: String]
        let flight: [String: Objects.Launch]
    }
}
extension Objects.History: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "details":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "eventDateUnix":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "eventDateUtc":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "id":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "links":
                    if let value = try container.decode(Objects.Link?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "title":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "flight":
                    if let value = try container.decode(Objects.Launch?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.details = map["details"]
        self.eventDateUnix = map["eventDateUnix"]
        self.eventDateUtc = map["eventDateUtc"]
        self.id = map["id"]
        self.links = map["links"]
        self.title = map["title"]
        self.flight = map["flight"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.History {
    /// 
    func details() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "details",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.details[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func eventDateUnix() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "event_date_unix",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.eventDateUnix[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func eventDateUtc() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "event_date_utc",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.eventDateUtc[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func id() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "id",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.id[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func links<Type>(_ selection: Selection<Type, Objects.Link?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "links",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.links[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func title() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "title",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.title[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func flight<Type>(_ selection: Selection<Type, Objects.Launch?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "flight",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.flight[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
}


/* Link */

extension Objects {
    struct Link: Encodable {
    
        /* Link */
    
        /* Properties */
        let article: [String: String]
        let reddit: [String: String]
        let wikipedia: [String: String]
    }
}
extension Objects.Link: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "article":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "reddit":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "wikipedia":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.article = map["article"]
        self.reddit = map["reddit"]
        self.wikipedia = map["wikipedia"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.Link {
    /// 
    func article() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "article",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.article[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func reddit() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "reddit",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.reddit[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func wikipedia() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "wikipedia",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.wikipedia[field.alias!]
        case .mocking:
            return nil
        }
    }
}


/* Launch */

extension Objects {
    struct Launch: Encodable {
    
        /* Launch */
    
        /* Properties */
        let details: [String: String]
        let id: [String: String]
        let isTentative: [String: Bool]
        let launchDateLocal: [String: String]
        let launchDateUnix: [String: String]
        let launchDateUtc: [String: String]
        let launchSite: [String: Objects.LaunchSite]
        let launchSuccess: [String: Bool]
        let launchYear: [String: String]
        let links: [String: Objects.LaunchLinks]
        let missionId: [String: [String?]]
        let missionName: [String: String]
        let rocket: [String: Objects.LaunchRocket]
        let staticFireDateUnix: [String: String]
        let staticFireDateUtc: [String: String]
        let telemetry: [String: Objects.LaunchTelemetry]
        let tentativeMaxPrecision: [String: String]
        let upcoming: [String: Bool]
        let ships: [String: [Objects.Ship?]]
    }
}
extension Objects.Launch: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "details":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "id":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "isTentative":
                    if let value = try container.decode(Bool?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "launchDateLocal":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "launchDateUnix":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "launchDateUtc":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "launchSite":
                    if let value = try container.decode(Objects.LaunchSite?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "launchSuccess":
                    if let value = try container.decode(Bool?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "launchYear":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "links":
                    if let value = try container.decode(Objects.LaunchLinks?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "missionId":
                    if let value = try container.decode([String?]?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "missionName":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "rocket":
                    if let value = try container.decode(Objects.LaunchRocket?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "staticFireDateUnix":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "staticFireDateUtc":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "telemetry":
                    if let value = try container.decode(Objects.LaunchTelemetry?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "tentativeMaxPrecision":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "upcoming":
                    if let value = try container.decode(Bool?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "ships":
                    if let value = try container.decode([Objects.Ship?]?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.details = map["details"]
        self.id = map["id"]
        self.isTentative = map["isTentative"]
        self.launchDateLocal = map["launchDateLocal"]
        self.launchDateUnix = map["launchDateUnix"]
        self.launchDateUtc = map["launchDateUtc"]
        self.launchSite = map["launchSite"]
        self.launchSuccess = map["launchSuccess"]
        self.launchYear = map["launchYear"]
        self.links = map["links"]
        self.missionId = map["missionId"]
        self.missionName = map["missionName"]
        self.rocket = map["rocket"]
        self.staticFireDateUnix = map["staticFireDateUnix"]
        self.staticFireDateUtc = map["staticFireDateUtc"]
        self.telemetry = map["telemetry"]
        self.tentativeMaxPrecision = map["tentativeMaxPrecision"]
        self.upcoming = map["upcoming"]
        self.ships = map["ships"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.Launch {
    /// 
    func details() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "details",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.details[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func id() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "id",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.id[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func isTentative() throws -> Bool? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "is_tentative",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.isTentative[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func launchDateLocal() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "launch_date_local",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.launchDateLocal[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func launchDateUnix() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "launch_date_unix",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.launchDateUnix[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func launchDateUtc() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "launch_date_utc",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.launchDateUtc[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func launchSite<Type>(_ selection: Selection<Type, Objects.LaunchSite?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "launch_site",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.launchSite[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func launchSuccess() throws -> Bool? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "launch_success",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.launchSuccess[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func launchYear() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "launch_year",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.launchYear[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func links<Type>(_ selection: Selection<Type, Objects.LaunchLinks?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "links",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.links[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func missionId() throws -> [String?]? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "mission_id",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.missionId[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func missionName() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "mission_name",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.missionName[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func rocket<Type>(_ selection: Selection<Type, Objects.LaunchRocket?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "rocket",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.rocket[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func staticFireDateUnix() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "static_fire_date_unix",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.staticFireDateUnix[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func staticFireDateUtc() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "static_fire_date_utc",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.staticFireDateUtc[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func telemetry<Type>(_ selection: Selection<Type, Objects.LaunchTelemetry?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "telemetry",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.telemetry[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func tentativeMaxPrecision() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "tentative_max_precision",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.tentativeMaxPrecision[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func upcoming() throws -> Bool? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "upcoming",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.upcoming[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func ships<Type>(_ selection: Selection<Type, [Objects.Ship?]?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "ships",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.ships[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
}


/* LaunchSite */

extension Objects {
    struct LaunchSite: Encodable {
    
        /* LaunchSite */
    
        /* Properties */
        let siteId: [String: String]
        let siteNameLong: [String: String]
        let siteName: [String: String]
    }
}
extension Objects.LaunchSite: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "siteId":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "siteNameLong":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "siteName":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.siteId = map["siteId"]
        self.siteNameLong = map["siteNameLong"]
        self.siteName = map["siteName"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.LaunchSite {
    /// 
    func siteId() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "site_id",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.siteId[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func siteNameLong() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "site_name_long",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.siteNameLong[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func siteName() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "site_name",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.siteName[field.alias!]
        case .mocking:
            return nil
        }
    }
}


/* LaunchLinks */

extension Objects {
    struct LaunchLinks: Encodable {
    
        /* LaunchLinks */
    
        /* Properties */
        let articleLink: [String: String]
        let flickrImages: [String: [String?]]
        let missionPatchSmall: [String: String]
        let missionPatch: [String: String]
        let presskit: [String: String]
        let redditCampaign: [String: String]
        let redditLaunch: [String: String]
        let redditMedia: [String: String]
        let redditRecovery: [String: String]
        let videoLink: [String: String]
        let wikipedia: [String: String]
    }
}
extension Objects.LaunchLinks: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "articleLink":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "flickrImages":
                    if let value = try container.decode([String?]?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "missionPatchSmall":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "missionPatch":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "presskit":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "redditCampaign":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "redditLaunch":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "redditMedia":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "redditRecovery":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "videoLink":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "wikipedia":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.articleLink = map["articleLink"]
        self.flickrImages = map["flickrImages"]
        self.missionPatchSmall = map["missionPatchSmall"]
        self.missionPatch = map["missionPatch"]
        self.presskit = map["presskit"]
        self.redditCampaign = map["redditCampaign"]
        self.redditLaunch = map["redditLaunch"]
        self.redditMedia = map["redditMedia"]
        self.redditRecovery = map["redditRecovery"]
        self.videoLink = map["videoLink"]
        self.wikipedia = map["wikipedia"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.LaunchLinks {
    /// 
    func articleLink() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "article_link",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.articleLink[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func flickrImages() throws -> [String?]? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "flickr_images",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.flickrImages[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func missionPatchSmall() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "mission_patch_small",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.missionPatchSmall[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func missionPatch() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "mission_patch",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.missionPatch[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func presskit() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "presskit",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.presskit[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func redditCampaign() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "reddit_campaign",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.redditCampaign[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func redditLaunch() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "reddit_launch",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.redditLaunch[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func redditMedia() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "reddit_media",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.redditMedia[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func redditRecovery() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "reddit_recovery",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.redditRecovery[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func videoLink() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "video_link",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.videoLink[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func wikipedia() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "wikipedia",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.wikipedia[field.alias!]
        case .mocking:
            return nil
        }
    }
}


/* LaunchRocket */

extension Objects {
    struct LaunchRocket: Encodable {
    
        /* LaunchRocket */
    
        /* Properties */
        let fairings: [String: Objects.LaunchRocketFairings]
        let firstStage: [String: Objects.LaunchRocketFirstStage]
        let rocketName: [String: String]
        let rocketType: [String: String]
        let rocket: [String: Objects.Rocket]
        let secondStage: [String: Objects.LaunchRocketSecondStage]
    }
}
extension Objects.LaunchRocket: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "fairings":
                    if let value = try container.decode(Objects.LaunchRocketFairings?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "firstStage":
                    if let value = try container.decode(Objects.LaunchRocketFirstStage?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "rocketName":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "rocketType":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "rocket":
                    if let value = try container.decode(Objects.Rocket?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "secondStage":
                    if let value = try container.decode(Objects.LaunchRocketSecondStage?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.fairings = map["fairings"]
        self.firstStage = map["firstStage"]
        self.rocketName = map["rocketName"]
        self.rocketType = map["rocketType"]
        self.rocket = map["rocket"]
        self.secondStage = map["secondStage"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.LaunchRocket {
    /// 
    func fairings<Type>(_ selection: Selection<Type, Objects.LaunchRocketFairings?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "fairings",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.fairings[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func firstStage<Type>(_ selection: Selection<Type, Objects.LaunchRocketFirstStage?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "first_stage",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.firstStage[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func rocketName() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "rocket_name",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.rocketName[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func rocketType() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "rocket_type",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.rocketType[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func rocket<Type>(_ selection: Selection<Type, Objects.Rocket?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "rocket",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.rocket[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func secondStage<Type>(_ selection: Selection<Type, Objects.LaunchRocketSecondStage?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "second_stage",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.secondStage[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
}


/* LaunchRocketFairings */

extension Objects {
    struct LaunchRocketFairings: Encodable {
    
        /* LaunchRocketFairings */
    
        /* Properties */
        let recovered: [String: Bool]
        let recoveryAttempt: [String: Bool]
        let reused: [String: Bool]
        let ship: [String: String]
    }
}
extension Objects.LaunchRocketFairings: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "recovered":
                    if let value = try container.decode(Bool?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "recoveryAttempt":
                    if let value = try container.decode(Bool?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "reused":
                    if let value = try container.decode(Bool?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "ship":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.recovered = map["recovered"]
        self.recoveryAttempt = map["recoveryAttempt"]
        self.reused = map["reused"]
        self.ship = map["ship"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.LaunchRocketFairings {
    /// 
    func recovered() throws -> Bool? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "recovered",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.recovered[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func recoveryAttempt() throws -> Bool? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "recovery_attempt",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.recoveryAttempt[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func reused() throws -> Bool? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "reused",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.reused[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func ship() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "ship",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.ship[field.alias!]
        case .mocking:
            return nil
        }
    }
}


/* LaunchRocketFirstStage */

extension Objects {
    struct LaunchRocketFirstStage: Encodable {
    
        /* LaunchRocketFirstStage */
    
        /* Properties */
        let cores: [String: [Objects.LaunchRocketFirstStageCore?]]
    }
}
extension Objects.LaunchRocketFirstStage: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "cores":
                    if let value = try container.decode([Objects.LaunchRocketFirstStageCore?]?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.cores = map["cores"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.LaunchRocketFirstStage {
    /// 
    func cores<Type>(_ selection: Selection<Type, [Objects.LaunchRocketFirstStageCore?]?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "cores",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.cores[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
}


/* LaunchRocketFirstStageCore */

extension Objects {
    struct LaunchRocketFirstStageCore: Encodable {
    
        /* LaunchRocketFirstStageCore */
    
        /* Properties */
        let block: [String: Int]
        let core: [String: Objects.Core]
        let flight: [String: Int]
        let gridfins: [String: Bool]
        let landSuccess: [String: Bool]
        let landingIntent: [String: Bool]
        let landingType: [String: String]
        let landingVehicle: [String: String]
        let legs: [String: Bool]
        let reused: [String: Bool]
    }
}
extension Objects.LaunchRocketFirstStageCore: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "block":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "core":
                    if let value = try container.decode(Objects.Core?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "flight":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "gridfins":
                    if let value = try container.decode(Bool?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "landSuccess":
                    if let value = try container.decode(Bool?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "landingIntent":
                    if let value = try container.decode(Bool?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "landingType":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "landingVehicle":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "legs":
                    if let value = try container.decode(Bool?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "reused":
                    if let value = try container.decode(Bool?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.block = map["block"]
        self.core = map["core"]
        self.flight = map["flight"]
        self.gridfins = map["gridfins"]
        self.landSuccess = map["landSuccess"]
        self.landingIntent = map["landingIntent"]
        self.landingType = map["landingType"]
        self.landingVehicle = map["landingVehicle"]
        self.legs = map["legs"]
        self.reused = map["reused"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.LaunchRocketFirstStageCore {
    /// 
    func block() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "block",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.block[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func core<Type>(_ selection: Selection<Type, Objects.Core?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "core",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.core[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func flight() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "flight",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.flight[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func gridfins() throws -> Bool? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "gridfins",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.gridfins[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func landSuccess() throws -> Bool? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "land_success",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.landSuccess[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func landingIntent() throws -> Bool? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "landing_intent",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.landingIntent[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func landingType() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "landing_type",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.landingType[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func landingVehicle() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "landing_vehicle",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.landingVehicle[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func legs() throws -> Bool? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "legs",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.legs[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func reused() throws -> Bool? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "reused",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.reused[field.alias!]
        case .mocking:
            return nil
        }
    }
}


/* Rocket */

extension Objects {
    struct Rocket: Encodable {
    
        /* Rocket */
    
        /* Properties */
        let active: [String: Bool]
        let boosters: [String: Int]
        let company: [String: String]
        let costPerLaunch: [String: Int]
        let country: [String: String]
        let description: [String: String]
        let diameter: [String: Objects.Distance]
        let engines: [String: Objects.RocketEngines]
        let firstFlight: [String: String]
        let firstStage: [String: Objects.RocketFirstStage]
        let height: [String: Objects.Distance]
        let id: [String: String]
        let landingLegs: [String: Objects.RocketLandingLegs]
        let mass: [String: Objects.Mass]
        let name: [String: String]
        let payloadWeights: [String: [Objects.RocketPayloadWeight?]]
        let secondStage: [String: Objects.RocketSecondStage]
        let stages: [String: Int]
        let successRatePct: [String: Int]
        let type: [String: String]
        let wikipedia: [String: String]
    }
}
extension Objects.Rocket: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "active":
                    if let value = try container.decode(Bool?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "boosters":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "company":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "costPerLaunch":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "country":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "description":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "diameter":
                    if let value = try container.decode(Objects.Distance?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "engines":
                    if let value = try container.decode(Objects.RocketEngines?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "firstFlight":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "firstStage":
                    if let value = try container.decode(Objects.RocketFirstStage?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "height":
                    if let value = try container.decode(Objects.Distance?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "id":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "landingLegs":
                    if let value = try container.decode(Objects.RocketLandingLegs?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "mass":
                    if let value = try container.decode(Objects.Mass?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "name":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "payloadWeights":
                    if let value = try container.decode([Objects.RocketPayloadWeight?]?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "secondStage":
                    if let value = try container.decode(Objects.RocketSecondStage?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "stages":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "successRatePct":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "type":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "wikipedia":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.active = map["active"]
        self.boosters = map["boosters"]
        self.company = map["company"]
        self.costPerLaunch = map["costPerLaunch"]
        self.country = map["country"]
        self.description = map["description"]
        self.diameter = map["diameter"]
        self.engines = map["engines"]
        self.firstFlight = map["firstFlight"]
        self.firstStage = map["firstStage"]
        self.height = map["height"]
        self.id = map["id"]
        self.landingLegs = map["landingLegs"]
        self.mass = map["mass"]
        self.name = map["name"]
        self.payloadWeights = map["payloadWeights"]
        self.secondStage = map["secondStage"]
        self.stages = map["stages"]
        self.successRatePct = map["successRatePct"]
        self.type = map["type"]
        self.wikipedia = map["wikipedia"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.Rocket {
    /// 
    func active() throws -> Bool? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "active",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.active[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func boosters() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "boosters",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.boosters[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func company() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "company",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.company[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func costPerLaunch() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "cost_per_launch",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.costPerLaunch[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func country() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "country",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.country[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func description() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "description",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.description[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func diameter<Type>(_ selection: Selection<Type, Objects.Distance?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "diameter",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.diameter[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func engines<Type>(_ selection: Selection<Type, Objects.RocketEngines?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "engines",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.engines[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func firstFlight() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "first_flight",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.firstFlight[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func firstStage<Type>(_ selection: Selection<Type, Objects.RocketFirstStage?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "first_stage",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.firstStage[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func height<Type>(_ selection: Selection<Type, Objects.Distance?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "height",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.height[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func id() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "id",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.id[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func landingLegs<Type>(_ selection: Selection<Type, Objects.RocketLandingLegs?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "landing_legs",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.landingLegs[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func mass<Type>(_ selection: Selection<Type, Objects.Mass?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "mass",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.mass[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func name() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "name",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.name[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func payloadWeights<Type>(_ selection: Selection<Type, [Objects.RocketPayloadWeight?]?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "payload_weights",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.payloadWeights[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func secondStage<Type>(_ selection: Selection<Type, Objects.RocketSecondStage?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "second_stage",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.secondStage[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func stages() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "stages",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.stages[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func successRatePct() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "success_rate_pct",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.successRatePct[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func type() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "type",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.type[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func wikipedia() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "wikipedia",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.wikipedia[field.alias!]
        case .mocking:
            return nil
        }
    }
}


/* RocketEngines */

extension Objects {
    struct RocketEngines: Encodable {
    
        /* RocketEngines */
    
        /* Properties */
        let number: [String: Int]
        let type: [String: String]
        let version: [String: String]
        let layout: [String: String]
        let engineLossMax: [String: String]
        let propellant1: [String: String]
        let propellant2: [String: String]
        let thrustSeaLevel: [String: Objects.Force]
        let thrustVacuum: [String: Objects.Force]
        let thrustToWeight: [String: Double]
    }
}
extension Objects.RocketEngines: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "number":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "type":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "version":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "layout":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "engineLossMax":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "propellant1":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "propellant2":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "thrustSeaLevel":
                    if let value = try container.decode(Objects.Force?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "thrustVacuum":
                    if let value = try container.decode(Objects.Force?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "thrustToWeight":
                    if let value = try container.decode(Double?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.number = map["number"]
        self.type = map["type"]
        self.version = map["version"]
        self.layout = map["layout"]
        self.engineLossMax = map["engineLossMax"]
        self.propellant1 = map["propellant1"]
        self.propellant2 = map["propellant2"]
        self.thrustSeaLevel = map["thrustSeaLevel"]
        self.thrustVacuum = map["thrustVacuum"]
        self.thrustToWeight = map["thrustToWeight"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.RocketEngines {
    /// 
    func number() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "number",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.number[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func type() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "type",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.type[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func version() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "version",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.version[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func layout() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "layout",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.layout[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func engineLossMax() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "engine_loss_max",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.engineLossMax[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func propellant1() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "propellant_1",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.propellant1[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func propellant2() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "propellant_2",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.propellant2[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func thrustSeaLevel<Type>(_ selection: Selection<Type, Objects.Force?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "thrust_sea_level",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.thrustSeaLevel[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func thrustVacuum<Type>(_ selection: Selection<Type, Objects.Force?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "thrust_vacuum",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.thrustVacuum[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func thrustToWeight() throws -> Double? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "thrust_to_weight",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.thrustToWeight[field.alias!]
        case .mocking:
            return nil
        }
    }
}


/* RocketFirstStage */

extension Objects {
    struct RocketFirstStage: Encodable {
    
        /* RocketFirstStage */
    
        /* Properties */
        let burnTimeSec: [String: Int]
        let engines: [String: Int]
        let fuelAmountTons: [String: Double]
        let reusable: [String: Bool]
        let thrustSeaLevel: [String: Objects.Force]
        let thrustVacuum: [String: Objects.Force]
    }
}
extension Objects.RocketFirstStage: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "burnTimeSec":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "engines":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "fuelAmountTons":
                    if let value = try container.decode(Double?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "reusable":
                    if let value = try container.decode(Bool?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "thrustSeaLevel":
                    if let value = try container.decode(Objects.Force?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "thrustVacuum":
                    if let value = try container.decode(Objects.Force?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.burnTimeSec = map["burnTimeSec"]
        self.engines = map["engines"]
        self.fuelAmountTons = map["fuelAmountTons"]
        self.reusable = map["reusable"]
        self.thrustSeaLevel = map["thrustSeaLevel"]
        self.thrustVacuum = map["thrustVacuum"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.RocketFirstStage {
    /// 
    func burnTimeSec() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "burn_time_sec",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.burnTimeSec[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func engines() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "engines",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.engines[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func fuelAmountTons() throws -> Double? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "fuel_amount_tons",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.fuelAmountTons[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func reusable() throws -> Bool? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "reusable",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.reusable[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func thrustSeaLevel<Type>(_ selection: Selection<Type, Objects.Force?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "thrust_sea_level",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.thrustSeaLevel[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func thrustVacuum<Type>(_ selection: Selection<Type, Objects.Force?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "thrust_vacuum",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.thrustVacuum[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
}


/* RocketLandingLegs */

extension Objects {
    struct RocketLandingLegs: Encodable {
    
        /* RocketLandingLegs */
    
        /* Properties */
        let number: [String: Int]
        let material: [String: String]
    }
}
extension Objects.RocketLandingLegs: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "number":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "material":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.number = map["number"]
        self.material = map["material"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.RocketLandingLegs {
    /// 
    func number() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "number",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.number[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func material() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "material",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.material[field.alias!]
        case .mocking:
            return nil
        }
    }
}


/* RocketPayloadWeight */

extension Objects {
    struct RocketPayloadWeight: Encodable {
    
        /* RocketPayloadWeight */
    
        /* Properties */
        let id: [String: String]
        let kg: [String: Int]
        let lb: [String: Int]
        let name: [String: String]
    }
}
extension Objects.RocketPayloadWeight: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "id":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "kg":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "lb":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "name":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.id = map["id"]
        self.kg = map["kg"]
        self.lb = map["lb"]
        self.name = map["name"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.RocketPayloadWeight {
    /// 
    func id() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "id",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.id[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func kg() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "kg",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.kg[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func lb() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "lb",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.lb[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func name() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "name",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.name[field.alias!]
        case .mocking:
            return nil
        }
    }
}


/* RocketSecondStage */

extension Objects {
    struct RocketSecondStage: Encodable {
    
        /* RocketSecondStage */
    
        /* Properties */
        let burnTimeSec: [String: Int]
        let engines: [String: Int]
        let fuelAmountTons: [String: Double]
        let payloads: [String: Objects.RocketSecondStagePayloads]
        let thrust: [String: Objects.Force]
    }
}
extension Objects.RocketSecondStage: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "burnTimeSec":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "engines":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "fuelAmountTons":
                    if let value = try container.decode(Double?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "payloads":
                    if let value = try container.decode(Objects.RocketSecondStagePayloads?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "thrust":
                    if let value = try container.decode(Objects.Force?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.burnTimeSec = map["burnTimeSec"]
        self.engines = map["engines"]
        self.fuelAmountTons = map["fuelAmountTons"]
        self.payloads = map["payloads"]
        self.thrust = map["thrust"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.RocketSecondStage {
    /// 
    func burnTimeSec() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "burn_time_sec",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.burnTimeSec[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func engines() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "engines",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.engines[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func fuelAmountTons() throws -> Double? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "fuel_amount_tons",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.fuelAmountTons[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func payloads<Type>(_ selection: Selection<Type, Objects.RocketSecondStagePayloads?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "payloads",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.payloads[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func thrust<Type>(_ selection: Selection<Type, Objects.Force?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "thrust",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.thrust[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
}


/* RocketSecondStagePayloads */

extension Objects {
    struct RocketSecondStagePayloads: Encodable {
    
        /* RocketSecondStagePayloads */
    
        /* Properties */
        let option1: [String: String]
        let compositeFairing: [String: Objects.RocketSecondStagePayloadCompositeFairing]
    }
}
extension Objects.RocketSecondStagePayloads: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "option1":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "compositeFairing":
                    if let value = try container.decode(Objects.RocketSecondStagePayloadCompositeFairing?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.option1 = map["option1"]
        self.compositeFairing = map["compositeFairing"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.RocketSecondStagePayloads {
    /// 
    func option1() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "option_1",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.option1[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func compositeFairing<Type>(_ selection: Selection<Type, Objects.RocketSecondStagePayloadCompositeFairing?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "composite_fairing",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.compositeFairing[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
}


/* RocketSecondStagePayloadCompositeFairing */

extension Objects {
    struct RocketSecondStagePayloadCompositeFairing: Encodable {
    
        /* RocketSecondStagePayloadCompositeFairing */
    
        /* Properties */
        let height: [String: Objects.Distance]
        let diameter: [String: Objects.Distance]
    }
}
extension Objects.RocketSecondStagePayloadCompositeFairing: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "height":
                    if let value = try container.decode(Objects.Distance?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "diameter":
                    if let value = try container.decode(Objects.Distance?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.height = map["height"]
        self.diameter = map["diameter"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.RocketSecondStagePayloadCompositeFairing {
    /// 
    func height<Type>(_ selection: Selection<Type, Objects.Distance?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "height",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.height[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func diameter<Type>(_ selection: Selection<Type, Objects.Distance?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "diameter",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.diameter[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
}


/* LaunchRocketSecondStage */

extension Objects {
    struct LaunchRocketSecondStage: Encodable {
    
        /* LaunchRocketSecondStage */
    
        /* Properties */
        let block: [String: Int]
        let payloads: [String: [Objects.Payload?]]
    }
}
extension Objects.LaunchRocketSecondStage: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "block":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "payloads":
                    if let value = try container.decode([Objects.Payload?]?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.block = map["block"]
        self.payloads = map["payloads"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.LaunchRocketSecondStage {
    /// 
    func block() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "block",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.block[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func payloads<Type>(_ selection: Selection<Type, [Objects.Payload?]?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "payloads",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.payloads[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
}


/* Payload */

extension Objects {
    struct Payload: Encodable {
    
        /* Payload */
    
        /* Properties */
        let customers: [String: [String?]]
        let id: [String: String]
        let manufacturer: [String: String]
        let nationality: [String: String]
        let noradId: [String: [Int?]]
        let orbitParams: [String: Objects.PayloadOrbitParams]
        let orbit: [String: String]
        let payloadMassKg: [String: Double]
        let payloadMassLbs: [String: Double]
        let payloadType: [String: String]
        let reused: [String: Bool]
    }
}
extension Objects.Payload: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "customers":
                    if let value = try container.decode([String?]?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "id":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "manufacturer":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "nationality":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "noradId":
                    if let value = try container.decode([Int?]?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "orbitParams":
                    if let value = try container.decode(Objects.PayloadOrbitParams?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "orbit":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "payloadMassKg":
                    if let value = try container.decode(Double?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "payloadMassLbs":
                    if let value = try container.decode(Double?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "payloadType":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "reused":
                    if let value = try container.decode(Bool?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.customers = map["customers"]
        self.id = map["id"]
        self.manufacturer = map["manufacturer"]
        self.nationality = map["nationality"]
        self.noradId = map["noradId"]
        self.orbitParams = map["orbitParams"]
        self.orbit = map["orbit"]
        self.payloadMassKg = map["payloadMassKg"]
        self.payloadMassLbs = map["payloadMassLbs"]
        self.payloadType = map["payloadType"]
        self.reused = map["reused"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.Payload {
    /// 
    func customers() throws -> [String?]? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "customers",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.customers[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func id() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "id",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.id[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func manufacturer() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "manufacturer",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.manufacturer[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func nationality() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "nationality",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.nationality[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func noradId() throws -> [Int?]? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "norad_id",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.noradId[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func orbitParams<Type>(_ selection: Selection<Type, Objects.PayloadOrbitParams?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "orbit_params",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.orbitParams[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func orbit() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "orbit",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.orbit[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func payloadMassKg() throws -> Double? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "payload_mass_kg",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.payloadMassKg[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func payloadMassLbs() throws -> Double? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "payload_mass_lbs",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.payloadMassLbs[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func payloadType() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "payload_type",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.payloadType[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func reused() throws -> Bool? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "reused",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.reused[field.alias!]
        case .mocking:
            return nil
        }
    }
}


/* PayloadOrbitParams */

extension Objects {
    struct PayloadOrbitParams: Encodable {
    
        /* PayloadOrbitParams */
    
        /* Properties */
        let apoapsisKm: [String: Double]
        let argOfPericenter: [String: Double]
        let eccentricity: [String: Double]
        let epoch: [String: String]
        let inclinationDeg: [String: Double]
        let lifespanYears: [String: Double]
        let longitude: [String: Double]
        let meanAnomaly: [String: Double]
        let meanMotion: [String: Double]
        let periapsisKm: [String: Double]
        let periodMin: [String: Double]
        let raan: [String: Double]
        let referenceSystem: [String: String]
        let regime: [String: String]
        let semiMajorAxisKm: [String: Double]
    }
}
extension Objects.PayloadOrbitParams: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "apoapsisKm":
                    if let value = try container.decode(Double?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "argOfPericenter":
                    if let value = try container.decode(Double?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "eccentricity":
                    if let value = try container.decode(Double?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "epoch":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "inclinationDeg":
                    if let value = try container.decode(Double?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "lifespanYears":
                    if let value = try container.decode(Double?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "longitude":
                    if let value = try container.decode(Double?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "meanAnomaly":
                    if let value = try container.decode(Double?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "meanMotion":
                    if let value = try container.decode(Double?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "periapsisKm":
                    if let value = try container.decode(Double?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "periodMin":
                    if let value = try container.decode(Double?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "raan":
                    if let value = try container.decode(Double?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "referenceSystem":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "regime":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "semiMajorAxisKm":
                    if let value = try container.decode(Double?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.apoapsisKm = map["apoapsisKm"]
        self.argOfPericenter = map["argOfPericenter"]
        self.eccentricity = map["eccentricity"]
        self.epoch = map["epoch"]
        self.inclinationDeg = map["inclinationDeg"]
        self.lifespanYears = map["lifespanYears"]
        self.longitude = map["longitude"]
        self.meanAnomaly = map["meanAnomaly"]
        self.meanMotion = map["meanMotion"]
        self.periapsisKm = map["periapsisKm"]
        self.periodMin = map["periodMin"]
        self.raan = map["raan"]
        self.referenceSystem = map["referenceSystem"]
        self.regime = map["regime"]
        self.semiMajorAxisKm = map["semiMajorAxisKm"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.PayloadOrbitParams {
    /// 
    func apoapsisKm() throws -> Double? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "apoapsis_km",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.apoapsisKm[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func argOfPericenter() throws -> Double? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "arg_of_pericenter",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.argOfPericenter[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func eccentricity() throws -> Double? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "eccentricity",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.eccentricity[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func epoch() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "epoch",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.epoch[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func inclinationDeg() throws -> Double? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "inclination_deg",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.inclinationDeg[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func lifespanYears() throws -> Double? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "lifespan_years",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.lifespanYears[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func longitude() throws -> Double? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "longitude",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.longitude[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func meanAnomaly() throws -> Double? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "mean_anomaly",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.meanAnomaly[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func meanMotion() throws -> Double? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "mean_motion",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.meanMotion[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func periapsisKm() throws -> Double? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "periapsis_km",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.periapsisKm[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func periodMin() throws -> Double? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "period_min",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.periodMin[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func raan() throws -> Double? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "raan",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.raan[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func referenceSystem() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "reference_system",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.referenceSystem[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func regime() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "regime",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.regime[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func semiMajorAxisKm() throws -> Double? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "semi_major_axis_km",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.semiMajorAxisKm[field.alias!]
        case .mocking:
            return nil
        }
    }
}


/* LaunchTelemetry */

extension Objects {
    struct LaunchTelemetry: Encodable {
    
        /* LaunchTelemetry */
    
        /* Properties */
        let flightClub: [String: String]
    }
}
extension Objects.LaunchTelemetry: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "flightClub":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.flightClub = map["flightClub"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.LaunchTelemetry {
    /// 
    func flightClub() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "flight_club",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.flightClub[field.alias!]
        case .mocking:
            return nil
        }
    }
}


/* Ship */

extension Objects {
    struct Ship: Encodable {
    
        /* Ship */
    
        /* Properties */
        let abs: [String: Int]
        let active: [String: Bool]
        let attemptedLandings: [String: Int]
        let `class`: [String: Int]
        let courseDeg: [String: Int]
        let homePort: [String: String]
        let id: [String: String]
        let image: [String: String]
        let imo: [String: Int]
        let missions: [String: [Objects.ShipMission?]]
        let mmsi: [String: Int]
        let model: [String: String]
        let name: [String: String]
        let position: [String: Objects.ShipLocation]
        let roles: [String: [String?]]
        let speedKn: [String: Double]
        let status: [String: String]
        let successfulLandings: [String: Int]
        let type: [String: String]
        let url: [String: String]
        let weightKg: [String: Int]
        let weightLbs: [String: Int]
        let yearBuilt: [String: Int]
    }
}
extension Objects.Ship: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "abs":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "active":
                    if let value = try container.decode(Bool?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "attemptedLandings":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "class":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "courseDeg":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "homePort":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "id":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "image":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "imo":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "missions":
                    if let value = try container.decode([Objects.ShipMission?]?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "mmsi":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "model":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "name":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "position":
                    if let value = try container.decode(Objects.ShipLocation?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "roles":
                    if let value = try container.decode([String?]?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "speedKn":
                    if let value = try container.decode(Double?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "status":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "successfulLandings":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "type":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "url":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "weightKg":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "weightLbs":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "yearBuilt":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.abs = map["abs"]
        self.active = map["active"]
        self.attemptedLandings = map["attemptedLandings"]
        self.class = map["class"]
        self.courseDeg = map["courseDeg"]
        self.homePort = map["homePort"]
        self.id = map["id"]
        self.image = map["image"]
        self.imo = map["imo"]
        self.missions = map["missions"]
        self.mmsi = map["mmsi"]
        self.model = map["model"]
        self.name = map["name"]
        self.position = map["position"]
        self.roles = map["roles"]
        self.speedKn = map["speedKn"]
        self.status = map["status"]
        self.successfulLandings = map["successfulLandings"]
        self.type = map["type"]
        self.url = map["url"]
        self.weightKg = map["weightKg"]
        self.weightLbs = map["weightLbs"]
        self.yearBuilt = map["yearBuilt"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.Ship {
    /// 
    func abs() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "abs",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.abs[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func active() throws -> Bool? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "active",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.active[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func attemptedLandings() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "attempted_landings",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.attemptedLandings[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func `class`() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "class",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.class[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func courseDeg() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "course_deg",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.courseDeg[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func homePort() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "home_port",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.homePort[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func id() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "id",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.id[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func image() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "image",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.image[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func imo() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "imo",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.imo[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func missions<Type>(_ selection: Selection<Type, [Objects.ShipMission?]?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "missions",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.missions[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func mmsi() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "mmsi",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.mmsi[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func model() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "model",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.model[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func name() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "name",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.name[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func position<Type>(_ selection: Selection<Type, Objects.ShipLocation?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "position",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.position[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func roles() throws -> [String?]? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "roles",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.roles[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func speedKn() throws -> Double? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "speed_kn",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.speedKn[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func status() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "status",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.status[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func successfulLandings() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "successful_landings",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.successfulLandings[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func type() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "type",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.type[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func url() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "url",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.url[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func weightKg() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "weight_kg",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.weightKg[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func weightLbs() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "weight_lbs",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.weightLbs[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func yearBuilt() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "year_built",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.yearBuilt[field.alias!]
        case .mocking:
            return nil
        }
    }
}


/* ShipMission */

extension Objects {
    struct ShipMission: Encodable {
    
        /* ShipMission */
    
        /* Properties */
        let flight: [String: String]
        let name: [String: String]
    }
}
extension Objects.ShipMission: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "flight":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "name":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.flight = map["flight"]
        self.name = map["name"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.ShipMission {
    /// 
    func flight() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "flight",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.flight[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func name() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "name",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.name[field.alias!]
        case .mocking:
            return nil
        }
    }
}


/* ShipLocation */

extension Objects {
    struct ShipLocation: Encodable {
    
        /* ShipLocation */
    
        /* Properties */
        let latitude: [String: Double]
        let longitude: [String: Double]
    }
}
extension Objects.ShipLocation: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "latitude":
                    if let value = try container.decode(Double?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "longitude":
                    if let value = try container.decode(Double?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.latitude = map["latitude"]
        self.longitude = map["longitude"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.ShipLocation {
    /// 
    func latitude() throws -> Double? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "latitude",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.latitude[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func longitude() throws -> Double? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "longitude",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.longitude[field.alias!]
        case .mocking:
            return nil
        }
    }
}


/* HistoriesResult */

extension Objects {
    struct HistoriesResult: Encodable {
    
        /* HistoriesResult */
    
        /* Properties */
        let result: [String: Objects.Result]
        let data: [String: [Objects.History?]]
    }
}
extension Objects.HistoriesResult: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "result":
                    if let value = try container.decode(Objects.Result?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "data":
                    if let value = try container.decode([Objects.History?]?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.result = map["result"]
        self.data = map["data"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.HistoriesResult {
    /// 
    func result<Type>(_ selection: Selection<Type, Objects.Result?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "result",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.result[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func data<Type>(_ selection: Selection<Type, [Objects.History?]?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "data",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.data[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
}


/* Result */

extension Objects {
    struct Result: Encodable {
    
        /* Result */
    
        /* Properties */
        let totalCount: [String: Int]
    }
}
extension Objects.Result: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "totalCount":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.totalCount = map["totalCount"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.Result {
    /// 
    func totalCount() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "totalCount",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.totalCount[field.alias!]
        case .mocking:
            return nil
        }
    }
}


/* Landpad */

extension Objects {
    struct Landpad: Encodable {
    
        /* Landpad */
    
        /* Properties */
        let attemptedLandings: [String: String]
        let details: [String: String]
        let fullName: [String: String]
        let id: [String: String]
        let landingType: [String: String]
        let location: [String: Objects.Location]
        let status: [String: String]
        let successfulLandings: [String: String]
        let wikipedia: [String: String]
    }
}
extension Objects.Landpad: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "attemptedLandings":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "details":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "fullName":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "id":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "landingType":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "location":
                    if let value = try container.decode(Objects.Location?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "status":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "successfulLandings":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "wikipedia":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.attemptedLandings = map["attemptedLandings"]
        self.details = map["details"]
        self.fullName = map["fullName"]
        self.id = map["id"]
        self.landingType = map["landingType"]
        self.location = map["location"]
        self.status = map["status"]
        self.successfulLandings = map["successfulLandings"]
        self.wikipedia = map["wikipedia"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.Landpad {
    /// 
    func attemptedLandings() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "attempted_landings",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.attemptedLandings[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func details() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "details",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.details[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func fullName() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "full_name",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.fullName[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func id() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "id",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.id[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func landingType() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "landing_type",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.landingType[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func location<Type>(_ selection: Selection<Type, Objects.Location?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "location",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.location[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func status() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "status",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.status[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func successfulLandings() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "successful_landings",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.successfulLandings[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func wikipedia() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "wikipedia",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.wikipedia[field.alias!]
        case .mocking:
            return nil
        }
    }
}


/* Location */

extension Objects {
    struct Location: Encodable {
    
        /* Location */
    
        /* Properties */
        let latitude: [String: Double]
        let longitude: [String: Double]
        let name: [String: String]
        let region: [String: String]
    }
}
extension Objects.Location: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "latitude":
                    if let value = try container.decode(Double?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "longitude":
                    if let value = try container.decode(Double?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "name":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "region":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.latitude = map["latitude"]
        self.longitude = map["longitude"]
        self.name = map["name"]
        self.region = map["region"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.Location {
    /// 
    func latitude() throws -> Double? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "latitude",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.latitude[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func longitude() throws -> Double? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "longitude",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.longitude[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func name() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "name",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.name[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func region() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "region",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.region[field.alias!]
        case .mocking:
            return nil
        }
    }
}


/* LaunchesPastResult */

extension Objects {
    struct LaunchesPastResult: Encodable {
    
        /* LaunchesPastResult */
    
        /* Properties */
        let result: [String: Objects.Result]
        let data: [String: [Objects.Launch?]]
    }
}
extension Objects.LaunchesPastResult: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "result":
                    if let value = try container.decode(Objects.Result?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "data":
                    if let value = try container.decode([Objects.Launch?]?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.result = map["result"]
        self.data = map["data"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.LaunchesPastResult {
    /// 
    func result<Type>(_ selection: Selection<Type, Objects.Result?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "result",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.result[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func data<Type>(_ selection: Selection<Type, [Objects.Launch?]?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "data",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.data[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
}


/* Launchpad */

extension Objects {
    struct Launchpad: Encodable {
    
        /* Launchpad */
    
        /* Properties */
        let attemptedLaunches: [String: Int]
        let details: [String: String]
        let id: [String: String]
        let location: [String: Objects.Location]
        let name: [String: String]
        let status: [String: String]
        let successfulLaunches: [String: Int]
        let vehiclesLaunched: [String: [Objects.Rocket?]]
        let wikipedia: [String: String]
    }
}
extension Objects.Launchpad: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "attemptedLaunches":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "details":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "id":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "location":
                    if let value = try container.decode(Objects.Location?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "name":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "status":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "successfulLaunches":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "vehiclesLaunched":
                    if let value = try container.decode([Objects.Rocket?]?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "wikipedia":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.attemptedLaunches = map["attemptedLaunches"]
        self.details = map["details"]
        self.id = map["id"]
        self.location = map["location"]
        self.name = map["name"]
        self.status = map["status"]
        self.successfulLaunches = map["successfulLaunches"]
        self.vehiclesLaunched = map["vehiclesLaunched"]
        self.wikipedia = map["wikipedia"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.Launchpad {
    /// 
    func attemptedLaunches() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "attempted_launches",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.attemptedLaunches[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func details() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "details",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.details[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func id() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "id",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.id[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func location<Type>(_ selection: Selection<Type, Objects.Location?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "location",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.location[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func name() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "name",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.name[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func status() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "status",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.status[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func successfulLaunches() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "successful_launches",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.successfulLaunches[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func vehiclesLaunched<Type>(_ selection: Selection<Type, [Objects.Rocket?]?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "vehicles_launched",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.vehiclesLaunched[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func wikipedia() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "wikipedia",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.wikipedia[field.alias!]
        case .mocking:
            return nil
        }
    }
}


/* Mission */

extension Objects {
    struct Mission: Encodable {
    
        /* Mission */
    
        /* Properties */
        let description: [String: String]
        let id: [String: String]
        let manufacturers: [String: [String?]]
        let name: [String: String]
        let twitter: [String: String]
        let website: [String: String]
        let wikipedia: [String: String]
        let payloads: [String: [Objects.Payload?]]
    }
}
extension Objects.Mission: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "description":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "id":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "manufacturers":
                    if let value = try container.decode([String?]?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "name":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "twitter":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "website":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "wikipedia":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "payloads":
                    if let value = try container.decode([Objects.Payload?]?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.description = map["description"]
        self.id = map["id"]
        self.manufacturers = map["manufacturers"]
        self.name = map["name"]
        self.twitter = map["twitter"]
        self.website = map["website"]
        self.wikipedia = map["wikipedia"]
        self.payloads = map["payloads"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.Mission {
    /// 
    func description() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "description",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.description[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func id() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "id",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.id[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func manufacturers() throws -> [String?]? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "manufacturers",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.manufacturers[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func name() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "name",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.name[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func twitter() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "twitter",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.twitter[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func website() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "website",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.website[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func wikipedia() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "wikipedia",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.wikipedia[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func payloads<Type>(_ selection: Selection<Type, [Objects.Payload?]?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "payloads",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.payloads[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
}


/* MissionResult */

extension Objects {
    struct MissionResult: Encodable {
    
        /* MissionResult */
    
        /* Properties */
        let result: [String: Objects.Result]
        let data: [String: [Objects.Mission?]]
    }
}
extension Objects.MissionResult: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "result":
                    if let value = try container.decode(Objects.Result?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "data":
                    if let value = try container.decode([Objects.Mission?]?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.result = map["result"]
        self.data = map["data"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.MissionResult {
    /// 
    func result<Type>(_ selection: Selection<Type, Objects.Result?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "result",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.result[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func data<Type>(_ selection: Selection<Type, [Objects.Mission?]?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "data",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.data[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
}


/* Roadster */

extension Objects {
    struct Roadster: Encodable {
    
        /* Roadster */
    
        /* Properties */
        let apoapsisAu: [String: Double]
        let details: [String: String]
        let earthDistanceKm: [String: Double]
        let earthDistanceMi: [String: Double]
        let eccentricity: [String: Double]
        let epochJd: [String: Double]
        let inclination: [String: Double]
        let launchDateUnix: [String: String]
        let launchDateUtc: [String: String]
        let launchMassKg: [String: Int]
        let launchMassLbs: [String: Int]
        let longitude: [String: Double]
        let marsDistanceKm: [String: Double]
        let marsDistanceMi: [String: Double]
        let name: [String: String]
        let noradId: [String: Int]
        let orbitType: [String: Double]
        let periapsisArg: [String: Double]
        let periapsisAu: [String: Double]
        let periodDays: [String: Double]
        let semiMajorAxisAu: [String: Double]
        let speedKph: [String: Double]
        let speedMph: [String: Double]
        let wikipedia: [String: String]
    }
}
extension Objects.Roadster: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "apoapsisAu":
                    if let value = try container.decode(Double?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "details":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "earthDistanceKm":
                    if let value = try container.decode(Double?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "earthDistanceMi":
                    if let value = try container.decode(Double?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "eccentricity":
                    if let value = try container.decode(Double?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "epochJd":
                    if let value = try container.decode(Double?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "inclination":
                    if let value = try container.decode(Double?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "launchDateUnix":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "launchDateUtc":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "launchMassKg":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "launchMassLbs":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "longitude":
                    if let value = try container.decode(Double?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "marsDistanceKm":
                    if let value = try container.decode(Double?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "marsDistanceMi":
                    if let value = try container.decode(Double?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "name":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "noradId":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "orbitType":
                    if let value = try container.decode(Double?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "periapsisArg":
                    if let value = try container.decode(Double?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "periapsisAu":
                    if let value = try container.decode(Double?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "periodDays":
                    if let value = try container.decode(Double?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "semiMajorAxisAu":
                    if let value = try container.decode(Double?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "speedKph":
                    if let value = try container.decode(Double?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "speedMph":
                    if let value = try container.decode(Double?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "wikipedia":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.apoapsisAu = map["apoapsisAu"]
        self.details = map["details"]
        self.earthDistanceKm = map["earthDistanceKm"]
        self.earthDistanceMi = map["earthDistanceMi"]
        self.eccentricity = map["eccentricity"]
        self.epochJd = map["epochJd"]
        self.inclination = map["inclination"]
        self.launchDateUnix = map["launchDateUnix"]
        self.launchDateUtc = map["launchDateUtc"]
        self.launchMassKg = map["launchMassKg"]
        self.launchMassLbs = map["launchMassLbs"]
        self.longitude = map["longitude"]
        self.marsDistanceKm = map["marsDistanceKm"]
        self.marsDistanceMi = map["marsDistanceMi"]
        self.name = map["name"]
        self.noradId = map["noradId"]
        self.orbitType = map["orbitType"]
        self.periapsisArg = map["periapsisArg"]
        self.periapsisAu = map["periapsisAu"]
        self.periodDays = map["periodDays"]
        self.semiMajorAxisAu = map["semiMajorAxisAu"]
        self.speedKph = map["speedKph"]
        self.speedMph = map["speedMph"]
        self.wikipedia = map["wikipedia"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.Roadster {
    /// 
    func apoapsisAu() throws -> Double? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "apoapsis_au",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.apoapsisAu[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func details() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "details",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.details[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func earthDistanceKm() throws -> Double? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "earth_distance_km",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.earthDistanceKm[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func earthDistanceMi() throws -> Double? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "earth_distance_mi",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.earthDistanceMi[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func eccentricity() throws -> Double? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "eccentricity",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.eccentricity[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func epochJd() throws -> Double? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "epoch_jd",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.epochJd[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func inclination() throws -> Double? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "inclination",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.inclination[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func launchDateUnix() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "launch_date_unix",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.launchDateUnix[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func launchDateUtc() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "launch_date_utc",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.launchDateUtc[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func launchMassKg() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "launch_mass_kg",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.launchMassKg[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func launchMassLbs() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "launch_mass_lbs",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.launchMassLbs[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func longitude() throws -> Double? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "longitude",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.longitude[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func marsDistanceKm() throws -> Double? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "mars_distance_km",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.marsDistanceKm[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func marsDistanceMi() throws -> Double? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "mars_distance_mi",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.marsDistanceMi[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func name() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "name",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.name[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func noradId() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "norad_id",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.noradId[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func orbitType() throws -> Double? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "orbit_type",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.orbitType[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func periapsisArg() throws -> Double? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "periapsis_arg",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.periapsisArg[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func periapsisAu() throws -> Double? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "periapsis_au",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.periapsisAu[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func periodDays() throws -> Double? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "period_days",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.periodDays[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func semiMajorAxisAu() throws -> Double? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "semi_major_axis_au",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.semiMajorAxisAu[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func speedKph() throws -> Double? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "speed_kph",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.speedKph[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func speedMph() throws -> Double? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "speed_mph",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.speedMph[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func wikipedia() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "wikipedia",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.wikipedia[field.alias!]
        case .mocking:
            return nil
        }
    }
}


/* RocketsResult */

extension Objects {
    struct RocketsResult: Encodable {
    
        /* RocketsResult */
    
        /* Properties */
        let result: [String: Objects.Result]
        let data: [String: [Objects.Rocket?]]
    }
}
extension Objects.RocketsResult: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "result":
                    if let value = try container.decode(Objects.Result?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "data":
                    if let value = try container.decode([Objects.Rocket?]?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.result = map["result"]
        self.data = map["data"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.RocketsResult {
    /// 
    func result<Type>(_ selection: Selection<Type, Objects.Result?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "result",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.result[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func data<Type>(_ selection: Selection<Type, [Objects.Rocket?]?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "data",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.data[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
}


/* ShipsResult */

extension Objects {
    struct ShipsResult: Encodable {
    
        /* ShipsResult */
    
        /* Properties */
        let result: [String: Objects.Result]
        let data: [String: [Objects.Ship?]]
    }
}
extension Objects.ShipsResult: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "result":
                    if let value = try container.decode(Objects.Result?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "data":
                    if let value = try container.decode([Objects.Ship?]?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.result = map["result"]
        self.data = map["data"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.ShipsResult {
    /// 
    func result<Type>(_ selection: Selection<Type, Objects.Result?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "result",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.result[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
    /// 
    func data<Type>(_ selection: Selection<Type, [Objects.Ship?]?>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "data",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return try selection.decode(data: data.data[field.alias!])
        case .mocking:
            return selection.mock()
        }
    }
}


/* UsersMutationResponse */

extension Objects {
    struct UsersMutationResponse: Encodable {
    
        /* UsersMutationResponse */
    
        /* Properties */
        let affectedRows: [String: Int]
        let returning: [String: [Objects.Users]]
    }
}
extension Objects.UsersMutationResponse: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "affectedRows":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "returning":
                    if let value = try container.decode([Objects.Users]?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.affectedRows = map["affectedRows"]
        self.returning = map["returning"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.UsersMutationResponse {
    /// number of affected rows by the mutation
    func affectedRows() throws -> Int {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "affected_rows",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            if let data = data.affectedRows[field.alias!] {
                return data
            }
            throw SG.HttpError.badpayload
        case .mocking:
            return Int.mockValue
        }
    }
    /// data of the affected rows by the mutation
    func returning<Type>(_ selection: Selection<Type, [Objects.Users]>) throws -> Type {
        /* Selection */
        let field = GraphQLField.composite(
            name: "returning",
            arguments: [
            ],
            selection: selection.selection
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            if let data = data.returning[field.alias!] {
                return try selection.decode(data: data)
            }
            throw SG.HttpError.badpayload
        case .mocking:
            return selection.mock()
        }
    }
}


/* CoreMission */

extension Objects {
    struct CoreMission: Encodable {
    
        /* CoreMission */
    
        /* Properties */
        let name: [String: String]
        let flight: [String: Int]
    }
}
extension Objects.CoreMission: Decodable {
    
    /* Decoder */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
    
    
        var map = HashMap()
        for codingKey in container.allKeys {
            if codingKey.isTypenameKey { continue }
    
            let alias = codingKey.stringValue
            let field = GraphQLField.getFieldNameFromAlias(alias)
    
            switch field {
                case "name":
                    if let value = try container.decode(String?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                case "flight":
                    if let value = try container.decode(Int?.self, forKey: codingKey) {
                        map.set(key: field, hash: alias, value: value as Any)
                    }
                default:
                    throw DecodingError.dataCorrupted(
                        DecodingError.Context(
                            codingPath: decoder.codingPath,
                            debugDescription: "Unknown key \(field)."
                        )
                    )
            }
        }
    
        self.name = map["name"]
        self.flight = map["flight"]
    }
    
        private struct DynamicCodingKeys: CodingKey {
            // Use for string-keyed dictionary
            var stringValue: String
            init?(stringValue: String) {
                self.stringValue = stringValue
            }
        
            // Use for integer-keyed dictionary
            var intValue: Int?
            init?(intValue: Int) { nil }
        }
}

extension Fields where TypeLock == Objects.CoreMission {
    /// 
    func name() throws -> String? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "name",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.name[field.alias!]
        case .mocking:
            return nil
        }
    }
    /// 
    func flight() throws -> Int? {
        /* Selection */
        let field = GraphQLField.leaf(
            name: "flight",
            arguments: [
            ]
        )
        self.select(field)
    
        /* Decoder */
        switch self.response {
        case .decoding(let data):
            return data.flight[field.alias!]
        case .mocking:
            return nil
        }
    }
}

// MARK: - Interfaces

enum Interfaces {}



// MARK: - Unions

enum Unions {}



// MARK: - Enums

enum Enums {
    /// select columns of table "users"
    enum UsersSelectColumn: String, CaseIterable, Codable {
        /// column name
        case id = "id"
        
        /// column name
        case name = "name"
        
        /// column name
        case rocket = "rocket"
        
        /// column name
        case timestamp = "timestamp"
        
        /// column name
        case twitter = "twitter"
        
    }


    /// column ordering options
    enum OrderBy: String, CaseIterable, Codable {
        /// in the ascending order, nulls last
        case asc = "asc"
        
        /// in the ascending order, nulls first
        case ascNullsFirst = "asc_nulls_first"
        
        /// in the ascending order, nulls last
        case ascNullsLast = "asc_nulls_last"
        
        /// in the descending order, nulls first
        case desc = "desc"
        
        /// in the descending order, nulls first
        case descNullsFirst = "desc_nulls_first"
        
        /// in the descending order, nulls last
        case descNullsLast = "desc_nulls_last"
        
    }


    /// unique or primary key constraints on table "users"
    enum UsersConstraint: String, CaseIterable, Codable {
        /// unique or primary key constraint
        case usersPkey = "users_pkey"
        
    }


    /// update columns of table "users"
    enum UsersUpdateColumn: String, CaseIterable, Codable {
        /// column name
        case id = "id"
        
        /// column name
        case name = "name"
        
        /// column name
        case rocket = "rocket"
        
        /// column name
        case timestamp = "timestamp"
        
        /// column name
        case twitter = "twitter"
        
    }


    /// conflict action
    enum ConflictAction: String, CaseIterable, Codable {
        /// ignore the insert on this row
        case ignore = "ignore"
        
        /// update the row with the given values
        case update = "update"
        
    }
}

// MARK: - Input Objects

enum InputObjects {
    struct UsersOrderBy: Encodable, Hashable {
        /// 
        var id: OptionalArgument<Enums.OrderBy> = .absent
        /// 
        var name: OptionalArgument<Enums.OrderBy> = .absent
        /// 
        var rocket: OptionalArgument<Enums.OrderBy> = .absent
        /// 
        var timestamp: OptionalArgument<Enums.OrderBy> = .absent
        /// 
        var twitter: OptionalArgument<Enums.OrderBy> = .absent
    
        /* Encoder */
        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
        
            if id.hasValue { try container.encode(id, forKey: .id) }
            if name.hasValue { try container.encode(name, forKey: .name) }
            if rocket.hasValue { try container.encode(rocket, forKey: .rocket) }
            if timestamp.hasValue { try container.encode(timestamp, forKey: .timestamp) }
            if twitter.hasValue { try container.encode(twitter, forKey: .twitter) }
        }
    
        /* CodingKeys */
        enum CodingKeys: String, CodingKey {
            case id = "id"
            case name = "name"
            case rocket = "rocket"
            case timestamp = "timestamp"
            case twitter = "twitter"
        }
    }


    struct UsersBoolExp: Encodable, Hashable {
        /// 
        var and: OptionalArgument<[OptionalArgument<InputObjects.UsersBoolExp>]> = .absent
        /// 
        var or: OptionalArgument<[OptionalArgument<InputObjects.UsersBoolExp>]> = .absent
        /// 
        var id: OptionalArgument<InputObjects.UuidComparisonExp> = .absent
        /// 
        var name: OptionalArgument<InputObjects.StringComparisonExp> = .absent
        /// 
        var rocket: OptionalArgument<InputObjects.StringComparisonExp> = .absent
        /// 
        var timestamp: OptionalArgument<InputObjects.TimestamptzComparisonExp> = .absent
        /// 
        var twitter: OptionalArgument<InputObjects.StringComparisonExp> = .absent
    
        /* Encoder */
        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
        
            if and.hasValue { try container.encode(and, forKey: .and) }
            if or.hasValue { try container.encode(or, forKey: .or) }
            if id.hasValue { try container.encode(id, forKey: .id) }
            if name.hasValue { try container.encode(name, forKey: .name) }
            if rocket.hasValue { try container.encode(rocket, forKey: .rocket) }
            if timestamp.hasValue { try container.encode(timestamp, forKey: .timestamp) }
            if twitter.hasValue { try container.encode(twitter, forKey: .twitter) }
        }
    
        /* CodingKeys */
        enum CodingKeys: String, CodingKey {
            case and = "_and"
            case or = "_or"
            case id = "id"
            case name = "name"
            case rocket = "rocket"
            case timestamp = "timestamp"
            case twitter = "twitter"
        }
    }


    struct UuidComparisonExp: Encodable, Hashable {
        /// 
        var eq: OptionalArgument<String> = .absent
        /// 
        var gt: OptionalArgument<String> = .absent
        /// 
        var gte: OptionalArgument<String> = .absent
        /// 
        var `in`: OptionalArgument<[String]> = .absent
        /// 
        var isNull: OptionalArgument<Bool> = .absent
        /// 
        var lt: OptionalArgument<String> = .absent
        /// 
        var lte: OptionalArgument<String> = .absent
        /// 
        var neq: OptionalArgument<String> = .absent
        /// 
        var nin: OptionalArgument<[String]> = .absent
    
        /* Encoder */
        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
        
            if eq.hasValue { try container.encode(eq, forKey: .eq) }
            if gt.hasValue { try container.encode(gt, forKey: .gt) }
            if gte.hasValue { try container.encode(gte, forKey: .gte) }
            if `in`.hasValue { try container.encode(`in`, forKey: .`in`) }
            if isNull.hasValue { try container.encode(isNull, forKey: .isNull) }
            if lt.hasValue { try container.encode(lt, forKey: .lt) }
            if lte.hasValue { try container.encode(lte, forKey: .lte) }
            if neq.hasValue { try container.encode(neq, forKey: .neq) }
            if nin.hasValue { try container.encode(nin, forKey: .nin) }
        }
    
        /* CodingKeys */
        enum CodingKeys: String, CodingKey {
            case eq = "_eq"
            case gt = "_gt"
            case gte = "_gte"
            case `in` = "_in"
            case isNull = "_is_null"
            case lt = "_lt"
            case lte = "_lte"
            case neq = "_neq"
            case nin = "_nin"
        }
    }


    struct StringComparisonExp: Encodable, Hashable {
        /// 
        var eq: OptionalArgument<String> = .absent
        /// 
        var gt: OptionalArgument<String> = .absent
        /// 
        var gte: OptionalArgument<String> = .absent
        /// 
        var ilike: OptionalArgument<String> = .absent
        /// 
        var `in`: OptionalArgument<[String]> = .absent
        /// 
        var isNull: OptionalArgument<Bool> = .absent
        /// 
        var like: OptionalArgument<String> = .absent
        /// 
        var lt: OptionalArgument<String> = .absent
        /// 
        var lte: OptionalArgument<String> = .absent
        /// 
        var neq: OptionalArgument<String> = .absent
        /// 
        var nilike: OptionalArgument<String> = .absent
        /// 
        var nin: OptionalArgument<[String]> = .absent
        /// 
        var nlike: OptionalArgument<String> = .absent
        /// 
        var nsimilar: OptionalArgument<String> = .absent
        /// 
        var similar: OptionalArgument<String> = .absent
    
        /* Encoder */
        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
        
            if eq.hasValue { try container.encode(eq, forKey: .eq) }
            if gt.hasValue { try container.encode(gt, forKey: .gt) }
            if gte.hasValue { try container.encode(gte, forKey: .gte) }
            if ilike.hasValue { try container.encode(ilike, forKey: .ilike) }
            if `in`.hasValue { try container.encode(`in`, forKey: .`in`) }
            if isNull.hasValue { try container.encode(isNull, forKey: .isNull) }
            if like.hasValue { try container.encode(like, forKey: .like) }
            if lt.hasValue { try container.encode(lt, forKey: .lt) }
            if lte.hasValue { try container.encode(lte, forKey: .lte) }
            if neq.hasValue { try container.encode(neq, forKey: .neq) }
            if nilike.hasValue { try container.encode(nilike, forKey: .nilike) }
            if nin.hasValue { try container.encode(nin, forKey: .nin) }
            if nlike.hasValue { try container.encode(nlike, forKey: .nlike) }
            if nsimilar.hasValue { try container.encode(nsimilar, forKey: .nsimilar) }
            if similar.hasValue { try container.encode(similar, forKey: .similar) }
        }
    
        /* CodingKeys */
        enum CodingKeys: String, CodingKey {
            case eq = "_eq"
            case gt = "_gt"
            case gte = "_gte"
            case ilike = "_ilike"
            case `in` = "_in"
            case isNull = "_is_null"
            case like = "_like"
            case lt = "_lt"
            case lte = "_lte"
            case neq = "_neq"
            case nilike = "_nilike"
            case nin = "_nin"
            case nlike = "_nlike"
            case nsimilar = "_nsimilar"
            case similar = "_similar"
        }
    }


    struct TimestamptzComparisonExp: Encodable, Hashable {
        /// 
        var eq: OptionalArgument<String> = .absent
        /// 
        var gt: OptionalArgument<String> = .absent
        /// 
        var gte: OptionalArgument<String> = .absent
        /// 
        var `in`: OptionalArgument<[String]> = .absent
        /// 
        var isNull: OptionalArgument<Bool> = .absent
        /// 
        var lt: OptionalArgument<String> = .absent
        /// 
        var lte: OptionalArgument<String> = .absent
        /// 
        var neq: OptionalArgument<String> = .absent
        /// 
        var nin: OptionalArgument<[String]> = .absent
    
        /* Encoder */
        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
        
            if eq.hasValue { try container.encode(eq, forKey: .eq) }
            if gt.hasValue { try container.encode(gt, forKey: .gt) }
            if gte.hasValue { try container.encode(gte, forKey: .gte) }
            if `in`.hasValue { try container.encode(`in`, forKey: .`in`) }
            if isNull.hasValue { try container.encode(isNull, forKey: .isNull) }
            if lt.hasValue { try container.encode(lt, forKey: .lt) }
            if lte.hasValue { try container.encode(lte, forKey: .lte) }
            if neq.hasValue { try container.encode(neq, forKey: .neq) }
            if nin.hasValue { try container.encode(nin, forKey: .nin) }
        }
    
        /* CodingKeys */
        enum CodingKeys: String, CodingKey {
            case eq = "_eq"
            case gt = "_gt"
            case gte = "_gte"
            case `in` = "_in"
            case isNull = "_is_null"
            case lt = "_lt"
            case lte = "_lte"
            case neq = "_neq"
            case nin = "_nin"
        }
    }


    struct CapsulesFind: Encodable, Hashable {
        /// 
        var id: OptionalArgument<String> = .absent
        /// 
        var landings: OptionalArgument<Int> = .absent
        /// 
        var mission: OptionalArgument<String> = .absent
        /// 
        var originalLaunch: OptionalArgument<String> = .absent
        /// 
        var reuseCount: OptionalArgument<Int> = .absent
        /// 
        var status: OptionalArgument<String> = .absent
        /// 
        var type: OptionalArgument<String> = .absent
    
        /* Encoder */
        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
        
            if id.hasValue { try container.encode(id, forKey: .id) }
            if landings.hasValue { try container.encode(landings, forKey: .landings) }
            if mission.hasValue { try container.encode(mission, forKey: .mission) }
            if originalLaunch.hasValue { try container.encode(originalLaunch, forKey: .originalLaunch) }
            if reuseCount.hasValue { try container.encode(reuseCount, forKey: .reuseCount) }
            if status.hasValue { try container.encode(status, forKey: .status) }
            if type.hasValue { try container.encode(type, forKey: .type) }
        }
    
        /* CodingKeys */
        enum CodingKeys: String, CodingKey {
            case id = "id"
            case landings = "landings"
            case mission = "mission"
            case originalLaunch = "original_launch"
            case reuseCount = "reuse_count"
            case status = "status"
            case type = "type"
        }
    }


    struct CoresFind: Encodable, Hashable {
        /// 
        var asdsAttempts: OptionalArgument<Int> = .absent
        /// 
        var asdsLandings: OptionalArgument<Int> = .absent
        /// 
        var block: OptionalArgument<Int> = .absent
        /// 
        var id: OptionalArgument<String> = .absent
        /// 
        var missions: OptionalArgument<String> = .absent
        /// 
        var originalLaunch: OptionalArgument<String> = .absent
        /// 
        var reuseCount: OptionalArgument<Int> = .absent
        /// 
        var rtlsAttempts: OptionalArgument<Int> = .absent
        /// 
        var rtlsLandings: OptionalArgument<Int> = .absent
        /// 
        var status: OptionalArgument<String> = .absent
        /// 
        var waterLanding: OptionalArgument<Bool> = .absent
    
        /* Encoder */
        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
        
            if asdsAttempts.hasValue { try container.encode(asdsAttempts, forKey: .asdsAttempts) }
            if asdsLandings.hasValue { try container.encode(asdsLandings, forKey: .asdsLandings) }
            if block.hasValue { try container.encode(block, forKey: .block) }
            if id.hasValue { try container.encode(id, forKey: .id) }
            if missions.hasValue { try container.encode(missions, forKey: .missions) }
            if originalLaunch.hasValue { try container.encode(originalLaunch, forKey: .originalLaunch) }
            if reuseCount.hasValue { try container.encode(reuseCount, forKey: .reuseCount) }
            if rtlsAttempts.hasValue { try container.encode(rtlsAttempts, forKey: .rtlsAttempts) }
            if rtlsLandings.hasValue { try container.encode(rtlsLandings, forKey: .rtlsLandings) }
            if status.hasValue { try container.encode(status, forKey: .status) }
            if waterLanding.hasValue { try container.encode(waterLanding, forKey: .waterLanding) }
        }
    
        /* CodingKeys */
        enum CodingKeys: String, CodingKey {
            case asdsAttempts = "asds_attempts"
            case asdsLandings = "asds_landings"
            case block = "block"
            case id = "id"
            case missions = "missions"
            case originalLaunch = "original_launch"
            case reuseCount = "reuse_count"
            case rtlsAttempts = "rtls_attempts"
            case rtlsLandings = "rtls_landings"
            case status = "status"
            case waterLanding = "water_landing"
        }
    }


    struct HistoryFind: Encodable, Hashable {
        /// 
        var end: OptionalArgument<String> = .absent
        /// 
        var flightNumber: OptionalArgument<Int> = .absent
        /// 
        var id: OptionalArgument<String> = .absent
        /// 
        var start: OptionalArgument<String> = .absent
    
        /* Encoder */
        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
        
            if end.hasValue { try container.encode(end, forKey: .end) }
            if flightNumber.hasValue { try container.encode(flightNumber, forKey: .flightNumber) }
            if id.hasValue { try container.encode(id, forKey: .id) }
            if start.hasValue { try container.encode(start, forKey: .start) }
        }
    
        /* CodingKeys */
        enum CodingKeys: String, CodingKey {
            case end = "end"
            case flightNumber = "flight_number"
            case id = "id"
            case start = "start"
        }
    }


    struct LaunchFind: Encodable, Hashable {
        /// 
        var apoapsisKm: OptionalArgument<Double> = .absent
        /// 
        var block: OptionalArgument<Int> = .absent
        /// 
        var capSerial: OptionalArgument<String> = .absent
        /// 
        var capsuleReuse: OptionalArgument<String> = .absent
        /// 
        var coreFlight: OptionalArgument<Int> = .absent
        /// 
        var coreReuse: OptionalArgument<String> = .absent
        /// 
        var coreSerial: OptionalArgument<String> = .absent
        /// 
        var customer: OptionalArgument<String> = .absent
        /// 
        var eccentricity: OptionalArgument<Double> = .absent
        /// 
        var end: OptionalArgument<String> = .absent
        /// 
        var epoch: OptionalArgument<String> = .absent
        /// 
        var fairingsRecovered: OptionalArgument<String> = .absent
        /// 
        var fairingsRecoveryAttempt: OptionalArgument<String> = .absent
        /// 
        var fairingsReuse: OptionalArgument<String> = .absent
        /// 
        var fairingsReused: OptionalArgument<String> = .absent
        /// 
        var fairingsShip: OptionalArgument<String> = .absent
        /// 
        var gridfins: OptionalArgument<String> = .absent
        /// 
        var id: OptionalArgument<String> = .absent
        /// 
        var inclinationDeg: OptionalArgument<Double> = .absent
        /// 
        var landSuccess: OptionalArgument<String> = .absent
        /// 
        var landingIntent: OptionalArgument<String> = .absent
        /// 
        var landingType: OptionalArgument<String> = .absent
        /// 
        var landingVehicle: OptionalArgument<String> = .absent
        /// 
        var launchDateLocal: OptionalArgument<String> = .absent
        /// 
        var launchDateUtc: OptionalArgument<String> = .absent
        /// 
        var launchSuccess: OptionalArgument<String> = .absent
        /// 
        var launchYear: OptionalArgument<String> = .absent
        /// 
        var legs: OptionalArgument<String> = .absent
        /// 
        var lifespanYears: OptionalArgument<Double> = .absent
        /// 
        var longitude: OptionalArgument<Double> = .absent
        /// 
        var manufacturer: OptionalArgument<String> = .absent
        /// 
        var meanMotion: OptionalArgument<Double> = .absent
        /// 
        var missionId: OptionalArgument<String> = .absent
        /// 
        var missionName: OptionalArgument<String> = .absent
        /// 
        var nationality: OptionalArgument<String> = .absent
        /// 
        var noradId: OptionalArgument<Int> = .absent
        /// 
        var orbit: OptionalArgument<String> = .absent
        /// 
        var payloadId: OptionalArgument<String> = .absent
        /// 
        var payloadType: OptionalArgument<String> = .absent
        /// 
        var periapsisKm: OptionalArgument<Double> = .absent
        /// 
        var periodMin: OptionalArgument<Double> = .absent
        /// 
        var raan: OptionalArgument<Double> = .absent
        /// 
        var referenceSystem: OptionalArgument<String> = .absent
        /// 
        var regime: OptionalArgument<String> = .absent
        /// 
        var reused: OptionalArgument<String> = .absent
        /// 
        var rocketId: OptionalArgument<String> = .absent
        /// 
        var rocketName: OptionalArgument<String> = .absent
        /// 
        var rocketType: OptionalArgument<String> = .absent
        /// 
        var secondStageBlock: OptionalArgument<String> = .absent
        /// 
        var semiMajorAxisKm: OptionalArgument<Double> = .absent
        /// 
        var ship: OptionalArgument<String> = .absent
        /// 
        var sideCore1Reuse: OptionalArgument<String> = .absent
        /// 
        var sideCore2Reuse: OptionalArgument<String> = .absent
        /// 
        var siteId: OptionalArgument<String> = .absent
        /// 
        var siteNameLong: OptionalArgument<String> = .absent
        /// 
        var siteName: OptionalArgument<String> = .absent
        /// 
        var start: OptionalArgument<String> = .absent
        /// 
        var tbd: OptionalArgument<String> = .absent
        /// 
        var tentativeMaxPrecision: OptionalArgument<String> = .absent
        /// 
        var tentative: OptionalArgument<String> = .absent
    
        /* Encoder */
        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
        
            if apoapsisKm.hasValue { try container.encode(apoapsisKm, forKey: .apoapsisKm) }
            if block.hasValue { try container.encode(block, forKey: .block) }
            if capSerial.hasValue { try container.encode(capSerial, forKey: .capSerial) }
            if capsuleReuse.hasValue { try container.encode(capsuleReuse, forKey: .capsuleReuse) }
            if coreFlight.hasValue { try container.encode(coreFlight, forKey: .coreFlight) }
            if coreReuse.hasValue { try container.encode(coreReuse, forKey: .coreReuse) }
            if coreSerial.hasValue { try container.encode(coreSerial, forKey: .coreSerial) }
            if customer.hasValue { try container.encode(customer, forKey: .customer) }
            if eccentricity.hasValue { try container.encode(eccentricity, forKey: .eccentricity) }
            if end.hasValue { try container.encode(end, forKey: .end) }
            if epoch.hasValue { try container.encode(epoch, forKey: .epoch) }
            if fairingsRecovered.hasValue { try container.encode(fairingsRecovered, forKey: .fairingsRecovered) }
            if fairingsRecoveryAttempt.hasValue { try container.encode(fairingsRecoveryAttempt, forKey: .fairingsRecoveryAttempt) }
            if fairingsReuse.hasValue { try container.encode(fairingsReuse, forKey: .fairingsReuse) }
            if fairingsReused.hasValue { try container.encode(fairingsReused, forKey: .fairingsReused) }
            if fairingsShip.hasValue { try container.encode(fairingsShip, forKey: .fairingsShip) }
            if gridfins.hasValue { try container.encode(gridfins, forKey: .gridfins) }
            if id.hasValue { try container.encode(id, forKey: .id) }
            if inclinationDeg.hasValue { try container.encode(inclinationDeg, forKey: .inclinationDeg) }
            if landSuccess.hasValue { try container.encode(landSuccess, forKey: .landSuccess) }
            if landingIntent.hasValue { try container.encode(landingIntent, forKey: .landingIntent) }
            if landingType.hasValue { try container.encode(landingType, forKey: .landingType) }
            if landingVehicle.hasValue { try container.encode(landingVehicle, forKey: .landingVehicle) }
            if launchDateLocal.hasValue { try container.encode(launchDateLocal, forKey: .launchDateLocal) }
            if launchDateUtc.hasValue { try container.encode(launchDateUtc, forKey: .launchDateUtc) }
            if launchSuccess.hasValue { try container.encode(launchSuccess, forKey: .launchSuccess) }
            if launchYear.hasValue { try container.encode(launchYear, forKey: .launchYear) }
            if legs.hasValue { try container.encode(legs, forKey: .legs) }
            if lifespanYears.hasValue { try container.encode(lifespanYears, forKey: .lifespanYears) }
            if longitude.hasValue { try container.encode(longitude, forKey: .longitude) }
            if manufacturer.hasValue { try container.encode(manufacturer, forKey: .manufacturer) }
            if meanMotion.hasValue { try container.encode(meanMotion, forKey: .meanMotion) }
            if missionId.hasValue { try container.encode(missionId, forKey: .missionId) }
            if missionName.hasValue { try container.encode(missionName, forKey: .missionName) }
            if nationality.hasValue { try container.encode(nationality, forKey: .nationality) }
            if noradId.hasValue { try container.encode(noradId, forKey: .noradId) }
            if orbit.hasValue { try container.encode(orbit, forKey: .orbit) }
            if payloadId.hasValue { try container.encode(payloadId, forKey: .payloadId) }
            if payloadType.hasValue { try container.encode(payloadType, forKey: .payloadType) }
            if periapsisKm.hasValue { try container.encode(periapsisKm, forKey: .periapsisKm) }
            if periodMin.hasValue { try container.encode(periodMin, forKey: .periodMin) }
            if raan.hasValue { try container.encode(raan, forKey: .raan) }
            if referenceSystem.hasValue { try container.encode(referenceSystem, forKey: .referenceSystem) }
            if regime.hasValue { try container.encode(regime, forKey: .regime) }
            if reused.hasValue { try container.encode(reused, forKey: .reused) }
            if rocketId.hasValue { try container.encode(rocketId, forKey: .rocketId) }
            if rocketName.hasValue { try container.encode(rocketName, forKey: .rocketName) }
            if rocketType.hasValue { try container.encode(rocketType, forKey: .rocketType) }
            if secondStageBlock.hasValue { try container.encode(secondStageBlock, forKey: .secondStageBlock) }
            if semiMajorAxisKm.hasValue { try container.encode(semiMajorAxisKm, forKey: .semiMajorAxisKm) }
            if ship.hasValue { try container.encode(ship, forKey: .ship) }
            if sideCore1Reuse.hasValue { try container.encode(sideCore1Reuse, forKey: .sideCore1Reuse) }
            if sideCore2Reuse.hasValue { try container.encode(sideCore2Reuse, forKey: .sideCore2Reuse) }
            if siteId.hasValue { try container.encode(siteId, forKey: .siteId) }
            if siteNameLong.hasValue { try container.encode(siteNameLong, forKey: .siteNameLong) }
            if siteName.hasValue { try container.encode(siteName, forKey: .siteName) }
            if start.hasValue { try container.encode(start, forKey: .start) }
            if tbd.hasValue { try container.encode(tbd, forKey: .tbd) }
            if tentativeMaxPrecision.hasValue { try container.encode(tentativeMaxPrecision, forKey: .tentativeMaxPrecision) }
            if tentative.hasValue { try container.encode(tentative, forKey: .tentative) }
        }
    
        /* CodingKeys */
        enum CodingKeys: String, CodingKey {
            case apoapsisKm = "apoapsis_km"
            case block = "block"
            case capSerial = "cap_serial"
            case capsuleReuse = "capsule_reuse"
            case coreFlight = "core_flight"
            case coreReuse = "core_reuse"
            case coreSerial = "core_serial"
            case customer = "customer"
            case eccentricity = "eccentricity"
            case end = "end"
            case epoch = "epoch"
            case fairingsRecovered = "fairings_recovered"
            case fairingsRecoveryAttempt = "fairings_recovery_attempt"
            case fairingsReuse = "fairings_reuse"
            case fairingsReused = "fairings_reused"
            case fairingsShip = "fairings_ship"
            case gridfins = "gridfins"
            case id = "id"
            case inclinationDeg = "inclination_deg"
            case landSuccess = "land_success"
            case landingIntent = "landing_intent"
            case landingType = "landing_type"
            case landingVehicle = "landing_vehicle"
            case launchDateLocal = "launch_date_local"
            case launchDateUtc = "launch_date_utc"
            case launchSuccess = "launch_success"
            case launchYear = "launch_year"
            case legs = "legs"
            case lifespanYears = "lifespan_years"
            case longitude = "longitude"
            case manufacturer = "manufacturer"
            case meanMotion = "mean_motion"
            case missionId = "mission_id"
            case missionName = "mission_name"
            case nationality = "nationality"
            case noradId = "norad_id"
            case orbit = "orbit"
            case payloadId = "payload_id"
            case payloadType = "payload_type"
            case periapsisKm = "periapsis_km"
            case periodMin = "period_min"
            case raan = "raan"
            case referenceSystem = "reference_system"
            case regime = "regime"
            case reused = "reused"
            case rocketId = "rocket_id"
            case rocketName = "rocket_name"
            case rocketType = "rocket_type"
            case secondStageBlock = "second_stage_block"
            case semiMajorAxisKm = "semi_major_axis_km"
            case ship = "ship"
            case sideCore1Reuse = "side_core1_reuse"
            case sideCore2Reuse = "side_core2_reuse"
            case siteId = "site_id"
            case siteNameLong = "site_name_long"
            case siteName = "site_name"
            case start = "start"
            case tbd = "tbd"
            case tentativeMaxPrecision = "tentative_max_precision"
            case tentative = "tentative"
        }
    }


    struct MissionsFind: Encodable, Hashable {
        /// 
        var id: OptionalArgument<String> = .absent
        /// 
        var manufacturer: OptionalArgument<String> = .absent
        /// 
        var name: OptionalArgument<String> = .absent
        /// 
        var payloadId: OptionalArgument<String> = .absent
    
        /* Encoder */
        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
        
            if id.hasValue { try container.encode(id, forKey: .id) }
            if manufacturer.hasValue { try container.encode(manufacturer, forKey: .manufacturer) }
            if name.hasValue { try container.encode(name, forKey: .name) }
            if payloadId.hasValue { try container.encode(payloadId, forKey: .payloadId) }
        }
    
        /* CodingKeys */
        enum CodingKeys: String, CodingKey {
            case id = "id"
            case manufacturer = "manufacturer"
            case name = "name"
            case payloadId = "payload_id"
        }
    }


    struct PayloadsFind: Encodable, Hashable {
        /// 
        var apoapsisKm: OptionalArgument<Double> = .absent
        /// 
        var customer: OptionalArgument<String> = .absent
        /// 
        var eccentricity: OptionalArgument<Double> = .absent
        /// 
        var epoch: OptionalArgument<String> = .absent
        /// 
        var inclinationDeg: OptionalArgument<Double> = .absent
        /// 
        var lifespanYears: OptionalArgument<Double> = .absent
        /// 
        var longitude: OptionalArgument<Double> = .absent
        /// 
        var manufacturer: OptionalArgument<String> = .absent
        /// 
        var meanMotion: OptionalArgument<Double> = .absent
        /// 
        var nationality: OptionalArgument<String> = .absent
        /// 
        var noradId: OptionalArgument<Int> = .absent
        /// 
        var orbit: OptionalArgument<String> = .absent
        /// 
        var payloadId: OptionalArgument<String> = .absent
        /// 
        var payloadType: OptionalArgument<String> = .absent
        /// 
        var periapsisKm: OptionalArgument<Double> = .absent
        /// 
        var periodMin: OptionalArgument<Double> = .absent
        /// 
        var raan: OptionalArgument<Double> = .absent
        /// 
        var referenceSystem: OptionalArgument<String> = .absent
        /// 
        var regime: OptionalArgument<String> = .absent
        /// 
        var reused: OptionalArgument<Bool> = .absent
        /// 
        var semiMajorAxisKm: OptionalArgument<Double> = .absent
    
        /* Encoder */
        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
        
            if apoapsisKm.hasValue { try container.encode(apoapsisKm, forKey: .apoapsisKm) }
            if customer.hasValue { try container.encode(customer, forKey: .customer) }
            if eccentricity.hasValue { try container.encode(eccentricity, forKey: .eccentricity) }
            if epoch.hasValue { try container.encode(epoch, forKey: .epoch) }
            if inclinationDeg.hasValue { try container.encode(inclinationDeg, forKey: .inclinationDeg) }
            if lifespanYears.hasValue { try container.encode(lifespanYears, forKey: .lifespanYears) }
            if longitude.hasValue { try container.encode(longitude, forKey: .longitude) }
            if manufacturer.hasValue { try container.encode(manufacturer, forKey: .manufacturer) }
            if meanMotion.hasValue { try container.encode(meanMotion, forKey: .meanMotion) }
            if nationality.hasValue { try container.encode(nationality, forKey: .nationality) }
            if noradId.hasValue { try container.encode(noradId, forKey: .noradId) }
            if orbit.hasValue { try container.encode(orbit, forKey: .orbit) }
            if payloadId.hasValue { try container.encode(payloadId, forKey: .payloadId) }
            if payloadType.hasValue { try container.encode(payloadType, forKey: .payloadType) }
            if periapsisKm.hasValue { try container.encode(periapsisKm, forKey: .periapsisKm) }
            if periodMin.hasValue { try container.encode(periodMin, forKey: .periodMin) }
            if raan.hasValue { try container.encode(raan, forKey: .raan) }
            if referenceSystem.hasValue { try container.encode(referenceSystem, forKey: .referenceSystem) }
            if regime.hasValue { try container.encode(regime, forKey: .regime) }
            if reused.hasValue { try container.encode(reused, forKey: .reused) }
            if semiMajorAxisKm.hasValue { try container.encode(semiMajorAxisKm, forKey: .semiMajorAxisKm) }
        }
    
        /* CodingKeys */
        enum CodingKeys: String, CodingKey {
            case apoapsisKm = "apoapsis_km"
            case customer = "customer"
            case eccentricity = "eccentricity"
            case epoch = "epoch"
            case inclinationDeg = "inclination_deg"
            case lifespanYears = "lifespan_years"
            case longitude = "longitude"
            case manufacturer = "manufacturer"
            case meanMotion = "mean_motion"
            case nationality = "nationality"
            case noradId = "norad_id"
            case orbit = "orbit"
            case payloadId = "payload_id"
            case payloadType = "payload_type"
            case periapsisKm = "periapsis_km"
            case periodMin = "period_min"
            case raan = "raan"
            case referenceSystem = "reference_system"
            case regime = "regime"
            case reused = "reused"
            case semiMajorAxisKm = "semi_major_axis_km"
        }
    }


    struct ShipsFind: Encodable, Hashable {
        /// 
        var id: OptionalArgument<String> = .absent
        /// 
        var name: OptionalArgument<String> = .absent
        /// 
        var model: OptionalArgument<String> = .absent
        /// 
        var type: OptionalArgument<String> = .absent
        /// 
        var role: OptionalArgument<String> = .absent
        /// 
        var active: OptionalArgument<Bool> = .absent
        /// 
        var imo: OptionalArgument<Int> = .absent
        /// 
        var mmsi: OptionalArgument<Int> = .absent
        /// 
        var abs: OptionalArgument<Int> = .absent
        /// 
        var `class`: OptionalArgument<Int> = .absent
        /// 
        var weightLbs: OptionalArgument<Int> = .absent
        /// 
        var weightKg: OptionalArgument<Int> = .absent
        /// 
        var yearBuilt: OptionalArgument<Int> = .absent
        /// 
        var homePort: OptionalArgument<String> = .absent
        /// 
        var status: OptionalArgument<String> = .absent
        /// 
        var speedKn: OptionalArgument<Int> = .absent
        /// 
        var courseDeg: OptionalArgument<Int> = .absent
        /// 
        var latitude: OptionalArgument<Double> = .absent
        /// 
        var longitude: OptionalArgument<Double> = .absent
        /// 
        var successfulLandings: OptionalArgument<Int> = .absent
        /// 
        var attemptedLandings: OptionalArgument<Int> = .absent
        /// 
        var mission: OptionalArgument<String> = .absent
    
        /* Encoder */
        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
        
            if id.hasValue { try container.encode(id, forKey: .id) }
            if name.hasValue { try container.encode(name, forKey: .name) }
            if model.hasValue { try container.encode(model, forKey: .model) }
            if type.hasValue { try container.encode(type, forKey: .type) }
            if role.hasValue { try container.encode(role, forKey: .role) }
            if active.hasValue { try container.encode(active, forKey: .active) }
            if imo.hasValue { try container.encode(imo, forKey: .imo) }
            if mmsi.hasValue { try container.encode(mmsi, forKey: .mmsi) }
            if abs.hasValue { try container.encode(abs, forKey: .abs) }
            if `class`.hasValue { try container.encode(`class`, forKey: .`class`) }
            if weightLbs.hasValue { try container.encode(weightLbs, forKey: .weightLbs) }
            if weightKg.hasValue { try container.encode(weightKg, forKey: .weightKg) }
            if yearBuilt.hasValue { try container.encode(yearBuilt, forKey: .yearBuilt) }
            if homePort.hasValue { try container.encode(homePort, forKey: .homePort) }
            if status.hasValue { try container.encode(status, forKey: .status) }
            if speedKn.hasValue { try container.encode(speedKn, forKey: .speedKn) }
            if courseDeg.hasValue { try container.encode(courseDeg, forKey: .courseDeg) }
            if latitude.hasValue { try container.encode(latitude, forKey: .latitude) }
            if longitude.hasValue { try container.encode(longitude, forKey: .longitude) }
            if successfulLandings.hasValue { try container.encode(successfulLandings, forKey: .successfulLandings) }
            if attemptedLandings.hasValue { try container.encode(attemptedLandings, forKey: .attemptedLandings) }
            if mission.hasValue { try container.encode(mission, forKey: .mission) }
        }
    
        /* CodingKeys */
        enum CodingKeys: String, CodingKey {
            case id = "id"
            case name = "name"
            case model = "model"
            case type = "type"
            case role = "role"
            case active = "active"
            case imo = "imo"
            case mmsi = "mmsi"
            case abs = "abs"
            case `class` = "class"
            case weightLbs = "weight_lbs"
            case weightKg = "weight_kg"
            case yearBuilt = "year_built"
            case homePort = "home_port"
            case status = "status"
            case speedKn = "speed_kn"
            case courseDeg = "course_deg"
            case latitude = "latitude"
            case longitude = "longitude"
            case successfulLandings = "successful_landings"
            case attemptedLandings = "attempted_landings"
            case mission = "mission"
        }
    }


    struct UsersInsertInput: Encodable, Hashable {
        /// 
        var id: OptionalArgument<String> = .absent
        /// 
        var name: OptionalArgument<String> = .absent
        /// 
        var rocket: OptionalArgument<String> = .absent
        /// 
        var timestamp: OptionalArgument<String> = .absent
        /// 
        var twitter: OptionalArgument<String> = .absent
    
        /* Encoder */
        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
        
            if id.hasValue { try container.encode(id, forKey: .id) }
            if name.hasValue { try container.encode(name, forKey: .name) }
            if rocket.hasValue { try container.encode(rocket, forKey: .rocket) }
            if timestamp.hasValue { try container.encode(timestamp, forKey: .timestamp) }
            if twitter.hasValue { try container.encode(twitter, forKey: .twitter) }
        }
    
        /* CodingKeys */
        enum CodingKeys: String, CodingKey {
            case id = "id"
            case name = "name"
            case rocket = "rocket"
            case timestamp = "timestamp"
            case twitter = "twitter"
        }
    }


    struct UsersOnConflict: Encodable, Hashable {
        /// 
        var constraint: Enums.UsersConstraint
        /// 
        var updateColumns: [Enums.UsersUpdateColumn]
    
        /* Encoder */
        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
        
            try container.encode(constraint, forKey: .constraint)
            try container.encode(updateColumns, forKey: .updateColumns)
        }
    
        /* CodingKeys */
        enum CodingKeys: String, CodingKey {
            case constraint = "constraint"
            case updateColumns = "update_columns"
        }
    }


    struct UsersSetInput: Encodable, Hashable {
        /// 
        var id: OptionalArgument<String> = .absent
        /// 
        var name: OptionalArgument<String> = .absent
        /// 
        var rocket: OptionalArgument<String> = .absent
        /// 
        var timestamp: OptionalArgument<String> = .absent
        /// 
        var twitter: OptionalArgument<String> = .absent
    
        /* Encoder */
        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
        
            if id.hasValue { try container.encode(id, forKey: .id) }
            if name.hasValue { try container.encode(name, forKey: .name) }
            if rocket.hasValue { try container.encode(rocket, forKey: .rocket) }
            if timestamp.hasValue { try container.encode(timestamp, forKey: .timestamp) }
            if twitter.hasValue { try container.encode(twitter, forKey: .twitter) }
        }
    
        /* CodingKeys */
        enum CodingKeys: String, CodingKey {
            case id = "id"
            case name = "name"
            case rocket = "rocket"
            case timestamp = "timestamp"
            case twitter = "twitter"
        }
    }


    struct UsersAggregateOrderBy: Encodable, Hashable {
        /// 
        var count: OptionalArgument<Enums.OrderBy> = .absent
        /// 
        var max: OptionalArgument<InputObjects.UsersMaxOrderBy> = .absent
        /// 
        var min: OptionalArgument<InputObjects.UsersMinOrderBy> = .absent
    
        /* Encoder */
        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
        
            if count.hasValue { try container.encode(count, forKey: .count) }
            if max.hasValue { try container.encode(max, forKey: .max) }
            if min.hasValue { try container.encode(min, forKey: .min) }
        }
    
        /* CodingKeys */
        enum CodingKeys: String, CodingKey {
            case count = "count"
            case max = "max"
            case min = "min"
        }
    }


    struct UsersMaxOrderBy: Encodable, Hashable {
        /// 
        var name: OptionalArgument<Enums.OrderBy> = .absent
        /// 
        var rocket: OptionalArgument<Enums.OrderBy> = .absent
        /// 
        var timestamp: OptionalArgument<Enums.OrderBy> = .absent
        /// 
        var twitter: OptionalArgument<Enums.OrderBy> = .absent
    
        /* Encoder */
        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
        
            if name.hasValue { try container.encode(name, forKey: .name) }
            if rocket.hasValue { try container.encode(rocket, forKey: .rocket) }
            if timestamp.hasValue { try container.encode(timestamp, forKey: .timestamp) }
            if twitter.hasValue { try container.encode(twitter, forKey: .twitter) }
        }
    
        /* CodingKeys */
        enum CodingKeys: String, CodingKey {
            case name = "name"
            case rocket = "rocket"
            case timestamp = "timestamp"
            case twitter = "twitter"
        }
    }


    struct UsersMinOrderBy: Encodable, Hashable {
        /// 
        var name: OptionalArgument<Enums.OrderBy> = .absent
        /// 
        var rocket: OptionalArgument<Enums.OrderBy> = .absent
        /// 
        var timestamp: OptionalArgument<Enums.OrderBy> = .absent
        /// 
        var twitter: OptionalArgument<Enums.OrderBy> = .absent
    
        /* Encoder */
        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
        
            if name.hasValue { try container.encode(name, forKey: .name) }
            if rocket.hasValue { try container.encode(rocket, forKey: .rocket) }
            if timestamp.hasValue { try container.encode(timestamp, forKey: .timestamp) }
            if twitter.hasValue { try container.encode(twitter, forKey: .twitter) }
        }
    
        /* CodingKeys */
        enum CodingKeys: String, CodingKey {
            case name = "name"
            case rocket = "rocket"
            case timestamp = "timestamp"
            case twitter = "twitter"
        }
    }


    struct UsersArrRelInsertInput: Encodable, Hashable {
        /// 
        var data: [InputObjects.UsersInsertInput]
        /// 
        var onConflict: OptionalArgument<InputObjects.UsersOnConflict> = .absent
    
        /* Encoder */
        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
        
            try container.encode(data, forKey: .data)
            if onConflict.hasValue { try container.encode(onConflict, forKey: .onConflict) }
        }
    
        /* CodingKeys */
        enum CodingKeys: String, CodingKey {
            case data = "data"
            case onConflict = "on_conflict"
        }
    }


    struct UsersObjRelInsertInput: Encodable, Hashable {
        /// 
        var data: InputObjects.UsersInsertInput
        /// 
        var onConflict: OptionalArgument<InputObjects.UsersOnConflict> = .absent
    
        /* Encoder */
        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
        
            try container.encode(data, forKey: .data)
            if onConflict.hasValue { try container.encode(onConflict, forKey: .onConflict) }
        }
    
        /* CodingKeys */
        enum CodingKeys: String, CodingKey {
            case data = "data"
            case onConflict = "on_conflict"
        }
    }
}