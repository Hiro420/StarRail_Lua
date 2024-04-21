local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Heliobus.HeliobusUtilities.HeliobusSNSUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusSNSQuickPostOptionPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.HeliobusModule
L1_1 = L1_1.HeliobusSNSData
L2_1 = 3
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_opt_1
  L4_2 = A0_2._on_click_opt_1
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_opt_2
  L4_2 = A0_2._on_click_opt_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_opt_3
  L4_2 = A0_2._on_click_opt_3
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_opt_1
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_opt_1
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_opt_2
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_opt_2
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_opt_3
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_opt_3
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._opt_callback = A1_2
  A0_2._opt_callback_self = A2_2
end
L0_1.register_click_opt_callback = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_opt_1
  return L1_2
end
L0_1.get_first_opt_btn = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator_opt1
  L2_2 = L1_2
  L1_2 = L1_2.SetBool
  L3_2 = "IsSelected"
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator_opt2
  L2_2 = L1_2
  L1_2 = L1_2.SetBool
  L3_2 = "IsSelected"
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator_opt3
  L2_2 = L1_2
  L1_2 = L1_2.SetBool
  L3_2 = "IsSelected"
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.clear_selected = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._my_post_row = A1_2
  L2_2 = A0_2._my_post_row
  if L2_2 == nil then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogErrorFormat
    L3_2 = "HeliobusSNSQuickPostOptionPanel setup_view() : \228\184\187\229\138\168\229\143\145\230\142\168\230\142\168\230\150\135\228\184\141\229\173\152\229\156\168"
    L2_2(L3_2)
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_template_info
  L2_2(L3_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._my_post_row
  L1_2 = L1_2.TemplateIDList
  L1_2 = L1_2.Length
  L2_2 = 1
  L3_2 = L2_1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L7_2 = "btn_opt_"
    L8_2 = L5_2
    L7_2 = L7_2 .. L8_2
    L6_2 = L6_2[L7_2]
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = L5_2 <= L1_2
    L6_2(L7_2, L8_2)
    if L5_2 <= L1_2 then
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.GameCore
      L6_2 = L6_2.HeliobusTemplateExcelTable
      L6_2 = L6_2.GetData
      L7_2 = A0_2._my_post_row
      L7_2 = L7_2.TemplateIDList
      L8_2 = L5_2 - 1
      L7_2 = L7_2[L8_2]
      L6_2 = L6_2(L7_2)
      if L6_2 == nil then
        L7_2 = G
        L7_2 = L7_2.SuperDebug
        L7_2 = L7_2.LogErrorFormat
        L8_2 = "HeliobusSNSQuickPostOptionPanel _setup_template_info() : \228\184\141\229\173\152\229\156\168Id\228\184\186("
        L9_2 = A0_2._my_post_row
        L9_2 = L9_2.TemplateIDList
        L10_2 = L5_2 - 1
        L9_2 = L9_2[L10_2]
        L10_2 = ")\231\154\132\230\168\161\230\157\191"
        L8_2 = L8_2 .. L9_2 .. L10_2
        L7_2(L8_2)
        return
      end
      L7_2 = A0_2._binder
      L8_2 = "txt_opt_"
      L9_2 = L5_2
      L8_2 = L8_2 .. L9_2
      L7_2 = L7_2[L8_2]
      L8_2 = L7_2
      L7_2 = L7_2.SafeSetTextID
      L9_2 = G
      L9_2 = L9_2.HeliobusSNSUtils
      L9_2 = L9_2.get_tendency_text_id
      L10_2 = L6_2.TemplateTendency
      L10_2 = #L10_2
      L9_2, L10_2, L11_2 = L9_2(L10_2)
      L7_2(L8_2, L9_2, L10_2, L11_2)
      L8_2 = A0_2
      L7_2 = A0_2._async_load_sprite_to
      L9_2 = A0_2._binder
      L10_2 = "img_opt_"
      L11_2 = L5_2
      L10_2 = L10_2 .. L11_2
      L9_2 = L9_2[L10_2]
      L10_2 = G
      L10_2 = L10_2.HeliobusSNSUtils
      L10_2 = L10_2.get_tendency_img_path
      L11_2 = L6_2.TemplateTendency
      L11_2 = #L11_2
      L10_2, L11_2 = L10_2(L11_2)
      L7_2(L8_2, L9_2, L10_2, L11_2)
    end
  end
end
L0_1._setup_template_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._my_post_row
  L1_2 = L1_2.TemplateIDList
  L1_2 = L1_2.Length
  if L1_2 < 1 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._on_reply
  L4_2 = 1
  L2_2(L3_2, L4_2)
end
L0_1._on_click_opt_1 = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._my_post_row
  L1_2 = L1_2.TemplateIDList
  L1_2 = L1_2.Length
  if L1_2 < 2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._on_reply
  L4_2 = 2
  L2_2(L3_2, L4_2)
end
L0_1._on_click_opt_2 = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._my_post_row
  L1_2 = L1_2.TemplateIDList
  L1_2 = L1_2.Length
  if L1_2 < 3 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._on_reply
  L4_2 = 3
  L2_2(L3_2, L4_2)
end
L0_1._on_click_opt_3 = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.save_navigation_target
  L4_2 = nil
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_opt_1
  L3_2 = L2_2
  L2_2 = L2_2.ClearAnimationState
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_opt_2
  L3_2 = L2_2
  L2_2 = L2_2.ClearAnimationState
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_opt_3
  L3_2 = L2_2
  L2_2 = L2_2.ClearAnimationState
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._opt_callback
  if L2_2 ~= nil then
    L2_2 = A0_2._opt_callback_self
    if L2_2 ~= nil then
      L2_2 = A0_2._my_post_row
      L2_2 = L2_2.TemplateIDList
      L3_2 = A1_2 - 1
      L2_2 = L2_2[L3_2]
      L3_2 = A0_2._opt_callback
      L4_2 = A0_2._opt_callback_self
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1._on_reply = L3_1
return L0_1
