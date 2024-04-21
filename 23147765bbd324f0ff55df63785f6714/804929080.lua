local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Tutorial.GuideDetailDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GuideDetailDialog"
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
  L3_2 = L3_2.GuideDetailDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  A0_2._is_resp_esc = false
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = G
  L4_2 = L4_2.TutorialModule
  L4_2 = L4_2.Instance
  L5_2 = L4_2
  L4_2 = L4_2.get_tutorial_guide_data
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  A0_2._data = L4_2
  L4_2 = A0_2._data
  L5_2 = L4_2
  L4_2 = L4_2.get_row
  L4_2 = L4_2(L5_2)
  A0_2._row = L4_2
  A0_2._index = 0
  A0_2._is_to_end = false
  A0_2._close_text_id = A2_2
  A0_2._enable_close_always = A3_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_next
  L4_2 = A0_2._on_btn_next_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_prev
  L4_2 = A0_2._on_btn_prev_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._row
  L3_2 = L3_2.MessageText
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._close_text_id
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_close_btn
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._close_text_id
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "Ui.Common.PageNumPanel"
  L6_2 = "Ui.Common.PageNumPanelBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2._page_num_list = L1_2
  L1_2 = A0_2._page_num_list
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_page
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.SetupBattleFullScreenBlock
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.TutorialModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.finish_guide
  L3_2 = A0_2._data
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_guide
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._pause_world
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_next
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._row
  L3_2 = L3_2.TutorialGuideIDList
  L3_2 = L3_2.Length
  L3_2 = 1 < L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_next_in_control_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._row
  L3_2 = L3_2.TutorialGuideIDList
  L3_2 = L3_2.Length
  L3_2 = 1 < L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_prev
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._row
  L3_2 = L3_2.TutorialGuideIDList
  L3_2 = L3_2.Length
  L3_2 = 1 < L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_prev_in_control_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._row
  L3_2 = L3_2.TutorialGuideIDList
  L3_2 = L3_2.Length
  L3_2 = 1 < L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_next
  L2_2 = A0_2._index
  L3_2 = A0_2._row
  L3_2 = L3_2.TutorialGuideIDList
  L3_2 = L3_2.Length
  L3_2 = L3_2 - 1
  L2_2 = L2_2 < L3_2
  L1_2.interactable = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_prev
  L2_2 = A0_2._index
  L2_2 = 0 < L2_2
  L1_2.interactable = L2_2
  L1_2 = A0_2._index
  L2_2 = A0_2._row
  L2_2 = L2_2.TutorialGuideIDList
  L2_2 = L2_2.Length
  L2_2 = L2_2 - 1
  if L1_2 == L2_2 then
    A0_2._is_to_end = true
  end
  L1_2 = A0_2._enable_close_always
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_close
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_close
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = A0_2._is_to_end
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._index
  L2_2 = A0_2._row
  L2_2 = L2_2.TutorialGuideIDList
  L2_2 = L2_2.Length
  if L1_2 < L2_2 then
    L1_2 = A0_2._row
    L1_2 = L1_2.TutorialGuideIDList
    L2_2 = A0_2._index
    L1_2 = L1_2[L2_2]
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_ModuleManager
    L2_2 = L2_2.TutorialSupportModule
    L3_2 = L2_2
    L2_2 = L2_2.GetGuideDataRow
    L4_2 = L1_2
    L2_2 = L2_2(L3_2, L4_2)
    L4_2 = A0_2
    L3_2 = A0_2.async_load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_pic
    L6_2 = L2_2.ImagePath
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_desc
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L2_2.DescText
    L3_2(L4_2, L5_2)
    L3_2 = {}
    L4_2 = 0
    L5_2 = A0_2._row
    L5_2 = L5_2.TutorialGuideIDList
    L5_2 = L5_2.Length
    L5_2 = L5_2 - 1
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L3_2
      L10_2 = A0_2._index
      L10_2 = L7_2 == L10_2
      L8_2(L9_2, L10_2)
    end
    L4_2 = A0_2._page_num_list
    L5_2 = L4_2
    L4_2 = L4_2.setup_view
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_content
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 8
  L4_2 = A0_2._binder
  L4_2 = L4_2.scroll_rect
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._refresh_guide = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._index
  L2_2 = A0_2._row
  L2_2 = L2_2.TutorialGuideIDList
  L2_2 = L2_2.Length
  L2_2 = L2_2 - 1
  if L1_2 < L2_2 then
    L1_2 = A0_2._index
    L1_2 = L1_2 + 1
    A0_2._index = L1_2
    L2_2 = A0_2
    L1_2 = A0_2._refresh_guide
    L1_2(L2_2)
  end
end
L0_1._on_btn_next_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._index
  if 0 < L1_2 then
    L1_2 = A0_2._index
    L1_2 = L1_2 - 1
    A0_2._index = L1_2
    L2_2 = A0_2
    L1_2 = A0_2._refresh_guide
    L1_2(L2_2)
  end
end
L0_1._on_btn_prev_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.ShowTutorialGuideNode
  L1_2(L2_2)
end
L0_1._on_btn_close_click = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = nil
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_GamePhaseManager
  L4_2 = L3_2
  L3_2 = L3_2.GetCurrentPhase
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.GetMainWorld
  if L4_2 ~= nil then
    L5_2 = L3_2
    L4_2 = L3_2.GetMainWorld
    L4_2 = L4_2(L5_2)
    L2_2 = L4_2
  else
    L4_2 = L3_2.BattleInstanceRef
    if L4_2 ~= nil then
      L4_2 = L3_2.BattleInstanceRef
      L2_2 = L4_2.GameWorldRef
    end
  end
  if L2_2 ~= nil then
    L4_2 = L2_2.TimeScaleStack
    L5_2 = L4_2
    L4_2 = L4_2.PublicPause
    L6_2 = A1_2
    L4_2(L5_2, L6_2)
  end
end
L0_1._pause_world = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._pause_world
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.SetupBattleFullScreenBlock
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.TutorialModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.show_and_clear_reward
  L1_2(L2_2)
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._pause_world
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_view_active_change = L1_1
return L0_1
