// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vlng.h for the primary calling header

#include "Vlng__pch.h"
#include "Vlng___024root.h"

VL_ATTR_COLD void Vlng___024root___eval_static(Vlng___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___eval_static\n"); );
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
}

VL_ATTR_COLD void Vlng___024root___eval_initial(Vlng___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___eval_initial\n"); );
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelfRef.__Vtrigprevexpr___TOP__clock2_i__0 = vlSelfRef.clock2_i;
    vlSelfRef.__Vtrigprevexpr___TOP__clock_i__0 = vlSelfRef.clock_i;
}

VL_ATTR_COLD void Vlng___024root___eval_final(Vlng___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___eval_final\n"); );
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vlng___024root___dump_triggers__stl(Vlng___024root* vlSelf);
#endif  // VL_DEBUG
VL_ATTR_COLD bool Vlng___024root___eval_phase__stl(Vlng___024root* vlSelf);

VL_ATTR_COLD void Vlng___024root___eval_settle(Vlng___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___eval_settle\n"); );
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    IData/*31:0*/ __VstlIterCount;
    CData/*0:0*/ __VstlContinue;
    // Body
    __VstlIterCount = 0U;
    vlSelfRef.__VstlFirstIteration = 1U;
    __VstlContinue = 1U;
    while (__VstlContinue) {
        if (VL_UNLIKELY(((0x64U < __VstlIterCount)))) {
#ifdef VL_DEBUG
            Vlng___024root___dump_triggers__stl(vlSelf);
#endif
            VL_FATAL_MT("adc_pipe_encoder_TOP.v", 12, "", "Settle region did not converge.");
        }
        __VstlIterCount = ((IData)(1U) + __VstlIterCount);
        __VstlContinue = 0U;
        if (Vlng___024root___eval_phase__stl(vlSelf)) {
            __VstlContinue = 1U;
        }
        vlSelfRef.__VstlFirstIteration = 0U;
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vlng___024root___dump_triggers__stl(Vlng___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___dump_triggers__stl\n"); );
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1U & (~ vlSelfRef.__VstlTriggered.any()))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelfRef.__VstlTriggered.word(0U))) {
        VL_DBG_MSGF("         'stl' region trigger index 0 is active: Internal 'stl' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vlng___024root___stl_sequent__TOP__0(Vlng___024root* vlSelf);

VL_ATTR_COLD void Vlng___024root___eval_stl(Vlng___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___eval_stl\n"); );
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1ULL & vlSelfRef.__VstlTriggered.word(0U))) {
        Vlng___024root___stl_sequent__TOP__0(vlSelf);
    }
}

VL_ATTR_COLD void Vlng___024root___stl_sequent__TOP__0(Vlng___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___stl_sequent__TOP__0\n"); );
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    CData/*1:0*/ adc_pipe_encoder_TOP__DOT____Vcellout__o2b_stage_1__binary_o;
    adc_pipe_encoder_TOP__DOT____Vcellout__o2b_stage_1__binary_o = 0;
    CData/*1:0*/ adc_pipe_encoder_TOP__DOT____Vcellout__o2b_stage_2__binary_o;
    adc_pipe_encoder_TOP__DOT____Vcellout__o2b_stage_2__binary_o = 0;
    // Body
    vlSelfRef.d_o = vlSelfRef.adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg
        [2U];
    vlSelfRef.adc_pipe_encoder_TOP__DOT__encoder__DOT__d_stage[2U] 
        = vlSelfRef.d3_i;
    adc_pipe_encoder_TOP__DOT____Vcellout__o2b_stage_2__binary_o 
        = ((4U & (IData)(vlSelfRef.d2_i)) ? 2U : ((1U 
                                                   & (IData)(vlSelfRef.d2_i))
                                                   ? 1U
                                                   : 0U));
    adc_pipe_encoder_TOP__DOT____Vcellout__o2b_stage_1__binary_o 
        = ((4U & (IData)(vlSelfRef.d1_i)) ? 2U : ((1U 
                                                   & (IData)(vlSelfRef.d1_i))
                                                   ? 1U
                                                   : 0U));
    vlSelfRef.adc_pipe_encoder_TOP__DOT__encoder__DOT__d_stage[1U] 
        = adc_pipe_encoder_TOP__DOT____Vcellout__o2b_stage_2__binary_o;
    vlSelfRef.adc_pipe_encoder_TOP__DOT__encoder__DOT__d_stage[0U] 
        = (7U & VL_SHIFTL_III(3,3,32, (IData)(adc_pipe_encoder_TOP__DOT____Vcellout__o2b_stage_1__binary_o), 1U));
}

VL_ATTR_COLD void Vlng___024root___eval_triggers__stl(Vlng___024root* vlSelf);

VL_ATTR_COLD bool Vlng___024root___eval_phase__stl(Vlng___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___eval_phase__stl\n"); );
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    CData/*0:0*/ __VstlExecute;
    // Body
    Vlng___024root___eval_triggers__stl(vlSelf);
    __VstlExecute = vlSelfRef.__VstlTriggered.any();
    if (__VstlExecute) {
        Vlng___024root___eval_stl(vlSelf);
    }
    return (__VstlExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vlng___024root___dump_triggers__ico(Vlng___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___dump_triggers__ico\n"); );
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1U & (~ vlSelfRef.__VicoTriggered.any()))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelfRef.__VicoTriggered.word(0U))) {
        VL_DBG_MSGF("         'ico' region trigger index 0 is active: Internal 'ico' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

#ifdef VL_DEBUG
VL_ATTR_COLD void Vlng___024root___dump_triggers__act(Vlng___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___dump_triggers__act\n"); );
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1U & (~ vlSelfRef.__VactTriggered.any()))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelfRef.__VactTriggered.word(0U))) {
        VL_DBG_MSGF("         'act' region trigger index 0 is active: @(posedge clock2_i)\n");
    }
    if ((2ULL & vlSelfRef.__VactTriggered.word(0U))) {
        VL_DBG_MSGF("         'act' region trigger index 1 is active: @(posedge clock_i)\n");
    }
}
#endif  // VL_DEBUG

