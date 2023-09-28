/******************************************************************************
* Copyright (c) 2015 - 2020 Xilinx, Inc.  All rights reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/

#ifndef UART0_H_
#define UART0_H_

#ifdef __cplusplus
extern "C" {
#endif

/**
 * UART0 Base Address
 */
#define UART0_BASEADDR      ((u32)0XFF000000U)

/**
 * Register: UART0_CONTROL_REG0
 */
#define UART0_CONTROL_REG0    ( ( UART0_BASEADDR ) + ((u32)0X00000000U) )

#define UART0_CONTROL_REG0_STPBRK_SHIFT   8
#define UART0_CONTROL_REG0_STPBRK_WIDTH   1
#define UART0_CONTROL_REG0_STPBRK_MASK    ((u32)0X00000100U)

#define UART0_CONTROL_REG0_STTBRK_SHIFT   7
#define UART0_CONTROL_REG0_STTBRK_WIDTH   1
#define UART0_CONTROL_REG0_STTBRK_MASK    ((u32)0X00000080U)

#define UART0_CONTROL_REG0_RSTTO_SHIFT   6
#define UART0_CONTROL_REG0_RSTTO_WIDTH   1
#define UART0_CONTROL_REG0_RSTTO_MASK    ((u32)0X00000040U)

#define UART0_CONTROL_REG0_TXDIS_SHIFT   5
#define UART0_CONTROL_REG0_TXDIS_WIDTH   1
#define UART0_CONTROL_REG0_TXDIS_MASK    ((u32)0X00000020U)

#define UART0_CONTROL_REG0_TXEN_SHIFT   4
#define UART0_CONTROL_REG0_TXEN_WIDTH   1
#define UART0_CONTROL_REG0_TXEN_MASK    ((u32)0X00000010U)

#define UART0_CONTROL_REG0_RXDIS_SHIFT   3
#define UART0_CONTROL_REG0_RXDIS_WIDTH   1
#define UART0_CONTROL_REG0_RXDIS_MASK    ((u32)0X00000008U)

#define UART0_CONTROL_REG0_RXEN_SHIFT   2
#define UART0_CONTROL_REG0_RXEN_WIDTH   1
#define UART0_CONTROL_REG0_RXEN_MASK    ((u32)0X00000004U)

#define UART0_CONTROL_REG0_TXRES_SHIFT   1
#define UART0_CONTROL_REG0_TXRES_WIDTH   1
#define UART0_CONTROL_REG0_TXRES_MASK    ((u32)0X00000002U)

#define UART0_CONTROL_REG0_RXRES_SHIFT   0
#define UART0_CONTROL_REG0_RXRES_WIDTH   1
#define UART0_CONTROL_REG0_RXRES_MASK    ((u32)0X00000001U)

/**
 * Register: UART0_MODE_REG0
 */
#define UART0_MODE_REG0    ( ( UART0_BASEADDR ) + ((u32)0X00000004U) )

#define UART0_MODE_REG0_WSIZE_SHIFT   12
#define UART0_MODE_REG0_WSIZE_WIDTH   2
#define UART0_MODE_REG0_WSIZE_MASK    ((u32)0X00003000U)

#define UART0_MODE_REG0_IRMODE_SHIFT   11
#define UART0_MODE_REG0_IRMODE_WIDTH   1
#define UART0_MODE_REG0_IRMODE_MASK    ((u32)0X00000800U)

#define UART0_MODE_REG0_UCLKEN_SHIFT   10
#define UART0_MODE_REG0_UCLKEN_WIDTH   1
#define UART0_MODE_REG0_UCLKEN_MASK    ((u32)0X00000400U)

#define UART0_MODE_REG0_CHMODE_SHIFT   8
#define UART0_MODE_REG0_CHMODE_WIDTH   2
#define UART0_MODE_REG0_CHMODE_MASK    ((u32)0X00000300U)

#define UART0_MODE_REG0_NBSTOP_SHIFT   6
#define UART0_MODE_REG0_NBSTOP_WIDTH   2
#define UART0_MODE_REG0_NBSTOP_MASK    ((u32)0X000000C0U)

#define UART0_MODE_REG0_PAR_SHIFT   3
#define UART0_MODE_REG0_PAR_WIDTH   3
#define UART0_MODE_REG0_PAR_MASK    ((u32)0X00000038U)

#define UART0_MODE_REG0_CHRL_SHIFT   1
#define UART0_MODE_REG0_CHRL_WIDTH   2
#define UART0_MODE_REG0_CHRL_MASK    ((u32)0X00000006U)

#define UART0_MODE_REG0_CLKS_SHIFT   0
#define UART0_MODE_REG0_CLKS_WIDTH   1
#define UART0_MODE_REG0_CLKS_MASK    ((u32)0X00000001U)

/**
 * Register: UART0_INTRPT_EN_REG0
 */
