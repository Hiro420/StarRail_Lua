local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Heliobus.HeliobusUtilities.HeliobusSNSUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusSNSDetailPostInfoItem"
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
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ConstValueClientExcelTable
L2_1 = L2_1.GetData
L3_1 = "Activity_Heliobus_Default_ReadAll_PostID_List"
L2_1 = L2_1(L3_1)
L2_1 = L2_1.Value
L2_1 = L2_1.ArrayValue
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_open_detail
  L4_2 = A0_2._on_click_btn_open_detail
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.layout_element
  L1_2 = L1_2.preferredHeight
  A0_2._origin_height = L1_2
  A0_2._is_expand = false
  A0_2._is_first = true
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_click_expand_callback = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.Content
  A0_2._post = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_info
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_expand
  L4_2 = A0_2._is_expand
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_post_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._post
  L3_2 = L3_2.Title
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_post_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._post
  L3_2 = L3_2.Content
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_comment_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_Heliobus_SNSPage_TotalCommentsNum"
  L4_2 = A0_2._post
  L5_2 = L4_2
  L4_2 = L4_2.GetCommentCount
  L4_2, L5_2 = L4_2(L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._is_first
  if L1_2 then
    A0_2._is_first = false
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.CoroutineUtils
    L1_2 = L1_2.InvokeAfterFrames
    L2_2 = 1
    function L3_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
      L0_3 = A0_2._binder
      if L0_3 == nil then
        return
      end
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._check_is_txt_over_flow
      L2_3 = A0_2._binder
      L2_3 = L2_3.txt_post_desc
      L0_3 = L0_3(L1_3, L2_3)
      L1_3 = A0_2._binder
      L1_3 = L1_3.btn_open_detail
      L2_3 = L1_3
      L1_3 = L1_3.SafeSetActive
      L3_3 = L0_3
      L1_3(L2_3, L3_3)
      if L0_3 then
        L1_3 = 0
        L2_3 = L2_1.Length
        L2_3 = L2_3 - 1
        L3_3 = 1
        for L4_3 = L1_3, L2_3, L3_3 do
          L5_3 = L2_1[L4_3]
          L5_3 = L5_3.UintValue
          L6_3 = A0_2._post
          L6_3 = L6_3.ID
          if L6_3 == L5_3 then
            L6_3 = A0_2
            L7_3 = L6_3
            L6_3 = L6_3._on_click_btn_open_detail
            L6_3(L7_3)
            return
          end
        end
      end
      L1_3 = A0_2._callback
      if L1_3 then
        L1_3 = A0_2._callback_self
        if L1_3 then
          L1_3 = A0_2._callback
          L2_3 = A0_2._callback_self
          L1_3(L2_3)
        end
      end
    end
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_info = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.get_string_display_length
  L3_2 = A1_2.text
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = 0
  end
  L4_2 = A1_2
  L3_2 = A1_2.GetDisplayLength
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2 ~= L3_2
  return L2_2
end
L0_1._check_is_txt_over_flow = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_expand
  L1_2 = not L1_2
  A0_2._is_expand = L1_2
  L1_2 = A0_2._callback
  if L1_2 then
    L1_2 = A0_2._callback_self
    if L1_2 then
      L1_2 = A0_2._callback
      L2_2 = A0_2._callback_self
      L1_2(L2_2)
    end
  end
end
L0_1._on_click_btn_open_detail = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_arrow_down
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_arrow_up
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.layout_element
  if A1_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_post_desc
    L3_2 = L3_2.preferredHeight
    if L3_2 then
      goto lbl_21
    end
  end
  L3_2 = A0_2._origin_height
  ::lbl_21::
  L2_2.preferredHeight = L3_2
end
L0_1._setup_expand = L3_1
return L0_1
