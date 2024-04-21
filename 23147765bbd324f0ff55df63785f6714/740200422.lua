local L0_1, L1_1, L2_1, L3_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueDiceBossPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "RogueBossWeakerHint"
L2_1 = "RogueNousBossWeakerHint"
function L3_1(A0_2)
  local L1_2
  A0_2._cell_data_item = nil
  A0_2._cell_extra_select_data = nil
  A0_2._clicked_index = nil
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2._confirm_btn
  L4_2 = A0_2._on_confirm_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_eff
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = {}
  L2_2 = A0_2._binder
  L2_2 = L2_2._boss_choose_1
  L3_2 = A0_2._binder
  L3_2 = L3_2._boss_choose_2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2._choose_table = L1_2
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._cell_data_item = A1_2
  L2_2 = A0_2._cell_data_item
  L3_2 = L2_2
  L2_2 = L2_2.GetExtraBossSelectData
  L2_2 = L2_2(L3_2)
  A0_2._cell_extra_select_data = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._init_default_clicked_index
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_view
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_next_frame_callback
  L3_2 = A0_2._init_navigation
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._cell_extra_select_data
  if L1_2 ~= nil then
    L1_2 = A0_2._cell_extra_select_data
    L1_2 = L1_2.IsSelected
    if L1_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L1_2 = A0_2._cell_extra_select_data
  L1_2 = L1_2.ToSelectList
  L2_2 = A0_2._cell_extra_select_data
  L2_2 = L2_2.SelectedMonsterID
  L3_2 = 0
  L4_2 = L1_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L1_2[L6_2]
    L7_2 = L7_2.Item1
    if L2_2 == L7_2 then
      L7_2 = L6_2 + 1
      A0_2._clicked_index = L7_2
    end
  end
end
L0_1._init_default_clicked_index = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._cell_extra_select_data
  if L2_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L2_2 = A0_2._cell_extra_select_data
  L2_2 = L2_2.ToSelectList
  if L2_2 ~= nil then
    L3_2 = L2_2.Count
    if A1_2 < L3_2 then
      L3_2 = L2_2[A1_2]
      return L3_2
    end
  end
  L3_2 = nil
  return L3_2
end
L0_1._get_to_select_boss_data = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = ipairs
  L2_2 = A0_2._choose_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._choose_table
    L6_2 = L6_2[L4_2]
    L8_2 = A0_2
    L7_2 = A0_2._get_to_select_boss_data
    L9_2 = L4_2 - 1
    L7_2 = L7_2(L8_2, L9_2)
    L9_2 = L6_2
    L8_2 = L6_2.safe_set_active
    L10_2 = L7_2 ~= nil
    L8_2(L9_2, L10_2)
    if L7_2 ~= nil then
      L9_2 = L6_2
      L8_2 = L6_2.setup_view
      L10_2 = L4_2
      L11_2 = A0_2._cell_data_item
      L12_2 = L7_2
      L14_2 = A0_2
      L13_2 = A0_2._get_boss_level
      L15_2 = A0_2._cell_data_item
      L13_2, L14_2, L15_2 = L13_2(L14_2, L15_2)
      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
      L9_2 = L6_2
      L8_2 = L6_2.set_item_click_callback
      L10_2 = A0_2._on_choose_item_click
      L11_2 = A0_2
      L8_2(L9_2, L10_2, L11_2)
      L9_2 = L6_2
      L8_2 = L6_2.set_selected
      L10_2 = A0_2._clicked_index
      L10_2 = L10_2 == L4_2
      L8_2(L9_2, L10_2)
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_confirm_btn
  L1_2(L2_2)
end
L0_1._refresh_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = false
  L2_2 = A0_2._clicked_index
  if L2_2 ~= nil then
    L2_2 = A0_2._cell_data_item
    if L2_2 ~= nil then
      L3_2 = A0_2
      L2_2 = A0_2._get_to_select_boss_data
      L4_2 = A0_2._clicked_index
      L4_2 = L4_2 - 1
      L2_2 = L2_2(L3_2, L4_2)
      L1_2 = L2_2 ~= nil
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2._confirm_btn
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_confirm_btn
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_RogueDLC_BossBp_Button_Selected"
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_confirm_btn
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_RogueDLC_BossBp_Button_UnSelect"
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_confirm_btn = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.RogueStatic
  L2_2 = L2_2.GetMonsterLevelByChessRogueCell
  L3_2 = A1_2
  return L2_2(L3_2)
end
L0_1._get_boss_level = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 ~= nil and A1_2 ~= "" then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_path_eff
    if L2_2 ~= nil then
      goto lbl_24
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_eff
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIAnimationUtils
  L2_2 = L2_2.PlayFromBegin
  L3_2 = A0_2._binder
  L3_2 = L3_2.animation
  L4_2 = L1_1
  L2_2(L3_2, L4_2)
  goto lbl_43
  ::lbl_24::
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_path_eff
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_path_eff
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIAnimationUtils
  L2_2 = L2_2.PlayFromBegin
  L3_2 = A0_2._binder
  L3_2 = L3_2.animation
  L4_2 = L2_1
  L2_2(L3_2, L4_2)
  ::lbl_43::
