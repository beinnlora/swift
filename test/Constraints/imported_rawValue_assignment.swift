// RUN: %target-swift-frontend %clang-importer-sdk -parse %s -verify
// REQUIRES: objc_interop

import Foundation

class RV {
	init() {
		PrefixWordBreak2.breakBarBas.rawValue = 0 // expected-error{{cannot assign to property: 'rawValue' is immutable}}
	}
}
