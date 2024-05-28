//
//  invertAlpha.metal
//  HWS-METAL
//
//  Created by Furkan Alioglu on 28.05.2024.
//

#include <metal_stdlib>
using namespace metal;

[[ stitchable ]] half4 invertAlpha(
                               float2 pos,
                               half4 color) {
                                   // r, g, b ,opacity
                                   return half4(1,0,0, 1 - color.a);
                               }