#define UART0_INTRPT_EN_REG0    ( ( UART0_BASEADDR ) + ((u32)0X00000008U) )

#define UART0_INTRPT_EN_REG0_RBRK_SHIFT   13
#define UART0_INTRPT_EN_REG0_RBRK_WIDTH   1
#define UART0_INTRPT_EN_REG0_RBRK_MASK    ((u32)0X00002000U)

#define UART0_INTRPT_EN_REG0_TOVR_SHIFT   12
#define UART0_INTRPT_EN_REG0_TOVR_WIDTH   1
#define UART0_INTRPT_EN_REG0_TOVR_MASK    ((u32)0X00001000U)

#define UART0_INTRPT_EN_REG0_TNFUL_SHIFT   11
#define UART0_INTRPT_EN_REG0_TNFUL_WIDTH   1
#define UART0_INTRPT_EN_REG0_TNFUL_MASK    ((u32)0X00000800U)

#define UART0_INTRPT_EN_REG0_TTRIG_SHIFT   10
#define UART0_INTRPT_EN_REG0_TTRIG_WIDTH   1
#define UART0_INTRPT_EN_REG0_TTRIG_MASK    ((u32)0X00000400U)

#define UART0_INTRPT_EN_REG0_DMSI_SHIFT   9
#define UART0_INTRPT_EN_REG0_DMSI_WIDTH   1
#define UART0_INTRPT_EN_REG0_DMSI_MASK    ((u32)0X00000200U)

#define UART0_INTRPT_EN_REG0_TIMEOUT_SHIFT   8
#define UART0_INTRPT_EN_REG0_TIMEOUT_WIDTH   1
#define UART0_INTRPT_EN_REG0_TIMEOUT_MASK    ((u32)0X00000100U)

#define UART0_INTRPT_EN_REG0_PARE_SHIFT   7
#define UART0_INTRPT_EN_REG0_PARE_WIDTH   1
#define UART0_INTRPT_EN_REG0_PARE_MASK    ((u32)0X00000080U)

#define UART0_INTRPT_EN_REG0_FRAME_SHIFT   6
#define UART0_INTRPT_EN_REG0_FRAME_WIDTH   1
#define UART0_INTRPT_EN_REG0_FRAME_MASK    ((u32)0X00000040U)

#define UART0_INTRPT_EN_REG0_ROVR_SHIFT   5
#define UART0_INTRPT_EN_REG0_ROVR_WIDTH   1
#define UART0_INTRPT_EN_REG0_ROVR_MASK    ((u32)0X00000020U)

#define UART0_INTRPT_EN_REG0_TFUL_SHIFT   4
#define UART0_INTRPT_EN_REG0_TFUL_WIDTH   1
#define UART0_INTRPT_EN_REG0_TFUL_MASK    ((u32)0X00000010U)

#define UART0_INTRPT_EN_REG0_TEMPTY_SHIFT   3
#define UART0_INTRPT_EN_REG0_TEMPTY_WIDTH   1
#define UART0_INTRPT_EN_REG0_TEMPTY_MASK    ((u32)0X00000008U)

#define UART0_INTRPT_EN_REG0_RFUL_SHIFT   2
#define UART0_INTRPT_EN_REG0_RFUL_WIDTH   1
#define UART0_INTRPT_EN_REG0_RFUL_MASK    ((u32)0X00000004U)

#define UART0_INTRPT_EN_REG0_REMPTY_SHIFT   1
#define UART0_INTRPT_EN_REG0_REMPTY_WIDTH   1
#define UART0_INTRPT_EN_REG0_REMPTY_MASK    ((u32)0X00000002U)

#define UART0_INTRPT_EN_REG0_RTRIG_SHIFT   0
#define UART0_INTRPT_EN_REG0_RTRIG_WIDTH   1
#define UART0_INTRPT_EN_REG0_RTRIG_MASK    ((u32)0X00000001U)

/**
 * Register: UART0_INTRPT_DIS_REG0
 */
#define UART0_INTRPT_DIS_REG0    ( ( UART0_BASEADDR ) + ((u32)0X0000000CU) )

#define UART0_INTRPT_DIS_REG0_RBRK_SHIFT   13
#define UART0_INTRPT_DIS_REG0_RBRK_WIDTH   1
#define UART0_INTRPT_DIS_REG0_RBRK_MASK    ((u32)0X00002000U)

#define UART0_INTRPT_DIS_REG0_TOVR_SHIFT   12
#define UART0_INTRPT_DIS_REG0_TOVR_WIDTH   1
#define UART0_INTRPT_DIS_REG0_TOVR_MASK    ((u32)0X00001000U)

#define UART0_INTRPT_DIS_REG0_TNFUL_SHIFT   11
#define UART0_INTRPT_DIS_REG0_TNFUL_WIDTH   1
#define UART0_INTRPT_DIS_REG0_TNFUL_MASK    ((u32)0X00000800U)

