local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.Handbook.Components.RogueHandbookAeonDocPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueHandbookAeonDocPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.RogueAeonStoryConfigExcelTable
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.show_btn
  L4_2 = A0_2._on_show_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.root_btn
  L4_2 = A0_2._on_root_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.detail_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_btn
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._is_selected
    if L0_3 == false then
      L0_3 = A0_2._binder
      L0_3 = L0_3.root_btn
      L0_3 = L0_3.interactable
      if L0_3 then
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3._on_root_btn_clicked
        L0_3(L1_3)
      end
    end
  end
  L1_2.onSelectTrigger = L2_2
  A0_2._is_selected = false
  A0_2._is_expand = false
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  A0_2._id = A1_2
  A0_2._doc_id = A3_2
  L5_2 = L1_1.GetData
  L6_2 = A1_2
  L7_2 = A3_2
  L5_2 = L5_2(L6_2, L7_2)
  A0_2._row = L5_2
  A0_2._index = A4_2
  A0_2._is_locked = A2_2
  L6_2 = A0_2
  L5_2 = A0_2._set_locked_status
  L7_2 = A2_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.show_btn
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = not A2_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.brief_desc
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = not A2_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.detail_desc
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = A0_2._is_expand
  if L7_2 then
    L7_2 = not A2_2
  end
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.title
  L6_2 = L5_2
  L5_2 = L5_2.SetCustomizedText
  L7_2 = G
  L7_2 = L7_2.TextmapStatic
  L7_2 = L7_2.GetText
  L8_2 = "UIText_Rogue_HandBook_Aeon_Story_Tag"
  L7_2 = L7_2(L8_2)
  L8_2 = A0_2._index
  L8_2 = L8_2 + 1
  L7_2 = L7_2 .. L8_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.brief_desc
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = A0_2._row
  L7_2 = L7_2.AeonStory_Name
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.detail_desc
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = A0_2._row
  L7_2 = L7_2.AeonStory
  L5_2(L6_2, L7_2)
  L5_2 = G
  L5_2 = L5_2.RedDotModule
  L5_2 = L5_2.Instance
  L6_2 = L5_2
  L5_2 = L5_2.bind_reddot
  L7_2 = "RogueHandbookAeonDoc"
  L8_2 = tostring
  L9_2 = A0_2._row
  L9_2 = L9_2.RogueAeonID
  L8_2 = L8_2(L9_2)
  L9_2 = "#"
  L10_2 = tostring
  L11_2 = A0_2._row
  L11_2 = L11_2.AeonStoryID
  L10_2 = L10_2(L11_2)
  L8_2 = L8_2 .. L9_2 .. L10_2
  L9_2 = A0_2
  L10_2 = A0_2._binder
  L10_2 = L10_2.reddot
  L10_2 = L10_2.transform
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root_btn
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = false
  L3_2 = A0_2._is_selected
  if L3_2 == true then
    L2_2 = A1_2 == true
  else
    L2_2 = A1_2
    A0_2._is_expand = A1_2
  end
  L4_2 = A0_2
  L3_2 = A0_2._refesh_flod_view
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  A0_2._is_selected = A1_2
end
L0_1.set_selected = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.root_btn
    L1_2 = L1_2.interactable
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.root_btn
      return L1_2
    end
  end
  L1_2 = nil
  return L1_2
end
L0_1.get_navi_btn = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.detail_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2 or L4_2
  if A1_2 then
    L4_2 = A0_2._is_locked
    L4_2 = not L4_2
  end
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.up_icon
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.down_icon
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.LayoutRebuilder
  L2_2 = L2_2.ForceRebuildLayoutImmediate
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L3_2 = L3_2.transform
  L2_2(L3_2)
end
L0_1._refesh_flod_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_expand
  L1_2 = not L1_2
  A0_2._is_expand = L1_2
  L1_2 = A0_2._cbk
  if L1_2 then
    L1_2 = A0_2._cbk_owner
    if L1_2 then
      L1_2 = A0_2._cbk
      L2_2 = A0_2._cbk_owner
      L3_2 = A0_2._doc_id
      L4_2 = A0_2._index
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L0_1._on_show_btn_clicked = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.lock_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.show_btn
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.root_btn
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  if not A1_2 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RogueUnlockConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._row
  L3_2 = L3_2.UnlockID
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.unlock_condition
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.RogueUnlockDetail
  L3_2(L4_2, L5_2)
end
L0_1._set_locked_status = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._cbk_owner = A1_2
  A0_2._cbk = A2_2
end
L0_1.register_click_cbk = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 == false then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._on_show_btn_clicked
  L1_2(L2_2)
end
L0_1._on_root_btn_clicked = L2_1
return L0_1
