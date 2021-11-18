// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License.
#pragma once

namespace AdaptiveCards::Rendering::WinUI3
{
    // TODO: Comeback to this thing
    struct DECLSPEC_UUID("D940E878-F2E0-4AF7-A844-4D090C7379E3") IImageLoadTrackerListener
        : public ::IUnknown
    {
    public:
        virtual void AllImagesLoaded() = 0;
        virtual void ImagesLoadingHadError() = 0;
    };

}