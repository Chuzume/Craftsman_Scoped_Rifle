# 俺が実行者だ
    tag @s add Chuz.This
    
# 発砲
    playsound chuzume:launcher_shot player @a ~ ~ ~ 3 1.2
    playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 4 0.7
    playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 4 1
    playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 3 1.5

# 弾を召喚
    function craftsman_arms:item/grenade_launcher/fire/summon

# 弾丸にInit処理
    scoreboard players set @e[type=item,tag=Chuz.Projectile_Init,limit=1] Chuz.Speed 10
    execute as @e[type=item,tag=Chuz.Projectile_Init,limit=1] at @s run function craftsman_arms:entity/grenade/init

# 弾が減る
    execute in overworld run function craftsman_arms:item/consume_ammo

# もう実行者ではない
    tag @s remove Chuz.This

# リロードを阻害
    scoreboard players reset @s S.Rif_Ready
    scoreboard players reset @s S.Rif_Reload
    scoreboard players reset @s S.Rif_Charge