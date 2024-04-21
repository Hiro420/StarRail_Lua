local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "WolfBroShootingBossHPBarPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UI_ShootingTargetBoss_BossHp_Hurt"
L2_1 = "UI_ShootingTargetBoss_BossHp_Fadeout"
L3_1 = "UI_ShootingTargetBoss_BossHp_Recover"
L4_1 = 0.25
L5_1 = 0.3
L6_1 = 0.1
L7_1 = 0.5
L8_1 = 0.3
L9_1 = 0.1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._boss_bar_cur_progress = 1
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_boss_hp_bar
  L2_2 = L1_1
  L1_2.hp_hurt = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_boss_hp_bar
  L2_2 = L2_1
  L1_2.hp_zero = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_boss_hp_bar
  L2_2 = L3_1
  L1_2.hp_heal = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L2_1
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.safe_set_active
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  A0_2._boss_bar_cur_progress = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_boss_hp_bar
  L3_2 = L2_2
  L2_2 = L2_2.setup_init_value
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.init_hp = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._boss_bar_cur_progress
  if A1_2 < L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_boss_hp_bar
    L3_2 = L2_2
    L2_2 = L2_2.setup_view_with_tween
    L4_2 = A0_2._boss_bar_cur_progress
    L5_2 = A1_2
    L6_2 = L4_1
    L7_2 = L5_1
    L8_2 = L6_1
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_boss_hp_bar
    L3_2 = L2_2
    L2_2 = L2_2.setup_view_with_tween
    L4_2 = A0_2._boss_bar_cur_progress
    L5_2 = A1_2
    L6_2 = L7_1
    L7_2 = L8_1
    L8_2 = L9_1
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  end
  A0_2._boss_bar_cur_progress = A1_2
end
L0_1.set_hp = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_boss_hp
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = "x"
  L5_2 = A1_2
  L4_2 = L4_2 .. L5_2
  L2_2(L3_2, L4_2)
end
L0_1.set_hp_bar_count = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_boss_hp_bar
  L2_2 = L1_2
  L1_2 = L1_2.show_hp_zero_anim
  L1_2(L2_2)
end
L0_1.fade_out = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_boss
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.set_boss_icon = L10_1
return L0_1
