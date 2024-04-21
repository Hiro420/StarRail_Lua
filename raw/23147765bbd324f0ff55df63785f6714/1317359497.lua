local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityGuessTheSilhouette.ActivityGuessTheSilhouetteMainSilhouetteItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityGuessTheSilhouette.ActivityGuessTheSilhouetteMainSilhouetteItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityGuessTheSilhouetteMainLeftSilhouettePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ActivityGuessTheSilhouetteModule
L2_1 = 2
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  A0_2._silhouette_panel_table = L1_2
  L1_2 = {}
  A0_2._cur_day_silhouette_table = L1_2
  L1_2 = 1
  L2_2 = L2_1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.ActivityGuessTheSilhouetteMainSilhouetteItem
    L8_2 = G
    L8_2 = L8_2.ActivityGuessTheSilhouetteMainSilhouetteItemBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.register_callback
    L8_2 = A0_2._callback
    L9_2 = A0_2._callback_self
    L6_2(L7_2, L8_2, L9_2)
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = A0_2._binder
    L9_2 = "node_silhouette_"
    L10_2 = L4_2
    L9_2 = L9_2 .. L10_2
    L8_2 = L8_2[L9_2]
    L6_2(L7_2, L8_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._silhouette_panel_table
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._set_gamepad_nav
  L1_2(L2_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_callback = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._btn_list
  L1_2 = L1_2[1]
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = 1
  L2_2 = A0_2._silhouette_panel_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._silhouette_panel_table
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.update_select_state
    L5_2(L6_2)
  end
end
L0_1.update_select_state = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  A0_2._current_day = A1_2
  A0_2._cur_day_silhouette_table = A2_2
  A0_2._status = A3_2
  L5_2 = A0_2
  L4_2 = A0_2._setup_silhouette_info
  L4_2(L5_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._status
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.ActivityGuessTheSilhouetteDataStatus
  L2_2 = L2_2.NotStart
  L1_2 = L1_2 == L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_have_photo
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_no_photo
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = {}
    L5_2 = "ItemDetail"
    L6_2 = "ActionGroup_Return"
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_title_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_Number_0"
  L5_2 = A0_2._current_day
  L4_2 = L4_2 .. L5_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._cur_day_silhouette_table
  L4_2 = L4_2[1]
  L4_2 = L4_2.Row
  L4_2 = L4_2.Daily
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._cur_day_silhouette_table
  L2_2 = #L2_2
  L3_2 = L2_1
  if L2_2 > L3_2 then
    L2_2 = L2_1
    if L2_2 then
      goto lbl_55
    end
  end
  L2_2 = A0_2._cur_day_silhouette_table
  L2_2 = #L2_2
  ::lbl_55::
  L3_2 = 1
  L4_2 = L2_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._silhouette_panel_table
    L7_2 = L7_2[L6_2]
    L8_2 = L7_2
    L7_2 = L7_2.setup_view
    L9_2 = A0_2._cur_day_silhouette_table
    L9_2 = L9_2[L6_2]
    L7_2(L8_2, L9_2)
  end
end
L0_1._setup_silhouette_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  A0_2._btn_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._get_btn_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_navigation
  L3_2 = A0_2._btn_list
  L4_2 = NavigationType
  L4_2 = L4_2.Horizontal
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._set_gamepad_nav = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 1
  L2_2 = A0_2._silhouette_panel_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = A0_2._btn_list
    L7_2 = A0_2._silhouette_panel_table
    L7_2 = L7_2[L4_2]
    L8_2 = L7_2
    L7_2 = L7_2.get_btn
    L7_2, L8_2 = L7_2(L8_2)
    L5_2(L6_2, L7_2, L8_2)
  end
end
L0_1._get_btn_list = L3_1
return L0_1
