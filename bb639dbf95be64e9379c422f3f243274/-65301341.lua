local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.Handbook.Components.RogueHandbookEventPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueHandbookEventPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_Rogue_HandBook_UnKownTitle"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.RewardItemIconLite
  L4_2 = G
  L4_2 = L4_2.RewardItemIconLiteBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._reward_panel = L1_2
  L1_2 = A0_2._reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.reward_icon_root
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind_click
  L3_2 = A0_2
  L4_2 = A0_2._on_reward_item_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_play_record
  L4_2 = A0_2._on_btn_play_record_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.KLMKMJINKJH
  L4_2 = A0_2.refresh
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._update_txt
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._update_figure
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._update_reward
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._update_play_record
  L2_2(L3_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_view
  L3_2 = A0_2._data
  L1_2(L2_2, L3_2)
end
L0_1.refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._data
  L1_2 = L1_2.IsUnlocked
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.random_evt_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._data
    L3_2 = L3_2.Title
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.random_evt_type_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.random_evt_type_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._data
    L3_2 = L3_2.Type
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.random_evt_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = L1_1
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.random_evt_type_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.random_evt_content
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._update_txt = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._data
  L1_2 = L1_2.IsUnlocked
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.random_evt_figure
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.empty_figure_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2._load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.random_evt_figure
    L4_2 = A0_2._data
    L4_2 = L4_2.ImagePath
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.random_evt_figure
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.empty_figure_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.empty_figure_unlock_hint_text
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._data
    L3_2 = L3_2.UnlockHintDesc
    L1_2(L2_2, L3_2)
  end
end
L0_1._update_figure = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._data
  L1_2 = L1_2.HasUntakenReward
  if L1_2 == false then
    L1_2 = A0_2._data
    L1_2 = L1_2.IsUnlocked
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.reward_root
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = false
      L1_2(L2_2, L3_2)
      return
  end
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.reward_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
  L1_2 = G
  L1_2 = L1_2.RewardUtils
  L1_2 = L1_2.CreateRewardItemTable
  L2_2 = A0_2._data
  L2_2 = L2_2.RewardID
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = #L1_2
    if L2_2 ~= 0 then
      goto lbl_33
    end
  end
  do return end
  ::lbl_33::
  L2_2 = A0_2._reward_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2[1]
  L4_2 = L4_2.ItemID
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._reward_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_count
  L4_2 = L1_2[1]
  L4_2 = L4_2.Count
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._reward_panel
  L3_2 = L2_2
  L2_2 = L2_2.update_lock_mark
  L4_2 = A0_2._data
  L4_2 = L4_2.IsUnlocked
  L4_2 = not L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._data
  L2_2 = L2_2.HasUntakenReward
  if L2_2 then
    L2_2 = A0_2._reward_panel
    L3_2 = L2_2
    L2_2 = L2_2.hide_eff
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._reward_panel
    L3_2 = L2_2
    L2_2 = L2_2.play_effect
    L4_2 = 1
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._reward_panel
    L3_2 = L2_2
    L2_2 = L2_2.hide_eff
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.eff_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._data
  L4_2 = L4_2.HasUntakenReward
  L2_2(L3_2, L4_2)
end
L0_1._update_reward = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_play_record
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._update_play_record = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._data
  L2_2 = L2_2.IsUnlocked
  if not L2_2 then
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_show
    L3_2 = "Ui.Common.ItemDetailDialog"
    L2_2 = L2_2(L3_2)
    L4_2 = L2_2
    L3_2 = L2_2.setup_view
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_NetworkManager
  L3_2 = L2_2
  L2_2 = L2_2.FBHCEGHBABI
  L4_2 = A0_2._data
  L4_2 = L4_2.ID
  L2_2(L3_2, L4_2)
end
L0_1._on_reward_item_clicked = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_btn_play_record_clicked = L2_1
return L0_1