#define UART0_INTRPT_DIS_REG0_TTRIG_SHIFT   10
#define UART0_INTRPT_DIS_REG0_TTRIG_WIDTH   1
#define UART0_INTRPT_DIS_REG0_TTRIG_MASK    ((u32)0X00000400U)

#define UART0_INTRPT_DIS_REG0_DMSI_SHIFT   9
#define UART0_INTRPT_DIS_REG0_DMSI_WIDTH   1
#define UART0_INTRPT_DIS_REG0_DMSI_MASK    ((u32)0X00000200U)

#define UART0_INTRPT_DIS_REG0_TIMEOUT_SHIFT   8
#define UART0_INTRPT_DIS_REG0_TIMEOUT_WIDTH   1
#define UART0_INTRPT_DIS_REG0_TIMEOUT_MASK    ((u32)0X00000100U)

#define UART0_INTRPT_DIS_REG0_PARE_SHIFT   7
#define UART0_INTRPT_DIS_REG0_PARE_WIDTH   1
#define UART0_INTRPT_DIS_REG0_PARE_MASK    ((u32)0X00000080U)

#define UART0_INTRPT_DIS_REG0_FRAME_SHIFT   6
#define UART0_INTRPT_DIS_REG0_FRAME_WIDTH   1
#define UART0_INTRPT_DIS_REG0_FRAME_MASK    ((u32)0X00000040U)

#define UART0_INTRPT_DIS_REG0_ROVR_SHIFT   5
#define UART0_INTRPT_DIS_REG0_ROVR_WIDTH   1
#define UART0_INTRPT_DIS_REG0_ROVR_MASK    ((u32)0X00000020U)

#define UART0_INTRPT_DIS_REG0_TFUL_SHIFT   4
#define UART0_INTRPT_DIS_REG0_TFUL_WIDTH   1
#define UART0_INTRPT_DIS_REG0_TFUL_MASK    ((u32)0X00000010U)

#define UART0_INTRPT_DIS_REG0_TEMPTY_SHIFT   3
#define UART0_INTRPT_DIS_REG0_TEMPTY_WIDTH   1
#define UART0_INTRPT_DIS_REG0_TEMPTY_MASK    ((u32)0X00000008U)

#define UART0_INTRPT_DIS_REG0_RFUL_SHIFT   2
#define UART0_INTRPT_DIS_REG0_RFUL_WIDTH   1
#define UART0_INTRPT_DIS_REG0_RFUL_MASK    ((u32)0X00000004U)

#define UART0_INTRPT_DIS_REG0_REMPTY_SHIFT   1
#define UART0_INTRPT_DIS_REG0_REMPTY_WIDTH   1
#define UART0_INTRPT_DIS_REG0_REMPTY_MASK    ((u32)0X00000002U)

#define UART0_INTRPT_DIS_REG0_RTRIG_SHIFT   0
#define UART0_INTRPT_DIS_REG0_RTRIG_WIDTH   1
#define UART0_INTRPT_DIS_REG0_RTRIG_MASK    ((u32)0X00000001U)

/**
 * Register: UART0_INTRPT_MASK_REG0
 */
#define UART0_INTRPT_MASK_REG0    ( ( UART0_BASEADDR ) + ((u32)0X00000010U) )

#define UART0_INTRPT_MASK_REG0_RBRK_SHIFT   13
#define UART0_INTRPT_MASK_REG0_RBRK_WIDTH   1
#define UART0_INTRPT_MASK_REG0_RBRK_MASK    ((u32)0X00002000U)

#define UART0_INTRPT_MASK_REG0_TOVR_SHIFT   12
#define UART0_INTRPT_MASK_REG0_TOVR_WIDTH   1
#define UART0_INTRPT_MASK_REG0_TOVR_MASK    ((u32)0X00001000U)

#define UART0_INTRPT_MASK_REG0_TNFUL_SHIFT   11
#define UART0_INTRPT_MASK_REG0_TNFUL_WIDTH   1
#define UART0_INTRPT_MASK_REG0_TNFUL_MASK    ((u32)0X00000800U)

#define UART0_INTRPT_MASK_REG0_TTRIG_SHIFT   10
#define UART0_INTRPT_MASK_REG0_TTRIG_WIDTH   1
#define UART0_INTRPT_MASK_REG0_TTRIG_MASK    ((u32)0X00000400U)

#define UART0_INTRPT_MASK_REG0_DMSI_SHIFT   9
#define UART0_INTRPT_MASK_REG0_DMSI_WIDTH   1
#define UART0_INTRPT_MASK_REG0_DMSI_MASK    ((u32)0X00000200U)

