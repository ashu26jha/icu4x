#[derive(Debug, PartialEq)]
pub enum DecimalSeparator {
    Dot,
    Comma,
}

impl Default for DecimalSeparator {
    fn default() -> Self {
        Self::Dot
    }
}


#[derive(Debug, PartialEq)]
pub enum GroupingSeparator {
    Dot,
    Comma,
}

impl Default for GroupingSeparator {
    fn default() -> Self {
        Self::Comma
    }
}