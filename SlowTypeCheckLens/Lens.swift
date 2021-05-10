public struct Lens<Whole, Part> {
    public let view: (Whole) -> Part
    public let set: (Part, Whole) -> Whole

    public init(view: @escaping (Whole) -> Part, set: @escaping (Part, Whole) -> Whole) {
        self.view = view
        self.set = set
    }
}

// MARK: - KeyPath lenses

public func lens<Whole, Part>(_ keyPath: WritableKeyPath<Whole, Part>) -> Lens<Whole, Part> {
    return Lens<Whole, Part>(
        view: { $0[keyPath: keyPath] },
        set: { part, whole in
            var copy = whole
            copy[keyPath: keyPath] = part
            return copy
        }
    )
}

/**
 Infix operator of the `set` function.

 - parameter keyPath: A key path.
 - parameter part:    A part.

 - returns: A function that transforms a whole into a new whole with a part replaced.
 */

public func .~ <Whole, Part>(lens: Lens<Whole, Part>, part: Part) -> ((Whole) -> Whole) {
    return { whole in lens.set(part, whole) }
}


public func .~ <Whole, Part>(keyPath: WritableKeyPath<Whole, Part>, part: Part) -> ((Whole) -> Whole) {
    return lens(keyPath) .~ part
}
