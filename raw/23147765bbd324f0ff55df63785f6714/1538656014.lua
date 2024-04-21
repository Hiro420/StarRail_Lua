local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Entrance.Components.ChessRogueSelectDicePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Entrance.Components.ChessRogueEntranceAeonPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueSelectDicePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1[1] = 1
L1_1[2] = 2
L1_1[3] = 3
L1_1[4] = 4
L1_1[5] = 5
L1_1[6] = 6
L1_1[7] = 7
L1_1[8] = 8
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.ButtonMutex
  L1_2 = L1_2(L2_2)
  A0_2._button_mutex = L1_2
  L1_2 = A0_2._button_mutex
  L2_2 = L1_2
  L1_2 = L1_2.ReleaseMutex
  L1_2(L2_2)
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_panels
  L1_2(L2_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.is_in_guide
  L1_2 = L1_2(L2_2)
  A0_2._is_in_guide = L1_2
  L1_2 = A0_2._is_in_guide
  if L1_2 then
    A0_2._default_index = 0
    L1_2 = 0
    L2_2 = A0_2._data_list
    L2_2 = L2_2.Count
    L2_2 = L2_2 - 1
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = A0_2._data_list
      L5_2 = L5_2[L4_2]
      L6_2 = L5_2
      L5_2 = L5_2.IsValidInGuide
      L5_2 = L5_2(L6_2)
      if L5_2 then
        A0_2._default_index = L4_2
      end
    end
  else
    A0_2._default_index = 0
  end
end
L0_1._get_default_index = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._data_list = A1_2
  L2_2 = A0_2._data_list
  L2_2 = L2_2.Count
  if L2_2 == 0 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._get_default_index
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._init_navigation
  L2_2(L3_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._aeon_panels = L1_2
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.aeon_roots
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.ChessRogueEntranceAeonPanel
    L9_2 = G
    L9_2 = L9_2.ChessRogueEntranceAeonPanelBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.bind
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._aeon_panels
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._init_panels = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = ipairs
  L2_2 = A0_2._aeon_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2._get_related_data
    L8_2 = L4_2
    L6_2 = L6_2(L7_2, L8_2)
    L8_2 = L5_2
    L7_2 = L5_2.setup_view
    L9_2 = L6_2
    L10_2 = A0_2._on_chess_rogue_aeon_clicked
    L11_2 = A0_2
    L7_2(L8_2, L9_2, L10_2, L11_2)
  end
end
L0_1._refresh_entrance_panels = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = L1_1[A1_2]
  L3_2 = 0
  L4_2 = A0_2._data_list
  L4_2 = L4_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._data_list
    L7_2 = L7_2[L6_2]
    L7_2 = L7_2.AeonID
    if L7_2 == L2_2 then
      L7_2 = A0_2._is_in_guide
      if L7_2 then
        L7_2 = A0_2._data_list
        L7_2 = L7_2[L6_2]
        L8_2 = L7_2
        L7_2 = L7_2.IsValidInGuide
        L7_2 = L7_2(L8_2)
        if L7_2 then
          A0_2._default_panel_index = A1_2
        end
      end
      L7_2 = A0_2._data_list
      L7_2 = L7_2[L6_2]
      return L7_2
    end
  end
  L3_2 = nil
  return L3_2
end
L0_1._get_related_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_entrance_panels
  L1_2(L2_2)
  L1_2 = A0_2._default_panel_index
  if not L1_2 then
    L1_2 = 1
  end
  A0_2._default_panel_index = L1_2
  L1_2 = A0_2._aeon_panels
  L2_2 = A0_2._default_panel_index
  L1_2 = L1_2[L2_2]
  A0_2._cur_panel = L1_2
end
L0_1._refresh = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A1_2.CanSelectedOnEntrance
  if not L3_2 then
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.UIPileToastMessageTextID
    L5_2 = A1_2.UnlockConditionDesc
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = A0_2._button_mutex
  L4_2 = L3_2
  L3_2 = L3_2.Check
  function L5_2()
    local L0_3, L1_3, L2_3
    L0_3 = A2_2
    A0_2._cur_panel = L0_3
    L0_3 = A0_2._owner
    L1_3 = L0_3
    L0_3 = L0_3.show_detail
    L2_3 = A1_2
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._owner
    L1_3 = L0_3
    L0_3 = L0_3.play_anim_clip
    L2_3 = "DiceEnterGenrePage_Switch_GenreDetail"
    L0_3(L1_3, L2_3)
  end
  L6_2 = 0.3
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._on_chess_rogue_aeon_clicked = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = ipairs
  L2_2 = A0_2._aeon_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.refresh_animator_state
    L6_2(L7_2)
  end
end
L0_1.refresh_all_aeon_panel_animator_state = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._button_mutex
  if L1_2 then
    L1_2 = A0_2._button_mutex
    L2_2 = L1_2
    L1_2 = L1_2.Dispose
    L1_2(L2_2)
    L1_2 = G
    L1_2 = L1_2.delete
    L2_2 = A0_2._button_mutex
    L1_2(L2_2)
    A0_2._button_mutex = nil
  end
end
L0_1.dtor = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A1_2 == nil then
    return
  end
  L2_2 = pairs
  L3_2 = A0_2._aeon_panels
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.get_aeon_id
    L7_2 = L7_2(L8_2)
    if L7_2 ~= nil and A1_2 == L7_2 then
      A0_2._cur_panel = L6_2
      return
    end
  end
end
L0_1.set_selected_aeon = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_in_guide
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_navigation
  L1_2(L2_2)
end
L0_1._init_navigation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cur_panel
  if not L1_2 then
    L1_2 = A0_2._aeon_panels
    L1_2 = L1_2[1]
  end
  L3_2 = L1_2
  L2_2 = L1_2.get_navigation_target
  return L2_2(L3_2)
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._get_btn_table
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.UIUtils
  L1_2 = L1_2.setup_navigation
  L2_2 = A0_2._panel_btn_tb
  L3_2 = NavigationType
  L3_2 = L3_2.Horizontal
  L1_2(L2_2, L3_2)
end
L0_1._setup_navigation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._panel_btn_tb = L1_2
  L1_2 = ipairs
  L2_2 = A0_2._aeon_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.get_btn
    L6_2 = L6_2(L7_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._panel_btn_tb
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._get_btn_table = L2_1
return L0_1
