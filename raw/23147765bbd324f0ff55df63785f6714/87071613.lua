local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Utilities.BuffUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ChallengeStory.Common.ChallengeStoryBuffIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChallengeStoryBuffIconPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1.equip = "FantasticStoryBuffIcon_ON"
L1_1.unequip = "FantasticStoryBuffIcon_OFF"
L1_1.unlock = "FantasticStoryBuffIcon_unlock"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_btn_root
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2.buff_id
  A0_2.buff_id = L2_2
  L2_2 = G
  L2_2 = L2_2.BuffUtils
  L2_2 = L2_2.GetMazeBuffData
  L3_2 = A0_2.buff_id
  L4_2 = 1
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._maze_buff_row = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.register_btn_root_callback
  L4_2 = A1_2.click_callback
  L5_2 = A1_2.callback_listener
  L6_2 = A0_2
  L7_2 = A0_2.buff_id
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2
  L2_2 = A0_2.refresh
  L2_2(L3_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_empty
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_buff_icon
  L4_2 = A0_2._maze_buff_row
  L4_2 = L4_2.BuffIcon
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.refresh = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_select = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_popup
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_buff_name
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = A0_2._maze_buff_row
    L4_2 = L4_2.BuffName
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_buff_desc
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = A0_2._maze_buff_row
    L4_2 = L4_2.BuffDesc
    L5_2 = G
    L5_2 = L5_2.UITextUtils
    L5_2 = L5_2.GetSkillParams
    L6_2 = A0_2._maze_buff_row
    L6_2 = L6_2.ParamList
    L5_2, L6_2 = L5_2(L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
end
L0_1.set_popup_active = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._on_btn_root_call_back = A1_2
  A0_2._on_btn_root_call_back_self = A2_2
end
L0_1.register_btn_root_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._on_btn_root_call_back
  if L1_2 then
    L1_2 = A0_2._on_btn_root_call_back
    L2_2 = A0_2._on_btn_root_call_back_self
    L3_2 = A0_2
    L4_2 = A0_2.buff_id
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._on_btn_root = L2_1
return L0_1
