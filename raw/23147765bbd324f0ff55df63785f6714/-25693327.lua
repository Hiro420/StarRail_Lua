local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.AvatarEducation.AvatarDetail.PathInfoTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AvatarEducation.AvatarDetail.PathInfoTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AvatarEducation.AvatarDetail.DamageInfoTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AvatarEducation.AvatarDetail.DamageInfoTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AvatarEducation.AvatarDetail.PathsInfoDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PathsInfoDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.PathsInfoDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._current_base_type = A1_2
  A0_2._current_damage_type = A2_2
  A0_2._current_tab_index = A3_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2._on_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_left
  L4_2 = A0_2._select_prev
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_right
  L4_2 = A0_2._select_next
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_paths_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_damage_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._tab_control = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._init_tab_items
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.update_layout
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "ActionGroup_Scroll"
  L5_2 = "ActionGroup_Cancel"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = A0_2._current_tab_index
  L3_2 = L3_2 + 1
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  A0_2._paths_data = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AvatarBaseTypeExcelTable
  L1_2 = L1_2.dataDict
  L2_2 = L1_2
  L1_2 = L1_2.GetEnumerator
  L1_2 = L1_2(L2_2)
  while true do
    L3_2 = L1_2
    L2_2 = L1_2.MoveNext
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      break
    end
    L2_2 = L1_2.Current
    L2_2 = L2_2.Value
    L2_2 = L2_2.ID
    L3_2 = A0_2._current_base_type
    if L2_2 == L3_2 then
      L2_2 = table
      L2_2 = L2_2.insert
      L3_2 = A0_2._paths_data
      L4_2 = 1
      L5_2 = L1_2.Current
      L5_2 = L5_2.Value
      L2_2(L3_2, L4_2, L5_2)
    else
      L2_2 = L1_2.Current
      L2_2 = L2_2.Value
      L2_2 = L2_2.ID
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.AvatarBaseType
      L3_2 = L3_2.Unknown
      if L2_2 ~= L3_2 then
        L2_2 = table
        L2_2 = L2_2.insert
        L3_2 = A0_2._paths_data
        L4_2 = L1_2.Current
        L4_2 = L4_2.Value
        L2_2(L3_2, L4_2)
      end
    end
  end
end
L0_1._init_paths_data = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  A0_2._damage_data = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.DamageTypeExcelTable
  L1_2 = L1_2.dataDict
  L2_2 = L1_2
  L1_2 = L1_2.GetEnumerator
  L1_2 = L1_2(L2_2)
  while true do
    L3_2 = L1_2
    L2_2 = L1_2.MoveNext
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      break
    end
    L2_2 = L1_2.Current
    L2_2 = L2_2.Value
    L2_2 = L2_2.ID
    L3_2 = A0_2._current_damage_type
    if L2_2 == L3_2 then
      L2_2 = table
      L2_2 = L2_2.insert
      L3_2 = A0_2._damage_data
      L4_2 = 1
      L5_2 = L1_2.Current
      L5_2 = L5_2.Value
      L2_2(L3_2, L4_2, L5_2)
    else
      L2_2 = L1_2.Current
      L2_2 = L2_2.Value
      L2_2 = L2_2.ID
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.AttackDamageType
      L3_2 = L3_2.Unknow
      if L2_2 ~= L3_2 then
        L2_2 = table
        L2_2 = L2_2.insert
        L3_2 = A0_2._damage_data
        L4_2 = L1_2.Current
        L4_2 = L4_2.Value
        L2_2(L3_2, L4_2)
      end
    end
  end
end
L0_1._init_damage_data = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_damage_tab_item
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_path_tab_item
  L1_2(L2_2)
end
L0_1._init_tab_items = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.DamageInfoTabItem
  L4_2 = G
  L4_2 = L4_2.DamageInfoTabItemBinder
  L5_2 = A0_2._damage_data
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  L3_2 = L1_2
  L2_2 = L1_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_tab_item_root
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.add_item_created
  L4_2 = L1_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_tab_damage
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._init_damage_tab_item = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.PathInfoTabItem
  L4_2 = G
  L4_2 = L4_2.PathInfoTabItemBinder
  L5_2 = A0_2._paths_data
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  L3_2 = L1_2
  L2_2 = L1_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_tab_item_root
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.add_item_created
  L4_2 = L1_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_tab_paths
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._init_path_tab_item = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.select_prev
  L1_2(L2_2)
end
L0_1._select_prev = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.select_next
  L1_2(L2_2)
end
L0_1._select_next = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_exit = L1_1
return L0_1
