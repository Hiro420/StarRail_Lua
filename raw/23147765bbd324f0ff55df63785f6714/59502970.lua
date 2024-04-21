local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Utilities.MuseumUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MuseumMarketStaffItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "#121212"
L2_1 = "#E93B29"
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.MuseumModule
function L4_1(A0_2)
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
    L0_3 = A0_2._staff_data
    if L0_3 then
      L0_3 = CS
      L0_3 = L0_3.RPG
      L0_3 = L0_3.Client
      L0_3 = L0_3.Prefs
      L0_3 = L0_3.User
      L0_3 = L0_3.NewMuseumMarketStaff
      L1_3 = L0_3
      L0_3 = L0_3.Remove
      L2_3 = A0_2._staff_data
      L2_3 = L2_3.ID
      L0_3(L1_3, L2_3)
    end
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._staff_data = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.info_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._staff_data
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_price
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2._staff_data
  L4_2 = L4_2.StaffRow
  L4_2 = L4_2.RecruitPrice
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._staff_data
  L2_2 = L2_2.StaffRow
  L2_2 = L2_2.RecruitPrice
  L3_2 = L3_1.MuseumData
  L3_2 = L3_2.CurFunds
  if L2_2 <= L3_2 then
    L2_2 = L1_1
    if L2_2 then
      goto lbl_25
    end
  end
  L2_2 = L2_1
  ::lbl_25::
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_price
  L4_2 = G
  L4_2 = L4_2.UIColorUtils
  L4_2 = L4_2.GetColor
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L3_2.color = L4_2
  L4_2 = A0_2
  L3_2 = A0_2.set_owned
  L5_2 = A1_2.IsOwned
  L3_2(L4_2, L5_2)
  L3_2 = G
  L3_2 = L3_2.MuseumUtils
  L3_2 = L3_2.get_fund_item_data
  L3_2 = L3_2()
  L5_2 = A0_2
  L4_2 = A0_2._async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_cost_item
  L7_2 = L3_2.ItemIconPath
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_ModuleManager
  L4_2 = L4_2.TutorialSupportModule
  L5_2 = L4_2
  L4_2 = L4_2.SetNodeDynamicKey
  L6_2 = A0_2._binder
  L6_2 = L6_2.root
  L6_2 = L6_2.gameObject
  L7_2 = A0_2._staff_data
  L7_2 = L7_2.ID
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = G
  L4_2 = L4_2.RedDotModule
  L4_2 = L4_2.Instance
  L5_2 = L4_2
  L4_2 = L4_2.bind_reddot
  L6_2 = "MuseumNewMarketStaff"
  L7_2 = A0_2._staff_data
  L7_2 = L7_2.ID
  L8_2 = A0_2
  L9_2 = A0_2._binder
  L9_2 = L9_2.node_reddot
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_interactable = L4_1
function L4_1(A0_2)
  local L1_2
  A0_2._staff_data = nil
end
L0_1._on_dispose = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._on_click = A1_2
  A0_2._on_click_listener = A2_2
end
L0_1.set_click_callback = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.sold_out_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_owned = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.info_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_avatar_head_rotation
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_avatar_head_rotation = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._on_click
  if L1_2 ~= nil then
    L1_2 = A0_2._on_click
    L2_2 = A0_2._on_click_listener
    L3_2 = A0_2._staff_data
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_root = L4_1
return L0_1
