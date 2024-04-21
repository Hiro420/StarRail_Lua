local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Map.RegionalMap.RegionalMapItemDetailPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RegionalMapItemDetailPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "CommonRightPanel_FadeOut"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._cur_show_world_id = A1_2
  A0_2._entrance_id = A2_2
  L4_2 = A0_2
  L3_2 = A0_2.safe_set_active
  L5_2 = false
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.safe_set_active
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AreaMapConfigExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_title
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L3_2.Name
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_desc
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L3_2.Desc
  L4_2(L5_2, L6_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.WorldDataConfigExcelTable
  L4_2 = L4_2.GetData
  L5_2 = A0_2._cur_show_world_id
  L4_2 = L4_2(L5_2)
  L6_2 = A0_2
  L5_2 = A0_2._load_sprite_to
  L7_2 = A0_2._binder
  L7_2 = L7_2.image_title
  L8_2 = L4_2.ChapterIconBigPath
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = A0_2
  L5_2 = A0_2._load_sprite_to
  L7_2 = A0_2._binder
  L7_2 = L7_2.image_bg
  L8_2 = L4_2.ChapterIconBigPath
  L5_2(L6_2, L7_2, L8_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._entrance_id
    return L1_2
  end
  L1_2 = 0
  return L1_2
end
L0_1.get_current_show_entrance_id = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.animation_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L1_1
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.safe_set_active
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_animation
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
end
L0_1.play_fade_out = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._transfer_click_callback_func = A1_2
  A0_2._transfer_item_click_callback_obj = A2_2
end
L0_1.reg_transfer_click_call_back = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_transfer
  L4_2 = A0_2._on_btn_transfer_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RPGAnimationEvent
  L1_2 = L1_2.Get
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L1_2 = L1_2(L2_2)
  A0_2.animation_event = L1_2
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._transfer_click_callback_func
  if L1_2 then
    L1_2 = A0_2._transfer_click_callback_func
    L2_2 = A0_2._transfer_item_click_callback_obj
    L3_2 = A0_2._entrance_id
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_transfer_click = L2_1
return L0_1
