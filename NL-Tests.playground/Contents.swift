import UIKit
import NaturalLanguage

if #available(iOS 12.0, *) {
    let tagger = NLTagger(tagSchemes: [.nameType])
    
    let text = "Steve Jobs, steve wozniak and Ronald Wayne founded Apple computer (Apple Inc.)"
    
    tagger.string = text
    
    tagger.enumerateTags(in: text.startIndex..<text.endIndex, unit: .word, scheme: .nameType, options: [.omitPunctuation, .omitWhitespace, .joinNames]) { (tag, tokenRange) -> Bool in
        if let resutl = tag {
            print("\(text[tokenRange]): \(resutl.rawValue)")
        }
    return true
    }
//    return true
}