#define UART0_INTRPT_MASK_REG0_TIMEOUT_SHIFT   8
#define UART0_INTRPT_MASK_REG0_TIMEOUT_WIDTH   1
#define UART0_INTRPT_MASK_REG0_TIMEOUT_MASK    ((u32)0X00000100U)

#define UART0_INTRPT_MASK_REG0_PARE_SHIFT   7
#define UART0_INTRPT_MASK_REG0_PARE_WIDTH   1
#define UART0_INTRPT_MASK_REG0_PARE_MASK    ((u32)0X00000080U)

#define UART0_INTRPT_MASK_REG0_FRAME_SHIFT   6
#define UART0_INTRPT_MASK_REG0_FRAME_WIDTH   1
#define UART0_INTRPT_MASK_REG0_FRAME_MASK    ((u32)0X00000040U)

#define UART0_INTRPT_MASK_REG0_ROVR_SHIFT   5
#define UART0_INTRPT_MASK_REG0_ROVR_WIDTH   1
#define UART0_INTRPT_MASK_REG0_ROVR_MASK    ((u32)0X00000020U)

#define UART0_INTRPT_MASK_REG0_TFUL_SHIFT   4
#define UART0_INTRPT_MASK_REG0_TFUL_WIDTH   1
#define UART0_INTRPT_MASK_REG0_TFUL_MASK    ((u32)0X00000010U)

#define UART0_INTRPT_MASK_REG0_TEMPTY_SHIFT   3
#define UART0_INTRPT_MASK_REG0_TEMPTY_WIDTH   1
#define UART0_INTRPT_MASK_REG0_TEMPTY_MASK    ((u32)0X00000008U)

#define UART0_INTRPT_MASK_REG0_RFUL_SHIFT   2
#define UART0_INTRPT_MASK_REG0_RFUL_WIDTH   1
#define UART0_INTRPT_MASK_REG0_RFUL_MASK    ((u32)0X00000004U)

#define UART0_INTRPT_MASK_REG0_REMPTY_SHIFT   1
#define UART0_INTRPT_MASK_REG0_REMPTY_WIDTH   1
#define UART0_INTRPT_MASK_REG0_REMPTY_MASK    ((u32)0X00000002U)

#define UART0_INTRPT_MASK_REG0_RTRIG_SHIFT   0
#define UART0_INTRPT_MASK_REG0_RTRIG_WIDTH   1
#define UART0_INTRPT_MASK_REG0_RTRIG_MASK    ((u32)0X00000001U)

/**
 * Register: UART0_CHNL_INT_STS_REG0
 */
#define UART0_CHNL_INT_STS_REG0    ( ( UART0_BASEADDR ) + ((u32)0X00000014U) )

#define UART0_CHNL_INT_STS_REG0_RBRK_SHIFT   13
#define UART0_CHNL_INT_STS_REG0_RBRK_WIDTH   1
#define UART0_CHNL_INT_STS_REG0_RBRK_MASK    ((u32)0X00002000U)

#define UART0_CHNL_INT_STS_REG0_TOVR_SHIFT   12
#define UART0_CHNL_INT_STS_REG0_TOVR_WIDTH   1
#define UART0_CHNL_INT_STS_REG0_TOVR_MASK    ((u32)0X00001000U)

#define UART0_CHNL_INT_STS_REG0_TNFUL_SHIFT   11
#define UART0_CHNL_INT_STS_REG0_TNFUL_WIDTH   1
#define UART0_CHNL_INT_STS_REG0_TNFUL_MASK    ((u32)0X00000800U)

#define UART0_CHNL_INT_STS_REG0_TTRIG_SHIFT   10
#define UART0_CHNL_INT_STS_REG0_TTRIG_WIDTH   1
#define UART0_CHNL_INT_STS_REG0_TTRIG_MASK    ((u32)0X00000400U)

#define UART0_CHNL_INT_STS_REG0_DMSI_SHIFT   9
#define UART0_CHNL_INT_STS_REG0_DMSI_WIDTH   1
#define UART0_CHNL_INT_STS_REG0_DMSI_MASK    ((u32)0X00000200U)

#define UART0_CHNL_INT_STS_REG0_TIMEOUT_SHIFT   8
#define UART0_CHNL_INT_STS_REG0_TIMEOUT_WIDTH   1
#define UART0_CHNL_INT_STS_REG0_TIMEOUT_MASK    ((u32)0X00000100U)

#define UART0_CHNL_INT_STS_REG0_PARE_SHIFT   7
#define UART0_CHNL_INT_STS_REG0_PARE_WIDTH   1
#define UART0_CHNL_INT_STS_REG0_PARE_MASK    ((u32)0X00000080U)

#define UART0_CHNL_INT_STS_REG0_FRAME_SHIFT   6
#define UART0_CHNL_INT_STS_REG0_FRAME_WIDTH   1
#define UART0_CHNL_INT_STS_REG0_FRAME_MASK    ((u32)0X00000040U)

