local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GotoFriendMainPageCommand"
L2_1 = "Logic.Goto.BaseCommand"
L0_1 = L0_1(L1_1, L2_1)
L0_1._text_already_open = "UIText_Goto_Error_01"
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A1_2.GotoType
  L3_2 = L0_1.super
  L3_2 = L3_2.get_params
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = L0_1.super
  L4_2 = L4_2.get_page_name_from_full_path_name
  L5_2 = GotoType2Page
  L5_2 = L5_2[L2_2]
  L4_2 = L4_2(L5_2)
  L5_2 = #L3_2
  if 0 < L5_2 then
    L5_2 = G
    L5_2 = L5_2.UIManager
    L5_2 = L5_2.load_and_async_show
    L6_2 = GotoType2Page
    L6_2 = L6_2[L2_2]
    L7_2 = unpack
    L8_2 = L3_2
    L7_2, L8_2 = L7_2(L8_2)
    L5_2(L6_2, L7_2, L8_2)
  else
    L5_2 = G
    L5_2 = L5_2.UIManager
    L5_2 = L5_2.load_and_async_show
    L6_2 = GotoType2Page
    L6_2 = L6_2[L2_2]
    L5_2(L6_2)
  end
end
L0_1.execute = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.GotoType
  L3_2 = GotoType2Page
  L3_2 = L3_2[L2_2]
  if L3_2 ~= nil then
    L3_2 = GotoType2Page
    L3_2 = L3_2[L2_2]
    if L3_2 ~= "" then
      goto lbl_19
    end
  end
  L3_2 = G
  L3_2 = L3_2.SuperDebug
  L3_2 = L3_2.LogErrorFormat
  L4_2 = "The Page associated with type %d does not exist!"
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = false
  L4_2 = ""
  do return L3_2, L4_2 end
  ::lbl_19::
  L3_2 = true
  L4_2 = ""
  return L3_2, L4_2
end
L0_1._check_goto_condition = L1_1
return L0_1
