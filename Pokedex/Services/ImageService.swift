//
//  ImageService.swift
//  Pokedex
//
//  Created by Mehdi Zerfaoui on 26/02/2023.
//

import Foundation
import UIKit

class ImageService {
    func loadImage(from url: URL, completion: @escaping (Result<UIImage, Error>) -> Void) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
            } else if let data = data, let image = UIImage(data: data) {
                completion(.success(image))
            } else {
                completion(.failure(NSError(domain: "ImageService", code: 0, userInfo: nil)))
            }
        }.resume()
    }
}
