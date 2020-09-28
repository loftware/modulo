extension BinaryInteger {
    /// Compute the modulo of the integer by the given `divisor`.
    ///
    /// This differs from the remainder operator (`%`) in that it gives
    /// results consistent with a true modulo function for inputs less than
    /// zero. Modulo can be expressed as the remainder of a floored division
    /// of two integers.
    ///
    /// The result of modulo will always lie in the range 0..<divisor.
    public func modulo(_ divisor: Self) -> Self {
        return (self % divisor + divisor) % divisor
    }
}