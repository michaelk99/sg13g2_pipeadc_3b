// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vlng.h for the primary calling header

#ifndef VERILATED_VLNG___024ROOT_H_
#define VERILATED_VLNG___024ROOT_H_  // guard

#include "verilated.h"


class Vlng__Syms;

class alignas(VL_CACHE_LINE_BYTES) Vlng___024root final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    VL_IN8(clock_i,0,0);
    VL_IN8(clock2_i,0,0);
    VL_IN8(reset_i,0,0);
    VL_IN8(d1_i,2,0);
    VL_IN8(d2_i,2,0);
    VL_IN8(d3_i,0,0);
    VL_OUT8(d_o,2,0);
    CData/*2:0*/ adc_pipe_encoder_TOP__DOT__encoder__DOT____Vlvbound_h911b5842__1;
    CData/*2:0*/ adc_pipe_encoder_TOP__DOT__encoder__DOT____Vlvbound_h911b5842__2;
    CData/*0:0*/ __VstlFirstIteration;
    CData/*0:0*/ __VicoFirstIteration;
    CData/*0:0*/ __Vtrigprevexpr___TOP__clock2_i__0;
    CData/*0:0*/ __Vtrigprevexpr___TOP__clock_i__0;
    CData/*0:0*/ __VactContinue;
    IData/*31:0*/ __VactIterCount;
    VlUnpacked<CData/*2:0*/, 3> adc_pipe_encoder_TOP__DOT__encoder__DOT__pipeStage_sreg;
    VlUnpacked<CData/*2:0*/, 3> adc_pipe_encoder_TOP__DOT__encoder__DOT__d_stage;
    VlTriggerVec<1> __VstlTriggered;
    VlTriggerVec<1> __VicoTriggered;
    VlTriggerVec<2> __VactTriggered;
    VlTriggerVec<2> __VnbaTriggered;

    // INTERNAL VARIABLES
    Vlng__Syms* const vlSymsp;

    // CONSTRUCTORS
    Vlng___024root(Vlng__Syms* symsp, const char* v__name);
    ~Vlng___024root();
    VL_UNCOPYABLE(Vlng___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard
