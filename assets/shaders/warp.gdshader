shader_type spatial;

uniform float alpha = 1.0;
uniform float object_radius = 2.0;
uniform float progress = 1.0;
uniform vec3 target_shift = vec3(-10.0, 0.0, 10.0);

void fragment() {
	ALBEDO = COLOR.rgb;
}

void vertex(){
	if (distance(VERTEX, target_shift) - object_radius + object_radius * progress * 2.0 < length(target_shift)){
		VERTEX = VERTEX + target_shift;
	}
}