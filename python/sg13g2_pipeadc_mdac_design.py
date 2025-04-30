# KV Advanced Analog Integrated Circuit Design - Design Project
# JKU IIC
# (c) Michael Koefinger 2025
#
# Description: System level design of a pipeline ADC's MDAC
# given total bits, bits per stage and bandwidth

# Created: 29.04.2025
#
import scipy.signal as scs
from math import pi
from control.matlab import *
import matplotlib.pyplot as plt
import numpy as np


def main():
    # Constants
    k_t = 1.38e-23
    temperature = 300

    # Specs
    n_bit_stage = 1
    n_bit_tot = 3
    n_stages = n_bit_tot/n_bit_stage
    osr = 1                                         # oversampling ratio
    f_b = 10e6                                      # ADC's -3dB-bandwidth
    factor_noise_ktc = 0.5                          # kT/C noise budget of overall output noise
    nef_ota = 2                                     # noise excess factor of ota noise compared to 4kT*gamma*gm
    vo_se = 1                                       # single-ended output swing of MDAC

    f_s = f_b*2*osr                                 # sampling frequency of the ADC
    a_stage = 2**n_bit_stage
    beta = 1/a_stage
    t_settle = 1/f_s/2
    settling_acc = 1/2**(n_bit_tot-n_bit_stage)     # dynamic error at t_settle
    settling_acc_db = 20 * np.log10(settling_acc)
    # dynamic_range = 1/settling_acc
    n_settle = -np.log(settling_acc)
    n_settle_margin = np.ceil(n_settle)
    settling_acc_margin = np.exp(-n_settle_margin)
    settling_acc_margin_db = 20*np.log10(settling_acc_margin)

    # Define settling in terms of total time to settle (Tclk/2) per amplifier time constants at the output tau_o = c_load/(beta*gm)
    # gbw = gm/c_load_tot ... closed/open loop, is constant for 1.st order system
    # bw_cl = beta*gbw = beta*gm/c_load_tot
    # tau_o = 1/bw_cl
    # error = exp(-Tclk/2/tau_o) = 1/dynamic_range
    # n_settle = ln(dynamic_range)

    tau_o = t_settle / n_settle_margin
    bw_cl = 1 / tau_o
    gbw = bw_cl / beta
    gm_per_cload = 2*n_settle_margin*f_s*a_stage
    #gm_per_cload = gbw

    # Calculate min. required DC gain
    # Define static error as
    static_error_margin = 1/np.sqrt(2)
    dynamic_error_min = 1-settling_acc_margin

    gain_dc_min = a_stage*((dynamic_error_min/(settling_acc_margin*static_error_margin))-1)
    gain_dc_min_db = 20*np.log10(gain_dc_min)

    # Noise Considerations
    vo_diff_pp = 2*vo_se
    vo_rms = vo_diff_pp/2/np.sqrt(2)
    SNR_margin_db = np.ceil(-settling_acc_margin_db)
    vn_rms_tot = np.sqrt(vo_rms**2/10**(SNR_margin_db/10))
    vn_rms_ktc = np.sqrt(factor_noise_ktc)*vn_rms_tot
    vn_rms_ota = np.sqrt(1-factor_noise_ktc)*vn_rms_tot
    c_fb = k_t*temperature*(a_stage+1)/(vn_rms_ktc**2)
    c_load = nef_ota*k_t*temperature*(a_stage+1)/(vn_rms_ota**2)
    gm = gm_per_cload*c_load

    # Print Results
    print("n_bits = ", n_bit_tot, " bit")
    print("t_settle =", t_settle / 1e-9, " ns")
    print("A_stage =", a_stage)
    print("beta =", beta)
    print("settling_acc =", settling_acc * 100, "%")
    print("settling_acc_db =", settling_acc_db," dB")
    print("n_settle =", n_settle)
    print("settling_acc_margin =", settling_acc_margin * 100, "%")
    print("settling_acc_margin_db =", settling_acc_margin_db," dB")
    print("n_settle_margin =", n_settle_margin)
    print("gm_cload =", gm_per_cload / 1e6, " uS/pF")
    print("gbw =", gbw / 1e6, "MHz")
    print("bw_cl = ", bw_cl / 1e6, "MHz")
    print("dynamic_error_min = ", dynamic_error_min)
    print("A0 =", gain_dc_min)
    print("A0 =", gain_dc_min_db, " dB")
    print("vn_rms_tot = ", vn_rms_tot / 1e-3, "mVrms")
    print("vn_rms_ktc = ", vn_rms_ktc / 1e-3, "mVrms")
    print("vn_rms_ota = ", vn_rms_ota / 1e-3, "mVrms")
    print("c_fb = ", c_fb / 1e-15, "fF")
    print("c_load = ", c_load / 1e-15, "fF")
    print("gm =", gm / 1e-9, " nS")

if __name__ == '__main__':
    main()
    input("Press Enter to exit...")