#ifdef VL_DEBUG
VL_ATTR_COLD void Vlng___024root___dump_triggers__nba(Vlng___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___dump_triggers__nba\n"); );
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1U & (~ vlSelfRef.__VnbaTriggered.any()))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelfRef.__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 0 is active: @(posedge clock2_i)\n");
    }
    if ((2ULL & vlSelfRef.__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 1 is active: @(posedge clock_i)\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vlng___024root___ctor_var_reset(Vlng___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___ctor_var_reset\n"); );
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelf->clock_i = VL_RAND_RESET_I(1);
    vlSelf->clock2_i = VL_RAND_RESET_I(1);
    vlSelf->reset_i = VL_RAND_RESET_I(1);
    vlSelf->d1_i = VL_RAND_RESET_I(3);
    vlSelf->d2_i = VL_RAND_RESET_I(3);
    vlSelf->d3_i = VL_RAND_RESET_I(1);
    vlSelf->d_o = VL_RAND_RESET_I(3);
    for (int __Vi0 = 0; __Vi0 < 3; ++__Vi0) {
        vlSelf->adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg[__Vi0] = VL_RAND_RESET_I(3);
    }
    for (int __Vi0 = 0; __Vi0 < 3; ++__Vi0) {
        vlSelf->adc_pipe_encoder_TOP__DOT__encoder__DOT__d_stage[__Vi0] = VL_RAND_RESET_I(3);
    }
    vlSelf->adc_pipe_encoder_TOP__DOT__encoder__DOT____Vlvbound_h911b5842__1 = VL_RAND_RESET_I(3);
    vlSelf->adc_pipe_encoder_TOP__DOT__encoder__DOT____Vlvbound_h911b5842__2 = VL_RAND_RESET_I(3);
    vlSelf->__Vtrigprevexpr___TOP__clock2_i__0 = VL_RAND_RESET_I(1);
    vlSelf->__Vtrigprevexpr___TOP__clock_i__0 = VL_RAND_RESET_I(1);
}
