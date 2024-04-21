local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Puzzle.WolfBroShooting.WolfBroShootingBossHPBarContainerPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Puzzle.WolfBroShooting.WolfBroShootingBossHPBarPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Puzzle.WolfBroShooting.WolfBroShootingBossHPBarPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "WolfBroShootingBossHPBarContainerPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._boss_hp_percentage = 1
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIWolfBroShootingBossAdd
  L4_2 = A0_2._on_wolf_bro_shooting_boss_add
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIWolfBroShootingBossRemove
  L4_2 = A0_2._on_wolf_bro_shooting_boss_remove
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIWolfBroShootingBossHPChange
  L4_2 = A0_2._on_wolf_bro_shooting_boss_hp_change
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIWolfBroShootingBossAvatarChange
  L4_2 = A0_2._on_wolf_bro_shooting_boss_avatar_change
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.WolfBroShootingBossHPBarPanel
  L4_2 = G
  L4_2 = L4_2.WolfBroShootingBossHPBarPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.hp_bar = L1_2
  L1_2 = A0_2.hp_bar
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.trans_hp_bar
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.hp_bar
  L2_2 = L1_2
  L1_2 = L1_2.init_hp
  L3_2 = A0_2._boss_hp_percentage
  L1_2(L2_2, L3_2)
end
L0_1._on_wolf_bro_shooting_boss_add = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.hp_bar
  L2_2 = L1_2
  L1_2 = L1_2.fade_out
  L3_2 = A0_2._boss_hp_percentage
  L1_2(L2_2, L3_2)
end
L0_1._on_wolf_bro_shooting_boss_remove = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.HPNormalized
  A0_2._boss_hp_percentage = L2_2
  L2_2 = A0_2.hp_bar
  L3_2 = L2_2
  L2_2 = L2_2.set_hp
  L4_2 = A1_2.HPNormalized
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.hp_bar
  L3_2 = L2_2
  L2_2 = L2_2.set_hp_bar_count
  L4_2 = A1_2.HPBarCount
  L2_2(L3_2, L4_2)
end
L0_1._on_wolf_bro_shooting_boss_hp_change = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 then
    L2_2 = "SpriteOutput/UI/Maze/MiniGame/Shooting/BossIcon/ShootingBossIcon2.png"
    if L2_2 then
      goto lbl_7
    end
  end
  L2_2 = "SpriteOutput/UI/Maze/MiniGame/Shooting/BossIcon/ShootingBossIcon1.png"
  ::lbl_7::
  L3_2 = A0_2.hp_bar
  L4_2 = L3_2
  L3_2 = L3_2.set_boss_icon
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._on_wolf_bro_shooting_boss_avatar_change = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.trans_hp_bar
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_dispose = L1_1
return L0_1