#define UART0_CHNL_INT_STS_REG0_ROVR_SHIFT   5
#define UART0_CHNL_INT_STS_REG0_ROVR_WIDTH   1
#define UART0_CHNL_INT_STS_REG0_ROVR_MASK    ((u32)0X00000020U)

#define UART0_CHNL_INT_STS_REG0_TFUL_SHIFT   4
#define UART0_CHNL_INT_STS_REG0_TFUL_WIDTH   1
#define UART0_CHNL_INT_STS_REG0_TFUL_MASK    ((u32)0X00000010U)

#define UART0_CHNL_INT_STS_REG0_TEMPTY_SHIFT   3
#define UART0_CHNL_INT_STS_REG0_TEMPTY_WIDTH   1
#define UART0_CHNL_INT_STS_REG0_TEMPTY_MASK    ((u32)0X00000008U)

#define UART0_CHNL_INT_STS_REG0_RFUL_SHIFT   2
#define UART0_CHNL_INT_STS_REG0_RFUL_WIDTH   1
#define UART0_CHNL_INT_STS_REG0_RFUL_MASK    ((u32)0X00000004U)

#define UART0_CHNL_INT_STS_REG0_REMPTY_SHIFT   1
#define UART0_CHNL_INT_STS_REG0_REMPTY_WIDTH   1
#define UART0_CHNL_INT_STS_REG0_REMPTY_MASK    ((u32)0X00000002U)

#define UART0_CHNL_INT_STS_REG0_RTRIG_SHIFT   0
#define UART0_CHNL_INT_STS_REG0_RTRIG_WIDTH   1
#define UART0_CHNL_INT_STS_REG0_RTRIG_MASK    ((u32)0X00000001U)

/**
 * Register: UART0_BAUD_RATE_GEN_REG0
 */
#define UART0_BAUD_RATE_GEN_REG0    ( ( UART0_BASEADDR ) + ((u32)0X00000018U) )

#define UART0_BAUD_RATE_GEN_REG0_CD_SHIFT   0
#define UART0_BAUD_RATE_GEN_REG0_CD_WIDTH   16
#define UART0_BAUD_RATE_GEN_REG0_CD_MASK    ((u32)0X0000FFFFU)

/**
 * Register: UART0_RCVR_TIMEOUT_REG0
 */
#define UART0_RCVR_TIMEOUT_REG0    ( ( UART0_BASEADDR ) + ((u32)0X0000001CU) )

#define UART0_RCVR_TIMEOUT_REG0_RTO_SHIFT   0
#define UART0_RCVR_TIMEOUT_REG0_RTO_WIDTH   8
#define UART0_RCVR_TIMEOUT_REG0_RTO_MASK    ((u32)0X000000FFU)

/**
 * Register: UART0_RCVR_FIFO_TRIGGER_LEVEL0
 */
#define UART0_RCVR_FIFO_TRIGGER_LEVEL0    ( ( UART0_BASEADDR ) + ((u32)0X00000020U) )

#define UART0_RCVR_FIFO_TRIGGER_LEVEL0_RTRIG_SHIFT   0
#define UART0_RCVR_FIFO_TRIGGER_LEVEL0_RTRIG_WIDTH   6
#define UART0_RCVR_FIFO_TRIGGER_LEVEL0_RTRIG_MASK    ((u32)0X0000003FU)

/**
 * Register: UART0_MODEM_CTRL_REG0
 */
#define UART0_MODEM_CTRL_REG0    ( ( UART0_BASEADDR ) + ((u32)0X00000024U) )

#define UART0_MODEM_CTRL_REG0_FCM_SHIFT   5
#define UART0_MODEM_CTRL_REG0_FCM_WIDTH   1
#define UART0_MODEM_CTRL_REG0_FCM_MASK    ((u32)0X00000020U)

#define UART0_MODEM_CTRL_REG0_RTS_SHIFT   1
#define UART0_MODEM_CTRL_REG0_RTS_WIDTH   1
#define UART0_MODEM_CTRL_REG0_RTS_MASK    ((u32)0X00000002U)

#define UART0_MODEM_CTRL_REG0_DTR_SHIFT   0
#define UART0_MODEM_CTRL_REG0_DTR_WIDTH   1
#define UART0_MODEM_CTRL_REG0_DTR_MASK    ((u32)0X00000001U)

/**
 * Register: UART0_MODEM_STS_REG0
 */
#define UART0_MODEM_STS_REG0    ( ( UART0_BASEADDR ) + ((u32)0X00000028U) )

#define UART0_MODEM_STS_REG0_FCMS_SHIFT   8
#define UART0_MODEM_STS_REG0_FCMS_WIDTH   1
#define UART0_MODEM_STS_REG0_FCMS_MASK    ((u32)0X00000100U)