end
L0_1._play_boss_decay_animation = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = A0_2._cell_extra_select_data
  if L3_2 ~= nil then
    L3_2 = A0_2._cell_extra_select_data
    L3_2 = L3_2.IsSelected
    if L3_2 then
      return
    end
  end
  L3_2 = A0_2._clicked_index
  if L3_2 ~= A1_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.RogueDLCBossDecayExcelTable
    L3_2 = L3_2.GetData
    L4_2 = A2_2
    L3_2 = L3_2(L4_2)
    L4_2 = nil
    if L3_2 ~= nil then
      L4_2 = L3_2.BossEffectIcon
    end
    L6_2 = A0_2
    L5_2 = A0_2._play_boss_decay_animation
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  end
  A0_2._clicked_index = A1_2
  L3_2 = ipairs
  L4_2 = A0_2._choose_table
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = A0_2._choose_table
    L8_2 = L8_2[L6_2]
    L10_2 = L8_2
    L9_2 = L8_2.set_selected
    L11_2 = A0_2._clicked_index
    L11_2 = L11_2 == L6_2
    L9_2(L10_2, L11_2)
    L9_2 = A0_2._clicked_index
    if L9_2 == L6_2 then
      L10_2 = A0_2
      L9_2 = A0_2._refresh_short_cut_hint_panel
      L12_2 = L8_2
      L11_2 = L8_2.get_decay_desc_scroll_rect
      L11_2 = L11_2(L12_2)
      L13_2 = L8_2
      L12_2 = L8_2.is_extra_effect_available
      L12_2, L13_2 = L12_2(L13_2)
      L9_2(L10_2, L11_2, L12_2, L13_2)
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2._setup_confirm_btn
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.save_navigation_target
  L5_2 = A0_2._choose_table
  L6_2 = A0_2._clicked_index
  L5_2 = L5_2[L6_2]
  L6_2 = L5_2
  L5_2 = L5_2.get_root_btn
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2.gameObject
  L3_2(L4_2, L5_2)
end
L0_1._on_choose_item_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._owner
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._clicked_index
  if L1_2 ~= nil then
    L1_2 = A0_2._cell_data_item
    if L1_2 ~= nil then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L1_2 = A0_2._cell_extra_select_data
  if L1_2 ~= nil then
    L1_2 = A0_2._cell_extra_select_data
    L1_2 = L1_2.IsSelected
    if L1_2 == true then
      L2_2 = A0_2
      L1_2 = A0_2._enter_boss_cell
      L3_2 = A0_2._cell_data_item
      L3_2 = L3_2.CellID
      L4_2 = A0_2._cell_extra_select_data
      L4_2 = L4_2.SelectedMonsterID
      L1_2(L2_2, L3_2, L4_2)
      return
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._get_to_select_boss_data
  L3_2 = A0_2._clicked_index
  L3_2 = L3_2 - 1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2._enter_boss_cell
    L4_2 = A0_2._cell_data_item
    L4_2 = L4_2.CellID
    L5_2 = L1_2.Item1
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_confirm_click = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.ChessRogueBoardCellEnterData
  L3_2 = L3_2()
  L3_2.CellID = A1_2
  L3_2.MonsterGroupID = A2_2
  L4_2 = G
  L4_2 = L4_2.NotifyManager
  L4_2 = L4_2.notify
  L5_2 = G
  L5_2 = L5_2.CS
  L5_2 = L5_2.NotifyType
  L5_2 = L5_2.RogueDLC1Dot3EnterCell
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L0_1._enter_boss_cell = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  L2_2 = A0_2._binder
  L2_2 = L2_2._boss_choose_1
  L3_2 = L2_2
  L2_2 = L2_2.get_root_btn
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2._boss_choose_2
  L4_2 = L3_2
  L3_2 = L3_2.get_root_btn
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L3_2 = A0_2
  L2_2 = A0_2.setup_navigation
  L4_2 = L1_2
  L5_2 = NavigationType
  L5_2 = L5_2.Vertical
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2.set_navigation_target
  L5_2 = A0_2
  L4_2 = A0_2.get_first_selected_object
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._on_enter_zoom
  L4_2 = NavigationZoneType
  L4_2 = L4_2.Zone1
  L2_2(L3_2, L4_2)
end
L0_1._init_navigation = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.is_active
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_enter_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2._boss_choose_1
  L2_2 = L1_2
  L1_2 = L1_2.get_root_btn
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A2_2 then
    L4_2 = A0_2
    L3_2 = A0_2.setup_short_cut_hint_panel
    L5_2 = {}
    L6_2 = "ActionGroup_BuffDetail"
    L7_2 = "ActionGroup_Scroll"
    L8_2 = "Maze_ShortCutWheel"
    L5_2[1] = L6_2
    L5_2[2] = L7_2
    L5_2[3] = L8_2
    L6_2 = A1_2
    L3_2(L4_2, L5_2, L6_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2.setup_short_cut_hint_panel
    L5_2 = {}
    L6_2 = "ActionGroup_Scroll"
    L7_2 = "Maze_ShortCutWheel"
    L5_2[1] = L6_2
    L5_2[2] = L7_2
    L6_2 = A1_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1._refresh_short_cut_hint_panel = L3_1
return L0_1
