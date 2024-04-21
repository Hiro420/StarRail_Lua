local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.PlayerLevelUp.WorldLevelUpgradeDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "WorldLevelUpgradeDialog"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 3.5
L2_1 = G
L2_1 = L2_1.TextExtensions
L3_1 = G
L3_1 = L3_1.ComponentExtensions
L4_1 = "PlayerLevel_WorldLevelUp"
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIShowPageContext
  L4_2 = A0_2._on_show_ui_page
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Time
  L1_2 = L1_2.time
  L2_2 = A0_2._closeStamp
  if L1_2 > L2_2 then
    L1_2 = A0_2._complete_callback
    if L1_2 ~= nil then
      L1_2 = A0_2._complete_callback
      L2_2 = A0_2._complete_obj
      L1_2(L2_2)
    end
    L2_2 = A0_2
    L1_2 = A0_2._exit
    L1_2(L2_2)
  end
end
L0_1._on_tick = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L2_1.SafeSetText
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_last_level
  L3_2 = A0_2._player_previous_level
  L1_2(L2_2, L3_2)
  L1_2 = L2_1.SafeSetText
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_cur_level
  L3_2 = A0_2._player_current_level
  L1_2(L2_2, L3_2)
  L1_2 = L2_1.SafeSetText
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_level_max
  L3_2 = A0_2._player_max_level
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.GetClip
  L3_2 = L4_1
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.length
  L1_1 = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L4_1
  L1_2(L2_2, L3_2)
end
L0_1._refresh_view = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = G
  L3_2 = L3_2.PopupQueueManager
  L4_2 = L3_2
  L3_2 = L3_2.set_maze_main_page_toast
  L5_2 = A0_2
  L6_2 = A0_2._exit
  L3_2(L4_2, L5_2, L6_2)
  A0_2._player_current_level = A2_2
  A0_2._player_previous_level = A1_2
  L3_2 = A0_2._player_current_level
  if 0 < L3_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.WorldLevelExcelTable
    L3_2 = L3_2.GetData
    L4_2 = A0_2._player_current_level
    L3_2 = L3_2(L4_2)
    L4_2 = L3_2.MaxPlayerLevel
    A0_2._player_max_level = L4_2
  end
  L4_2 = A0_2
  L3_2 = A0_2._refresh_view
  L3_2(L4_2)
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Time
  L3_2 = L3_2.time
  L4_2 = L1_1
  L3_2 = L3_2 + L4_2
  A0_2._closeStamp = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._add_tick
  L3_2(L4_2)
end
L0_1.refresh = L5_1
function L5_1(A0_2, A1_2, A2_2)
  A0_2._complete_obj = A1_2
  A0_2._complete_callback = A2_2
end
L0_1.set_complete_callback = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._exit
  L1_2(L2_2)
end
L0_1._on_show_ui_page = L5_1
return L0_1
