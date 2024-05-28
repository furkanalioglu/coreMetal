//
//  wave.metal
//  HWS-METAL
//
//  Created by Furkan Alioglu on 28.05.2024.
//

#include <metal_stdlib>
using namespace metal;

[[stitchable]] float2 wave(
                           float2 pos,
                           float t) {
                               pos.y += sin(t * 5 + pos.y / 20) * 5;
                               return pos;
                           }

