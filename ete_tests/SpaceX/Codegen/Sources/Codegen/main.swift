import Foundation
import Files
import SwiftGraphQLCodegen


let endpoint = URL(string: "https://api.spacex.land/graphql/")!
//let endpoint = URL(string: "https://serve.onegraph.com/graphql")!

do {
    let root = try File(path: #file)
        .parent! // Codegen
        .parent! // Sources
        .parent! // Codegen
        .parent! // SpaceX

    let target = try root
        .subfolder(at: "Shared")
        .createFile(at: "API.swift").url
    
    /* Create Generator */
    let scalars: [String: String] = [
        "uuid": "String",
        "timestamptz": "String",
        "Date": "String"
    ]
    let options = GraphQLCodegen.Options(
        scalarMappings: scalars
    )
    let generator = GraphQLCodegen(options: options)
    
    try generator.generate(target, from: endpoint)
    
    print("Generated API to \(target.absoluteString)")
} catch let error {
    print("ERROR: \(error)")
    exit(1)
}

