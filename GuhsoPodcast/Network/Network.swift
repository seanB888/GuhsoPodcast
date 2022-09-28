//
//  Network.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 9/2/22.
//

import Foundation
import Apollo
import ApolloSQLite

class Network {
    static let shared = Network()
    
    // Guhso API link...
    let url = "https://guhso.com/api/guhso.json"
    
    private(set) lazy var apollo = ApolloClient(url: URL(string: url)!)
    
    private var apolloSQLite: ApolloClient {
        do {
            let documentsPath = try FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
            
            // creates cache file...
            let fileURL = documentsPath.appendingPathComponent("apollo_cache.sqlite")
            
            let sqliteCache = try SQLiteNormalizedCache(fileURL: fileURL)
            
            let store = ApolloStore(cache: sqliteCache)
            
            // networkTransport...
            let normalTransport: RequestChainNetworkTransport = RequestChainNetworkTransport(interceptorProvider: DefaultInterceptorProvider(store: store), endpointURL: URL(string: url)!)
            
            // ApolloClient...
            return ApolloClient(networkTransport: normalTransport, store: store)
            
        } catch {
            print("ERROR: Not able to create ApoloSQLite Client: \(error)")
            return apollo
        }
    }//()
}
