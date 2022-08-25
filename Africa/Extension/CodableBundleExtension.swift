//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by alieu samb on 09/02/2022.
//

import Foundation

extension Bundle{
    func decode<T: Codable>(_ file: String) -> T{
        //1: localiser le file Json
        
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("erro de localisation du fichier\(file) in bundle")
        }
        
        //2: creer des propriete pour les donnes
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to decode \(file) from bundle")
        }
        
        //3:creer un decoder
        
        let decoder = JSONDecoder()
        
        //4: creer des propiete pour le decoder des donnes
        
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Error de decodage de \(file) from bundle")
        }
        
        //5:retouner les donnes pret a etre utilise
        
        return loaded
    }

}
