precedencegroup LensSetPrecedence {
    associativity: left
    higherThan: FunctionCompositionPrecedence
}

precedencegroup LeftApplyPrecedence {
    associativity: left
    higherThan: AssignmentPrecedence
    lowerThan: TernaryPrecedence
}

precedencegroup FunctionCompositionPrecedence {
    associativity: right
    higherThan: LeftApplyPrecedence
}

infix operator |>: LeftApplyPrecedence

infix operator .~: LensSetPrecedence

/**
 Pipe a value into a function.

 - parameter x: A value.
 - parameter f: A function

 - returns: The value from apply `f` to `x`.
 */
public func |> <A, B>(x: A, f: (A) -> B) -> B {
    return f(x)
}
