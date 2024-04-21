local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.SNSPost.HeliobusSNSPostPreviewImagePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.SNSPost.HeliobusSNSPostPreviewImagePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.HeliobusUtilities.HeliobusSNSUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusSNSPostTemplateItem"
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
L2_1 = {}
L2_1.Small = 1
L2_1.Medium = 2
L2_1.Large = 3
function L3_1(A0_2)
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
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HeliobusSNSPostPreviewImagePanel
  L4_2 = G
  L4_2 = L4_2.HeliobusSNSPostPreviewImagePanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._img_panel = L1_2
  L1_2 = A0_2._img_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_img_post
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2
  A0_2._template_row = A1_2
  A0_2._idx = A3_2
  A0_2._callback = A2_2
  A0_2._callback_self = A4_2
  L6_2 = A0_2
  L5_2 = A0_2._setup_template
  L5_2(L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_img
  L5_2(L6_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_tendency
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = G
  L3_2 = L3_2.HeliobusSNSUtils
  L3_2 = L3_2.get_tendency_text_id
  L4_2 = A0_2._template_row
  L4_2 = L4_2.TemplateTendency
  L4_2 = #L4_2
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._template_row
  L3_2 = L3_2.HeliobusTemplateTitle
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_content
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._template_row
  L3_2 = L3_2.HeliobusTemplateContent
  L1_2(L2_2, L3_2)
end
L0_1._setup_template = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._template_row
  L1_2 = L1_2.TemplateType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.HeliobusTemplateType
  L2_2 = L2_2.ImageWithText
  L1_2 = L1_2 == L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_img_post
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._img_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = A0_2._template_row
    L5_2 = L2_1.Small
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._setup_img = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._callback
  if L1_2 ~= nil then
    L1_2 = A0_2._callback_self
    if L1_2 ~= nil then
      L1_2 = A0_2._callback
      L2_2 = A0_2._callback_self
      L3_2 = A0_2._idx
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_click_btn = L3_1
return L0_1
