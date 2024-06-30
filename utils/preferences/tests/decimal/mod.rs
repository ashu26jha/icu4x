mod decimal;
mod options;

use crate::decimal::options::{DecimalSeparator, GroupingSeparator};
use icu_decimal::options::GroupingStrategy;
use icu_preferences::options;

options!(
    FixedDecimalFormatOptions,
    FixedDecimalFormatResolvedOptions,
    {
        grouping_strategy => GroupingStrategy,
        decimal_separator => DecimalSeparator,
        grouping_separator => GroupingSeparator
    }
);

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_decimal_separator() {
        let decimal_separator = DecimalSeparator::Comma;
        assert_eq!(decimal_separator, DecimalSeparator::Comma);
        let grouping_separator = GroupingSeparator::Dot;
        assert_eq!(grouping_separator, GroupingSeparator::Dot);

    }
}
