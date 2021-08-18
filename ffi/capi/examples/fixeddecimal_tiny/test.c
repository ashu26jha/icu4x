// This file is part of ICU4X. For terms of use, please see the file
// called LICENSE at the top level of the ICU4X source tree
// (online at: https://github.com/unicode-org/icu4x/blob/main/LICENSE ).

#include "../../include/ICU4XFixedDecimalFormat.h"
#include <string.h>
#include <stdio.h>

int main() {
    ICU4XLocale* locale = ICU4XLocale_create_bn();
    ICU4XCreateStaticDataProviderResult result = ICU4XStaticDataProvider_create();
    if (!result.success) {
        printf("Failed to create FsDataProvider\n");
        return 1;
    }
    ICU4XStaticDataProvider* provider = result.provider;
    ICU4XFixedDecimal* decimal = ICU4XFixedDecimal_create(1000007);

    ICU4XFixedDecimalFormatOptions opts = {ICU4XFixedDecimalGroupingStrategy_Auto, ICU4XFixedDecimalSignDisplay_Auto};

    ICU4XFixedDecimalFormatResult fdf_result = ICU4XFixedDecimalFormat_try_new_from_static(locale, provider, opts);
    if (!fdf_result.success)  {
        printf("Failed to create FixedDecimalFormat\n");
        return 1;
    }
    ICU4XFixedDecimalFormat* fdf = fdf_result.fdf;
    char output[40];

    DiplomatWriteable write = diplomat_simple_writeable(output, 40);

    bool success = ICU4XFixedDecimalFormat_format(fdf, decimal, &write).is_ok;
    if (!success) {
        printf("Failed to write result of FixedDecimalFormat::format to string.\n");
        return 1;
    }
    printf("Output is %s\n", output);

    const char* expected = u8"১০,০০,০০৭";
    if (strcmp(output, expected) != 0) {
        printf("Output does not match expected output!\n");
        return 1;
    }

    ICU4XFixedDecimal_destroy(decimal);
    ICU4XFixedDecimalFormat_destroy(fdf);
    ICU4XLocale_destroy(locale);
    ICU4XStaticDataProvider_destroy(provider);

    return 0;
}
