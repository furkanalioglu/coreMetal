//
//  rainbowEffect.metal
//  HWS-METAL
//
//  Created by Furkan Alioglu on 28.05.2024.
//

#include <metal_stdlib>
using namespace metal;

[[stitchable]] half4 rainbow(float2 pos, half4 color, float t) {
    float angle = atan2(
                        pos.y,
                        pos.x
                        ) + t;
    return half4(
                 sin(angle),
                 sin(angle + 2),
                 sin(angle + 4),
                 color.a
                 );
}
