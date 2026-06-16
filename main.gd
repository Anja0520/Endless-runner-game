extends Node2D

@export var obstacle_scene: PackedScene

# یک متغیر برای ذخیره امتیاز می‌سازیم که از صفر شروع می‌شود
var score = 0.0

# این تابع هر یک فریم از بازی (تقریباً ۶۰ بار در ثانیه) اجرا می‌شود
func _process(delta):
	# هر ثانیه ۱۰ عدد به امتیاز اضافه کن
	score += 10 * delta 
	# امتیاز را به عدد صحیح (بدون اعشار) تبدیل کن و روی صفحه بنویس
	$CanvasLayer/Label.text = "Score: " + str(int(score))

# این همان تابع کارخانه تولید مانع است 
func _on_timer_timeout():
	var new_obstacle = obstacle_scene.instantiate()
	var random_x = randf_range(1200, 1500)
	new_obstacle.position = Vector2(random_x, 500)
	add_child(new_obstacle)
	