#define UART0_MODEM_STS_REG0_DCD_SHIFT   7
#define UART0_MODEM_STS_REG0_DCD_WIDTH   1
#define UART0_MODEM_STS_REG0_DCD_MASK    ((u32)0X00000080U)

#define UART0_MODEM_STS_REG0_RI_SHIFT   6
#define UART0_MODEM_STS_REG0_RI_WIDTH   1
#define UART0_MODEM_STS_REG0_RI_MASK    ((u32)0X00000040U)

#define UART0_MODEM_STS_REG0_DSR_SHIFT   5
#define UART0_MODEM_STS_REG0_DSR_WIDTH   1
#define UART0_MODEM_STS_REG0_DSR_MASK    ((u32)0X00000020U)

#define UART0_MODEM_STS_REG0_CTS_SHIFT   4
#define UART0_MODEM_STS_REG0_CTS_WIDTH   1
#define UART0_MODEM_STS_REG0_CTS_MASK    ((u32)0X00000010U)

#define UART0_MODEM_STS_REG0_DDCD_SHIFT   3
#define UART0_MODEM_STS_REG0_DDCD_WIDTH   1
#define UART0_MODEM_STS_REG0_DDCD_MASK    ((u32)0X00000008U)

#define UART0_MODEM_STS_REG0_TERI_SHIFT   2
#define UART0_MODEM_STS_REG0_TERI_WIDTH   1
#define UART0_MODEM_STS_REG0_TERI_MASK    ((u32)0X00000004U)

#define UART0_MODEM_STS_REG0_DDSR_SHIFT   1
#define UART0_MODEM_STS_REG0_DDSR_WIDTH   1
#define UART0_MODEM_STS_REG0_DDSR_MASK    ((u32)0X00000002U)

#define UART0_MODEM_STS_REG0_DCTS_SHIFT   0
#define UART0_MODEM_STS_REG0_DCTS_WIDTH   1
#define UART0_MODEM_STS_REG0_DCTS_MASK    ((u32)0X00000001U)

/**
 * Register: UART0_CHANNEL_STS_REG0
 */
#define UART0_CHANNEL_STS_REG0    ( ( UART0_BASEADDR ) + ((u32)0X0000002CU) )

#define UART0_CHANNEL_STS_REG0_RBRK_SHIFT   15
#define UART0_CHANNEL_STS_REG0_RBRK_WIDTH   1
#define UART0_CHANNEL_STS_REG0_RBRK_MASK    ((u32)0X00008000U)

#define UART0_CHANNEL_STS_REG0_TNFUL_SHIFT   14
#define UART0_CHANNEL_STS_REG0_TNFUL_WIDTH   1
#define UART0_CHANNEL_STS_REG0_TNFUL_MASK    ((u32)0X00004000U)

#define UART0_CHANNEL_STS_REG0_TTRIG_SHIFT   13
#define UART0_CHANNEL_STS_REG0_TTRIG_WIDTH   1
#define UART0_CHANNEL_STS_REG0_TTRIG_MASK    ((u32)0X00002000U)

#define UART0_CHANNEL_STS_REG0_FDELT_SHIFT   12
#define UART0_CHANNEL_STS_REG0_FDELT_WIDTH   1
#define UART0_CHANNEL_STS_REG0_FDELT_MASK    ((u32)0X00001000U)

#define UART0_CHANNEL_STS_REG0_TACTIVE_SHIFT   11
#define UART0_CHANNEL_STS_REG0_TACTIVE_WIDTH   1
#define UART0_CHANNEL_STS_REG0_TACTIVE_MASK    ((u32)0X00000800U)

#define UART0_CHANNEL_STS_REG0_RACTIVE_SHIFT   10
#define UART0_CHANNEL_STS_REG0_RACTIVE_WIDTH   1
#define UART0_CHANNEL_STS_REG0_RACTIVE_MASK    ((u32)0X00000400U)

#define UART0_CHANNEL_STS_REG0_DMSI_SHIFT   9
#define UART0_CHANNEL_STS_REG0_DMSI_WIDTH   1
#define UART0_CHANNEL_STS_REG0_DMSI_MASK    ((u32)0X00000200U)

#define UART0_CHANNEL_STS_REG0_TIMEOUT_SHIFT   8
#define UART0_CHANNEL_STS_REG0_TIMEOUT_WIDTH   1
#define UART0_CHANNEL_STS_REG0_TIMEOUT_MASK    ((u32)0X00000100U)

#define UART0_CHANNEL_STS_REG0_PARE_SHIFT   7
#define UART0_CHANNEL_STS_REG0_PARE_WIDTH   1
#define UART0_CHANNEL_STS_REG0_PARE_MASK    ((u32)0X00000080U)

#define UART0_CHANNEL_STS_REG0_FRAME_SHIFT   6
#define UART0_CHANNEL_STS_REG0_FRAME_WIDTH   1
#define UART0_CHANNEL_STS_REG0_FRAME_MASK    ((u32)0X00000040U)

