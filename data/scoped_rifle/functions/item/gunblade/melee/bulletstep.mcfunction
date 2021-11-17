
# タグ付与
    tag @s add S.Rif_NoStep

# 演出
    particle minecraft:smoke ~ ~ ~ 0 0 0 0.1 5
    particle minecraft:lava ~ ~ ~ 0 0 0 0.7 5
    playsound minecraft:entity.zombie.infect player @a ~ ~ ~ 1.5 2
    playsound minecraft:entity.goat.long_jump player @a ~ ~ ~ 2 2
    playsound minecraft:entity.zombie.infect player @a ~ ~ ~ 1.5 2
    playsound minecraft:entity.goat.long_jump player @a ~ ~ ~ 2 2
    playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 3 1
    playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 2 1.5
    
# 落下速度リセットしてAECで打ち上げる
    tp @s @s
    summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:5b,Amplifier:0b,Duration:15},{Id:11b,Amplifier:3b,Duration:15},{Id:25b,Amplifier:20b,Duration:3,ShowParticles:0b},{Id:28b,Amplifier:0b,Duration:10,ShowParticles:0b}]}

# 数を指定して当たり判定用のスライムをぶつける
    scoreboard players set @s S.Rif_Recursive 35
    execute rotated ~ 0 run function scoped_rifle:item/gunblade/summon_recursive

# 弾が減る
    execute in overworld run function scoped_rifle:item/consume_ammo

# リセット
    scoreboard players reset @s S.Rif_Ready
    scoreboard players reset @s S.Rif_Reload
    tag @s remove Chuz.This