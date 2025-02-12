// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License.
#pragma once

#include "AdaptiveFontTypeDefinition.g.h"

namespace winrt::AdaptiveCards::Rendering::Uwp::implementation
{
    struct AdaptiveFontTypeDefinition : AdaptiveFontTypeDefinitionT<AdaptiveFontTypeDefinition>
    {
        AdaptiveFontTypeDefinition(::AdaptiveCards::FontTypeDefinition const& fontTypeDefinition = {});

        property<hstring> FontFamily;
        property<winrt::AdaptiveFontWeightsConfig> FontWeights;
        property<winrt::AdaptiveFontSizesConfig> FontSizes;
    };
}
namespace winrt::AdaptiveCards::Rendering::Uwp::factory_implementation
{
    struct AdaptiveFontTypeDefinition : AdaptiveFontTypeDefinitionT<AdaptiveFontTypeDefinition, implementation::AdaptiveFontTypeDefinition>
    {
    };
}
