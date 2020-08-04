precision highp float;
varying lowp vec4 varyColor;
varying lowp vec2 textColor;
uniform sampler2D colorMap;
void main(){
    //    gl_FragColor = varyColor;
    vec4 yColor = texture2D(colorMap, textColor);
    vec4 mask = varyColor;
    float alpha = 0.3;
    gl_FragColor = mask * (1.0 - alpha) + yColor * alpha;
}
