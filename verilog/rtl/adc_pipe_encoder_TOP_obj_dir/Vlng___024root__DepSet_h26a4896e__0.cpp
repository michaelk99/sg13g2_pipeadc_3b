// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vlng.h for the primary calling header

#include "Vlng__pch.h"
#include "Vlng___024root.h"

void Vlng___024root___ico_sequent__TOP__0(Vlng___024root* vlSelf);

void Vlng___024root___eval_ico(Vlng___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___eval_ico\n"); );
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1ULL & vlSelfRef.__VicoTriggered.word(0U))) {
        Vlng___024root___ico_sequent__TOP__0(vlSelf);
    }
}

VL_INLINE_OPT void Vlng___024root___ico_sequent__TOP__0(Vlng___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___ico_sequent__TOP__0\n"); );
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    CData/*1:0*/ adc_pipe_encoder_TOP__DOT____Vcellout__o2b_stage_1__binary_o;
    adc_pipe_encoder_TOP__DOT____Vcellout__o2b_stage_1__binary_o = 0;
    CData/*1:0*/ adc_pipe_encoder_TOP__DOT____Vcellout__o2b_stage_2__binary_o;
    adc_pipe_encoder_TOP__DOT____Vcellout__o2b_stage_2__binary_o = 0;
    // Body
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

void Vlng___024root___eval_triggers__ico(Vlng___024root* vlSelf);

bool Vlng___024root___eval_phase__ico(Vlng___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___eval_phase__ico\n"); );
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    CData/*0:0*/ __VicoExecute;
    // Body
    Vlng___024root___eval_triggers__ico(vlSelf);
    __VicoExecute = vlSelfRef.__VicoTriggered.any();
    if (__VicoExecute) {
        Vlng___024root___eval_ico(vlSelf);
    }
    return (__VicoExecute);
}

void Vlng___024root___eval_act(Vlng___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___eval_act\n"); );
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
}

void Vlng___024root___nba_sequent__TOP__0(Vlng___024root* vlSelf);

void Vlng___024root___eval_nba(Vlng___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___eval_nba\n"); );
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((3ULL & vlSelfRef.__VnbaTriggered.word(0U))) {
        Vlng___024root___nba_sequent__TOP__0(vlSelf);
    }
}

VL_INLINE_OPT void Vlng___024root___nba_sequent__TOP__0(Vlng___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___nba_sequent__TOP__0\n"); );
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    CData/*0:0*/ __VdlySet__adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg__v0;
    __VdlySet__adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg__v0 = 0;
    CData/*2:0*/ __VdlyVal__adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg__v1;
    __VdlyVal__adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg__v1 = 0;
    CData/*0:0*/ __VdlySet__adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg__v1;
    __VdlySet__adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg__v1 = 0;
    CData/*0:0*/ __VdlySet__adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg__v2;
    __VdlySet__adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg__v2 = 0;
    CData/*2:0*/ __VdlyVal__adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg__v3;
    __VdlyVal__adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg__v3 = 0;
    CData/*0:0*/ __VdlySet__adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg__v3;
    __VdlySet__adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg__v3 = 0;
    CData/*0:0*/ __VdlySet__adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg__v4;
    __VdlySet__adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg__v4 = 0;
    CData/*2:0*/ __VdlyVal__adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg__v5;
    __VdlyVal__adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg__v5 = 0;
    CData/*0:0*/ __VdlySet__adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg__v5;
    __VdlySet__adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg__v5 = 0;
    // Body
    __VdlySet__adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg__v0 = 0U;
    __VdlySet__adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg__v1 = 0U;
    __VdlySet__adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg__v2 = 0U;
    __VdlySet__adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg__v3 = 0U;
    __VdlySet__adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg__v4 = 0U;
    __VdlySet__adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg__v5 = 0U;
    if (vlSelfRef.reset_i) {
        __VdlySet__adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg__v0 = 1U;
        __VdlySet__adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg__v2 = 1U;
        __VdlySet__adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg__v4 = 1U;
    } else {
        vlSelfRef.adc_pipe_encoder_TOP__DOT__encoder__DOT____Vlvbound_h911b5842__1 
            = vlSelfRef.adc_pipe_encoder_TOP__DOT__encoder__DOT__d_stage
            [0U];
        __VdlyVal__adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg__v1 
            = vlSelfRef.adc_pipe_encoder_TOP__DOT__encoder__DOT____Vlvbound_h911b5842__1;
        __VdlySet__adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg__v1 = 1U;
        vlSelfRef.adc_pipe_encoder_TOP__DOT__encoder__DOT____Vlvbound_h911b5842__2 
            = (7U & (vlSelfRef.adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg
                     [0U] + vlSelfRef.adc_pipe_encoder_TOP__DOT__encoder__DOT__d_stage
                     [1U]));
        __VdlyVal__adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg__v3 
            = vlSelfRef.adc_pipe_encoder_TOP__DOT__encoder__DOT____Vlvbound_h911b5842__2;
        __VdlySet__adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg__v3 = 1U;
        vlSelfRef.adc_pipe_encoder_TOP__DOT__encoder__DOT____Vlvbound_h911b5842__2 
            = (7U & (vlSelfRef.adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg
                     [1U] + vlSelfRef.adc_pipe_encoder_TOP__DOT__encoder__DOT__d_stage
                     [2U]));
        __VdlyVal__adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg__v5 
            = vlSelfRef.adc_pipe_encoder_TOP__DOT__encoder__DOT____Vlvbound_h911b5842__2;
        __VdlySet__adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg__v5 = 1U;
    }
    if (__VdlySet__adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg__v0) {
        vlSelfRef.adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg[0U] = 0U;
    }
    if (__VdlySet__adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg__v1) {
        vlSelfRef.adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg[0U] 
            = __VdlyVal__adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg__v1;
    }
    if (__VdlySet__adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg__v2) {
        vlSelfRef.adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg[1U] = 0U;
    }
    if (__VdlySet__adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg__v3) {
        vlSelfRef.adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg[1U] 
            = __VdlyVal__adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg__v3;
    }
    if (__VdlySet__adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg__v4) {
        vlSelfRef.adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg[2U] = 0U;
    }
    if (__VdlySet__adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg__v5) {
        vlSelfRef.adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg[2U] 
            = __VdlyVal__adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg__v5;
    }
    vlSelfRef.d_o = vlSelfRef.adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg
        [2U];
}

void Vlng___024root___eval_triggers__act(Vlng___024root* vlSelf);

bool Vlng___024root___eval_phase__act(Vlng___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___eval_phase__act\n"); );
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    VlTriggerVec<2> __VpreTriggered;
    CData/*0:0*/ __VactExecute;
    // Body
    Vlng___024root___eval_triggers__act(vlSelf);
    __VactExecute = vlSelfRef.__VactTriggered.any();
    if (__VactExecute) {
        __VpreTriggered.andNot(vlSelfRef.__VactTriggered, vlSelfRef.__VnbaTriggered);
        vlSelfRef.__VnbaTriggered.thisOr(vlSelfRef.__VactTriggered);
        Vlng___024root___eval_act(vlSelf);
    }
    return (__VactExecute);
}

bool Vlng___024root___eval_phase__nba(Vlng___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___eval_phase__nba\n"); );
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    CData/*0:0*/ __VnbaExecute;
    // Body
    __VnbaExecute = vlSelfRef.__VnbaTriggered.any();
    if (__VnbaExecute) {
        Vlng___024root___eval_nba(vlSelf);
        vlSelfRef.__VnbaTriggered.clear();
    }
    return (__VnbaExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vlng___024root___dump_triggers__ico(Vlng___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void Vlng___024root___dump_triggers__nba(Vlng___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void Vlng___024root___dump_triggers__act(Vlng___024root* vlSelf);
#endif  // VL_DEBUG

void Vlng___024root___eval(Vlng___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___eval\n"); );
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    IData/*31:0*/ __VicoIterCount;
    CData/*0:0*/ __VicoContinue;
    IData/*31:0*/ __VnbaIterCount;
    CData/*0:0*/ __VnbaContinue;
    // Body
    __VicoIterCount = 0U;
    vlSelfRef.__VicoFirstIteration = 1U;
    __VicoContinue = 1U;
    while (__VicoContinue) {
        if (VL_UNLIKELY(((0x64U < __VicoIterCount)))) {
#ifdef VL_DEBUG
            Vlng___024root___dump_triggers__ico(vlSelf);
#endif
            VL_FATAL_MT("adc_pipe_encoder_TOP.v", 12, "", "Input combinational region did not converge.");
        }
        __VicoIterCount = ((IData)(1U) + __VicoIterCount);
        __VicoContinue = 0U;
        if (Vlng___024root___eval_phase__ico(vlSelf)) {
            __VicoContinue = 1U;
        }
        vlSelfRef.__VicoFirstIteration = 0U;
    }
    __VnbaIterCount = 0U;
    __VnbaContinue = 1U;
    while (__VnbaContinue) {
        if (VL_UNLIKELY(((0x64U < __VnbaIterCount)))) {
#ifdef VL_DEBUG
            Vlng___024root___dump_triggers__nba(vlSelf);
#endif
            VL_FATAL_MT("adc_pipe_encoder_TOP.v", 12, "", "NBA region did not converge.");
        }
        __VnbaIterCount = ((IData)(1U) + __VnbaIterCount);
        __VnbaContinue = 0U;
        vlSelfRef.__VactIterCount = 0U;
        vlSelfRef.__VactContinue = 1U;
        while (vlSelfRef.__VactContinue) {
            if (VL_UNLIKELY(((0x64U < vlSelfRef.__VactIterCount)))) {
#ifdef VL_DEBUG
                Vlng___024root___dump_triggers__act(vlSelf);
#endif
                VL_FATAL_MT("adc_pipe_encoder_TOP.v", 12, "", "Active region did not converge.");
            }
            vlSelfRef.__VactIterCount = ((IData)(1U) 
                                         + vlSelfRef.__VactIterCount);
            vlSelfRef.__VactContinue = 0U;
            if (Vlng___024root___eval_phase__act(vlSelf)) {
                vlSelfRef.__VactContinue = 1U;
            }
        }
        if (Vlng___024root___eval_phase__nba(vlSelf)) {
            __VnbaContinue = 1U;
        }
    }
}

#ifdef VL_DEBUG
void Vlng___024root___eval_debug_assertions(Vlng___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___eval_debug_assertions\n"); );
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if (VL_UNLIKELY(((vlSelfRef.clock_i & 0xfeU)))) {
        Verilated::overWidthError("clock_i");}
    if (VL_UNLIKELY(((vlSelfRef.clock2_i & 0xfeU)))) {
        Verilated::overWidthError("clock2_i");}
    if (VL_UNLIKELY(((vlSelfRef.reset_i & 0xfeU)))) {
        Verilated::overWidthError("reset_i");}
    if (VL_UNLIKELY(((vlSelfRef.d1_i & 0xf8U)))) {
        Verilated::overWidthError("d1_i");}
    if (VL_UNLIKELY(((vlSelfRef.d2_i & 0xf8U)))) {
        Verilated::overWidthError("d2_i");}
    if (VL_UNLIKELY(((vlSelfRef.d3_i & 0xfeU)))) {
        Verilated::overWidthError("d3_i");}
}
#endif  // VL_DEBUG
