local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityPunkLord.PunkLordUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.FriendUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PunkLordHonorInfoRowPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_player_photo
  L2_2 = L1_2
  L1_2 = L1_2.set_interactable
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._honor_data = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._honor_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_title
  L4_2 = A1_2.Name
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_player_info
  L4_2 = A1_2.UID
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_title = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._show_loading_player_data
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.PunkLordUtils
  L2_2 = L2_2.get_user_nickname_and_head_icon_id_promise
  L3_2 = A1_2
  L4_2 = A0_2._async_setup_name_and_player_photo
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_player_info = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_normal
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_loading
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._show_loading_player_data = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A0_2 ~= nil then
    L3_2 = A0_2._binder
    if L3_2 ~= nil then
      goto lbl_7
    end
  end
  do return end
  ::lbl_7::
  L4_2 = A0_2
  L3_2 = A0_2.setup_player_name
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.setup_player_head_icon
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._show_loading_player_data
  L5_2 = false
  L3_2(L4_2, L5_2)
end
L0_1._async_setup_name_and_player_photo = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_name
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_player_name = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_player_photo
    L3_2 = L2_2
    L2_2 = L2_2.setup_view_by_id
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.setup_player_head_icon = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._honor_data
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.FriendUtils
    L1_2 = L1_2.show_friend_detail_info
    L2_2 = A0_2._honor_data
    L2_2 = L2_2.UID
    L1_2(L2_2)
  end
end
L0_1._on_btn_root = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = A1_2.Name
    L3_2 = G
    L3_2 = L3_2.FriendUtils
    L3_2 = L3_2.OptionNameTable
    L4_2 = G
    L4_2 = L4_2.FriendUtils
    L4_2 = L4_2.OptionList
    L4_2 = L4_2.DetailInfo
    L3_2 = L3_2[L4_2]
    if L2_2 == L3_2 then
      L3_2 = A0_2
      L2_2 = A0_2._report_enter_player_detail
      L2_2(L3_2)
    end
  end
end
L0_1._on_select_option = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2._owner
  L2_2 = L2_2.__name
  L3_2 = A0_2.__name
  L4_2 = "EnterPlayerInfo"
  L5_2 = A0_2._owner
  L5_2 = L5_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._report_enter_player_detail = L1_1
return L0_1
