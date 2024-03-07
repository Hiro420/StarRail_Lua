local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MissionTaskChapterPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_click_btn
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_click_btn
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2
  if A2_2 == nil then
    return
  end
  L8_2 = {}
  A0_2._chapter_datas = L8_2
  A0_2._data = A2_2
  A0_2.index = A1_2
  A0_2.panel_type = A3_2
  A0_2._is_select = nil
  L9_2 = A0_2
  L8_2 = A0_2.setup_selected
  L10_2 = false
  L8_2(L9_2, L10_2)
  A0_2._event_listener = A6_2
  A0_2._click_call_back = A7_2
  L9_2 = A0_2
  L8_2 = A0_2._setup_chapter
  L8_2(L9_2)
  L9_2 = A0_2
  L8_2 = A0_2._setup_title
  L8_2(L9_2)
  L8_2 = CS
  L8_2 = L8_2.UnityEngine
  L8_2 = L8_2.UI
  L8_2 = L8_2.LayoutRebuilder
  L8_2 = L8_2.ForceRebuildLayoutImmediate
  L9_2 = A0_2._binder
  L9_2 = L9_2.root
  L8_2(L9_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.show_chapter_selected = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._select_title_callback = A1_2
  A0_2._select_title_self = A2_2
end
L0_1.register_select_title_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.show_title = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator_root
    L3_2 = L2_2
    L2_2 = L2_2.SetTrigger
    L4_2 = "SubTaskSelected"
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator_root
    L3_2 = L2_2
    L2_2 = L2_2.ResetTrigger
    L4_2 = "SubTaskUnselected"
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator_root
    L3_2 = L2_2
    L2_2 = L2_2.SetTrigger
    L4_2 = "SubTaskUnselected"
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator_root
    L3_2 = L2_2
    L2_2 = L2_2.ResetTrigger
    L4_2 = "SubTaskSelected"
    L2_2(L3_2, L4_2)
  end
end
L0_1.show_sub_task_selected = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._is_select
  if L2_2 ~= A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_root
    L3_2 = L2_2
    L2_2 = L2_2.SetChecked
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
  A0_2._is_select = A1_2
end
L0_1.setup_selected = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._click_call_back
  if L1_2 then
    L1_2 = A0_2._click_call_back
    L2_2 = A0_2._event_listener
    L3_2 = A0_2._data
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._on_click_btn = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._data
  L3_2 = L3_2.MissionTypeName
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.UIColorUtils
  L1_2 = L1_2.GetColor
  L2_2 = A0_2._data
  L2_2 = L2_2.MissionTypeColor
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_title_color
  L2_2 = L2_2.color
  L2_2 = L2_2.a
  L1_2.a = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_title_color
  L2_2.color = L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_chapter_color_line
  L2_2 = L2_2.color
  L2_2 = L2_2.a
  L1_2.a = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_chapter_color_line
  L2_2.color = L1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MainMissionTypeConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._data
  L3_2 = L3_2.Row
  L3_2 = L3_2.Type
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_title
  L6_2 = L2_2.TypeIconMini
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._setup_title = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.MissionChapterConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._data
  L2_2 = L2_2.Row
  L2_2 = L2_2.ChapterID
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_chapter_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.ChapterName
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.UIColorUtils
  L2_2 = L2_2.GetColor
  L3_2 = A0_2._data
  L3_2 = L3_2.MissionTypeColor
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_chapter_color_line
  L3_2 = L3_2.color
  L3_2 = L3_2.a
  L2_2.a = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_chapter_color_line
  L3_2.color = L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_bg
  L3_2 = L3_2.color
  L3_2 = L3_2.a
  L2_2.a = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_bg
  L3_2.color = L2_2
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.chapter_icon
  L6_2 = L1_2.ChapterFigureIconPath
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._setup_chapter = L1_1
function L1_1(A0_2, A1_2)
  A0_2._on_click_chapter_callback = A1_2
end
L0_1.register_click_chapter_callback = L1_1
return L0_1