#define UART0_CHANNEL_STS_REG0_ROVR_SHIFT   5
#define UART0_CHANNEL_STS_REG0_ROVR_WIDTH   1
#define UART0_CHANNEL_STS_REG0_ROVR_MASK    ((u32)0X00000020U)

#define UART0_CHANNEL_STS_REG0_TFUL_SHIFT   4
#define UART0_CHANNEL_STS_REG0_TFUL_WIDTH   1
#define UART0_CHANNEL_STS_REG0_TFUL_MASK    ((u32)0X00000010U)

#define UART0_CHANNEL_STS_REG0_TEMPTY_SHIFT   3
#define UART0_CHANNEL_STS_REG0_TEMPTY_WIDTH   1
#define UART0_CHANNEL_STS_REG0_TEMPTY_MASK    ((u32)0X00000008U)

#define UART0_CHANNEL_STS_REG0_RFUL_SHIFT   2
#define UART0_CHANNEL_STS_REG0_RFUL_WIDTH   1
#define UART0_CHANNEL_STS_REG0_RFUL_MASK    ((u32)0X00000004U)

#define UART0_CHANNEL_STS_REG0_REMPTY_SHIFT   1
#define UART0_CHANNEL_STS_REG0_REMPTY_WIDTH   1
#define UART0_CHANNEL_STS_REG0_REMPTY_MASK    ((u32)0X00000002U)

#define UART0_CHANNEL_STS_REG0_RTRIG_SHIFT   0
#define UART0_CHANNEL_STS_REG0_RTRIG_WIDTH   1
#define UART0_CHANNEL_STS_REG0_RTRIG_MASK    ((u32)0X00000001U)

/**
 * Register: UART0_TX_RX_FIFO0
 */
#define UART0_TX_RX_FIFO0    ( ( UART0_BASEADDR ) + ((u32)0X00000030U) )

#define UART0_TX_RX_FIFO0_FIFO_SHIFT   0
#define UART0_TX_RX_FIFO0_FIFO_WIDTH   8
#define UART0_TX_RX_FIFO0_FIFO_MASK    ((u32)0X000000FFU)

/**
 * Register: UART0_BAUD_RATE_DIVIDER_REG0
 */
#define UART0_BAUD_RATE_DIVIDER_REG0    ( ( UART0_BASEADDR ) + ((u32)0X00000034U) )

#define UART0_BAUD_RATE_DIVIDER_REG0_BDIV_SHIFT   0
#define UART0_BAUD_RATE_DIVIDER_REG0_BDIV_WIDTH   8
#define UART0_BAUD_RATE_DIVIDER_REG0_BDIV_MASK    ((u32)0X000000FFU)

/**
 * Register: UART0_FLOW_DELAY_REG0
 */
#define UART0_FLOW_DELAY_REG0    ( ( UART0_BASEADDR ) + ((u32)0X00000038U) )

#define UART0_FLOW_DELAY_REG0_FDEL_SHIFT   0
#define UART0_FLOW_DELAY_REG0_FDEL_WIDTH   6
#define UART0_FLOW_DELAY_REG0_FDEL_MASK    ((u32)0X0000003FU)

/**
 * Register: UART0_IR_MIN_RCV_PULSE_WDTH0
 */
#define UART0_IR_MIN_RCV_PULSE_WDTH0    ( ( UART0_BASEADDR ) + ((u32)0X0000003CU) )

#define UART0_IR_MIN_RCV_PULSE_WDTH0_PMN_SHIFT   0
#define UART0_IR_MIN_RCV_PULSE_WDTH0_PMN_WIDTH   16
#define UART0_IR_MIN_RCV_PULSE_WDTH0_PMN_MASK    ((u32)0X0000FFFFU)

/**
 * Register: UART0_IR_TRANSMITTED_PULSE_WDTH0
 */
#define UART0_IR_TRANSMITTED_PULSE_WDTH0    ( ( UART0_BASEADDR ) + ((u32)0X00000040U) )

#define UART0_IR_TRANSMITTED_PULSE_WDTH0_PWID_SHIFT   0
#define UART0_IR_TRANSMITTED_PULSE_WDTH0_PWID_WIDTH   8
#define UART0_IR_TRANSMITTED_PULSE_WDTH0_PWID_MASK    ((u32)0X000000FFU)

/**
 * Register: UART0_TX_FIFO_TRIGGER_LEVEL0
 */
#define UART0_TX_FIFO_TRIGGER_LEVEL0    ( ( UART0_BASEADDR ) + ((u32)0X00000044U) )

