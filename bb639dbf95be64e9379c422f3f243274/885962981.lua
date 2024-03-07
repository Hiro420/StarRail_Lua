local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Utilities.AvatarUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Challenge.Entrance.LineupSlotPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Challenge.Entrance.LineupSlotPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LineupBarPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AvatarModule
L2_1 = 4
function L3_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._avatar_data_list = L1_2
  L1_2 = {}
  A0_2._slot_panels = L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = 1
  L2_2 = L2_1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.instantiate_object
    L7_2 = A0_2._binder
    L7_2 = L7_2.node_slot
    L7_2 = L7_2.Prefab
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_slot
    L8_2 = L8_2.transform
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.LineupSlotPanel
    L9_2 = G
    L9_2 = L9_2.LineupSlotPanelBinder
    L10_2 = L4_2
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    L8_2 = L6_2
    L7_2 = L6_2.bind
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.set_selected
    L9_2 = false
    L7_2(L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.register_click_handler
    L9_2 = A0_2
    L10_2 = A0_2._on_slot_click
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._slot_panels
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.button
  L4_2 = A0_2._on_btn_edit
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._avatar_data_list = nil
  A0_2._team_data = nil
  A0_2._slot_click_listener = nil
  A0_2._slot_click_handler = nil
  A0_2._edit_click_listener = nil
  A0_2._edit_click_handler = nil
end
L0_1._on_dispose = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._slot_click_listener = A1_2
  A0_2._slot_click_handler = A2_2
end
L0_1.bind_slot_click = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._edit_click_listener = A1_2
  A0_2._edit_click_handler = A2_2
end
L0_1.bind_edit_click = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  A0_2._team_data = A1_2
  if A2_2 ~= nil then
    L3_2 = {}
    A0_2._avatar_data_list = L3_2
    L3_2 = pairs
    L4_2 = A2_2
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = L1_1
      L9_2 = L8_2
      L8_2 = L8_2.GetAvatar
      L10_2 = L7_2
      L8_2 = L8_2(L9_2, L10_2)
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = A0_2._avatar_data_list
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
    end
  else
    L3_2 = G
    L3_2 = L3_2.AvatarUtils
    L3_2 = L3_2.get_avatars_in_team
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    A0_2._avatar_data_list = L3_2
  end
  L4_2 = A0_2
  L3_2 = A0_2._setup_avatars
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.set_bar_selected
  L5_2 = false
  L3_2(L4_2, L5_2)
end
L0_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._avatar_data_list
  if L1_2 ~= nil then
    L1_2 = pairs
    L2_2 = A0_2._avatar_data_list
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      if L5_2 ~= nil then
        L6_2 = false
        return L6_2
      end
    end
  end
  L1_2 = true
  return L1_2
end
L0_1.is_empty = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._team_data
  return L1_2
end
L0_1.get_team = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._avatar_data_list
  return L1_2
end
L0_1.get_avatars = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2 or nil
  if not A1_2 then
    L2_2 = {}
  end
  A0_2._avatar_data_list = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_avatars
  L2_2(L3_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_avatars
  L1_2(L2_2)
end
L0_1.refresh_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._avatar_data_list
  if L2_2 then
    L2_2 = A0_2._avatar_data_list
    L2_2[A1_2] = nil
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_avatars
  L2_2(L3_2)
end
L0_1.remove_avatar_by_index = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 1
  L2_2 = L2_1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2._setup_slot
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  end
end
L0_1._setup_avatars = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._edit_click_handler
  if L1_2 then
    L1_2 = A0_2._edit_click_handler
    L2_2 = A0_2._edit_click_listener
    L1_2(L2_2)
  end
end
L0_1._on_btn_edit = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._slot_click_handler
  if L3_2 then
    L3_2 = A0_2._slot_click_handler
    L4_2 = A0_2._slot_click_listener
    L5_2 = A1_2
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1._on_slot_click = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._avatar_data_list
  L2_2 = L2_2[A1_2]
  L4_2 = A0_2
  L3_2 = A0_2._setup_avatar
  L5_2 = A1_2
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._setup_slot = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.button
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_bar_selected = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._slot_panels
  L3_2 = L3_2[A1_2]
  L4_2 = L3_2
  L3_2 = L3_2.set_selected
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L0_1._set_selected = L3_1
function L3_1(A0_2, A1_2, A2_2)
end
L0_1._set_empty = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._slot_panels
  L3_2 = L3_2[A1_2]
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L0_1._setup_avatar = L3_1
return L0_1
