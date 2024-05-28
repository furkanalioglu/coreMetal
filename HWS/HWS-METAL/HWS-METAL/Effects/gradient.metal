//
//  gradient.metal
//  HWS-METAL
//
//  Created by Furkan Alioglu on 28.05.2024.
//

#include <metal_stdlib>
using namespace metal;


[[ stitchable ]] half4 gradient(float2 pos, half4 color) {
    return half4(
                 pos.x / pos.y,
                 0,
                 pos.y / pos.x,
                 color.a);
}