#define UART0_TX_FIFO_TRIGGER_LEVEL0_TTRIG_SHIFT   0
#define UART0_TX_FIFO_TRIGGER_LEVEL0_TTRIG_WIDTH   6
#define UART0_TX_FIFO_TRIGGER_LEVEL0_TTRIG_MASK    ((u32)0X0000003FU)

/**
 * Register: UART0_RX_FIFO_BYTE_STATUS
 */
#define UART0_RX_FIFO_BYTE_STATUS    ( ( UART0_BASEADDR ) + ((u32)0X00000048U) )

#define UART0_RX_FIFO_BYTE_STATUS_BYTE3_BREAK_SHIFT   11
#define UART0_RX_FIFO_BYTE_STATUS_BYTE3_BREAK_WIDTH   1
#define UART0_RX_FIFO_BYTE_STATUS_BYTE3_BREAK_MASK    ((u32)0X00000800U)

#define UART0_RX_FIFO_BYTE_STATUS_BYTE3_FRM_ERR_SHIFT   10
#define UART0_RX_FIFO_BYTE_STATUS_BYTE3_FRM_ERR_WIDTH   1
#define UART0_RX_FIFO_BYTE_STATUS_BYTE3_FRM_ERR_MASK    ((u32)0X00000400U)

#define UART0_RX_FIFO_BYTE_STATUS_BYTE3_PAR_ERR_SHIFT   9
#define UART0_RX_FIFO_BYTE_STATUS_BYTE3_PAR_ERR_WIDTH   1
#define UART0_RX_FIFO_BYTE_STATUS_BYTE3_PAR_ERR_MASK    ((u32)0X00000200U)

#define UART0_RX_FIFO_BYTE_STATUS_BYTE2_BREAK_SHIFT   8
#define UART0_RX_FIFO_BYTE_STATUS_BYTE2_BREAK_WIDTH   1
#define UART0_RX_FIFO_BYTE_STATUS_BYTE2_BREAK_MASK    ((u32)0X00000100U)

#define UART0_RX_FIFO_BYTE_STATUS_BYTE2_FRM_ERR_SHIFT   7
#define UART0_RX_FIFO_BYTE_STATUS_BYTE2_FRM_ERR_WIDTH   1
#define UART0_RX_FIFO_BYTE_STATUS_BYTE2_FRM_ERR_MASK    ((u32)0X00000080U)

#define UART0_RX_FIFO_BYTE_STATUS_BYTE2_PAR_ERR_SHIFT   6
#define UART0_RX_FIFO_BYTE_STATUS_BYTE2_PAR_ERR_WIDTH   1
#define UART0_RX_FIFO_BYTE_STATUS_BYTE2_PAR_ERR_MASK    ((u32)0X00000040U)

#define UART0_RX_FIFO_BYTE_STATUS_BYTE1_BREAK_SHIFT   5
#define UART0_RX_FIFO_BYTE_STATUS_BYTE1_BREAK_WIDTH   1
#define UART0_RX_FIFO_BYTE_STATUS_BYTE1_BREAK_MASK    ((u32)0X00000020U)

#define UART0_RX_FIFO_BYTE_STATUS_BYTE1_FRM_ERR_SHIFT   4
#define UART0_RX_FIFO_BYTE_STATUS_BYTE1_FRM_ERR_WIDTH   1
#define UART0_RX_FIFO_BYTE_STATUS_BYTE1_FRM_ERR_MASK    ((u32)0X00000010U)

#define UART0_RX_FIFO_BYTE_STATUS_BYTE1_PAR_ERR_SHIFT   3
#define UART0_RX_FIFO_BYTE_STATUS_BYTE1_PAR_ERR_WIDTH   1
#define UART0_RX_FIFO_BYTE_STATUS_BYTE1_PAR_ERR_MASK    ((u32)0X00000008U)

#define UART0_RX_FIFO_BYTE_STATUS_BYTE0_BREAK_SHIFT   2
#define UART0_RX_FIFO_BYTE_STATUS_BYTE0_BREAK_WIDTH   1
#define UART0_RX_FIFO_BYTE_STATUS_BYTE0_BREAK_MASK    ((u32)0X00000004U)

#define UART0_RX_FIFO_BYTE_STATUS_BYTE0_FRM_ERR_SHIFT   1
#define UART0_RX_FIFO_BYTE_STATUS_BYTE0_FRM_ERR_WIDTH   1
#define UART0_RX_FIFO_BYTE_STATUS_BYTE0_FRM_ERR_MASK    ((u32)0X00000002U)

#define UART0_RX_FIFO_BYTE_STATUS_BYTE0_PAR_ERR_SHIFT   0
#define UART0_RX_FIFO_BYTE_STATUS_BYTE0_PAR_ERR_WIDTH   1
#define UART0_RX_FIFO_BYTE_STATUS_BYTE0_PAR_ERR_MASK    ((u32)0X00000001U)

#ifdef __cplusplus
}
#endif


#endif /* _UART0_H_ */
