//  Copyright (c) 2014 Rob Rix. All rights reserved.

/// The type conformed to by all boxes.
public protocol BoxType {
	/// The type of the wrapped value.
	typealias Value

	/// Initializes an intance of the type with a value.
	init(_ value: Value)

	/// The wrapped value.
	var value: Value { get }
}

/// The type conformed to by mutable boxes.
public protocol MutableBoxType: BoxType {
	/// The (mutable) wrapped value.
	var value: Value { get set }
}


/// Equality of `BoxType`s of `Equatable` types.
///
/// We cannot declare that e.g. `Box<T: Equatable>` conforms to `Equatable`, so this is a relatively ad hoc definition.
public func == <B: BoxType where B.Value: Equatable> (lhs: B, rhs: B) -> Bool {
	return lhs.value == rhs.value
}

/// Inequality of `Box`es of `Equatable` types.
///
/// We cannot declare that e.g. `Box<T: Equatable>` conforms to `Equatable`, so this is a relatively ad hoc definition.
public func != <B: BoxType where B.Value: Equatable> (lhs: B, rhs: B) -> Bool {
	return lhs.value != rhs.value
}