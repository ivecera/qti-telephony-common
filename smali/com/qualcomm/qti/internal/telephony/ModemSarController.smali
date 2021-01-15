.class public Lcom/qualcomm/qti/internal/telephony/ModemSarController;
.super Ljava/lang/Object;
.source "ModemSarController.java"

# interfaces
.implements Lcom/qualcomm/qti/internal/telephony/DynamicSarService$SarControllerClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/ModemSarController$CmdProcThread;
    }
.end annotation


# static fields
.field private static CHARGEState:I = 0x0

.field private static final DEVICE_TYPE_GRUS:Ljava/lang/String; = "grus"

.field private static final DEVICE_TYPE_PYXIS:Ljava/lang/String; = "pyxis"

.field private static final DSI_0:I = 0x0

.field private static final DSI_1:I = 0x1

.field private static final DSI_2:I = 0x2

.field private static final DSI_3:I = 0x3

.field private static final DSI_4:I = 0x4

.field private static final DSI_5:I = 0x5

.field private static final DSI_6:I = 0x6

.field private static final DSI_7:I = 0x7

.field private static final DSI_8:I = 0x8

.field private static DSI_Current:I = 0x0

.field private static DSI_Hash:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static DSI_History:I = 0x0

.field private static final EVENT_CHARGE:I = 0x5

.field private static final EVENT_Hotspot:I = 0x3

.field private static final EVENT_Receiver:I = 0x2

.field private static final EVENT_SAR_SENSOR:I = 0x1

.field private static final EVENT_WIFI:I = 0x4

.field private static HotspotState:I = 0x0

.field private static final HotspotStateNum:I = 0x2

.field public static final LOG_TAG:Ljava/lang/String; = "ModemSarController"

.field private static final PROPERTY_CHARGE_SAR_CONTROL:Ljava/lang/String; = "persist.radio.charge_sar_control"

.field private static final PROPERTY_DEVICE_NAME:Ljava/lang/String; = "ro.product.device"

.field private static final PROPERTY_DYNAMIC_SAR_SAR_SENSOR:Ljava/lang/String; = "persist.radio.sar_sar_sensor"

.field private static final PROPERTY_GLOBAL_HW:Ljava/lang/String; = "ro.boot.hwc"

.field private static final PROPERTY_GLOBAL_VER:Ljava/lang/String; = "ro.product.mod_device"

.field private static final PROPERTY_Modem_DYNAMIC_SAR_STATE:Ljava/lang/String; = "persist.radio.modem_dynamic_sar_state"

.field private static ReceiverState:I = 0x0

.field private static final ReceiverStateNum:I = 0x2

.field private static SarSensorState:I = 0x0

.field private static WIFIState:I = 0x0

.field private static final WIFIStateNum:I = 0x2

.field private static mCHARGESAREnabled:Z

.field private static mDeviceName:Ljava/lang/String;

.field private static mGlobalHW:Ljava/lang/String;

.field private static mGlobalSW:Ljava/lang/String;

.field private static mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

.field private static mQcRilHookReady:Z

.field private static mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

.field private static mSarSensorEnabled:Z

.field private static sIntance:Lcom/qualcomm/qti/internal/telephony/ModemSarController;


# instance fields
.field mCmdProc:Lcom/qualcomm/qti/internal/telephony/ModemSarController$CmdProcThread;

.field private mContext:Landroid/content/Context;

.field private mService:Lcom/qualcomm/qti/internal/telephony/DynamicSarService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    const/4 v0, 0x0

    sput v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->SarSensorState:I

    .line 62
    sput v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->ReceiverState:I

    .line 63
    sput v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->HotspotState:I

    .line 64
    sput v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->WIFIState:I

    .line 65
    sput v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->CHARGEState:I

    .line 67
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash:Ljava/util/HashMap;

    .line 69
    sput v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_History:I

    .line 78
    const/4 v1, 0x0

    sput-object v1, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mDeviceName:Ljava/lang/String;

    .line 79
    sput-object v1, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mGlobalHW:Ljava/lang/String;

    .line 80
    sput-object v1, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mGlobalSW:Ljava/lang/String;

    .line 84
    sput-boolean v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mSarSensorEnabled:Z

    .line 85
    sput-boolean v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mCHARGESAREnabled:Z

    .line 89
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController$1;

    invoke-direct {v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController$1;-><init>()V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mCmdProc:Lcom/qualcomm/qti/internal/telephony/ModemSarController$CmdProcThread;

    .line 106
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mContext:Landroid/content/Context;

    .line 108
    const-string v1, "ro.product.device"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mDeviceName:Ljava/lang/String;

    .line 109
    const-string v1, "ro.boot.hwc"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mGlobalHW:Ljava/lang/String;

    .line 110
    const-string v1, "ro.product.mod_device"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mGlobalSW:Ljava/lang/String;

    .line 111
    const/4 v1, 0x0

    const-string v2, "persist.radio.sar_sar_sensor"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mSarSensorEnabled:Z

    .line 112
    const-string v2, "persist.radio.charge_sar_control"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mCHARGESAREnabled:Z

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", globalHW = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mGlobalHW:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", globalSW = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mGlobalSW:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mSarSensorEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mSarSensorEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mCHARGESAREnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mCHARGESAREnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->log(Ljava/lang/String;)V

    .line 115
    const-string v2, "persist.radio.modem_dynamic_sar_state"

    const-string v3, "close"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    sget-boolean v3, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mSarSensorEnabled:Z

    const-string v4, "open"

    const/4 v5, 0x5

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x7

    const/4 v9, 0x6

    const-string v10, "global"

    const-string v11, "CN"

    if-eqz v3, :cond_1

    sget-object v3, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mDeviceName:Ljava/lang/String;

    const-string v12, "grus"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 117
    new-instance v3, Lcom/qualcomm/qcrilhook/QcRilHook;

    sget-object v12, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    invoke-direct {v3, p1, v12}, Lcom/qualcomm/qcrilhook/QcRilHook;-><init>(Landroid/content/Context;Lcom/qualcomm/qcrilhook/QcRilHookCallback;)V

    sput-object v3, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    .line 119
    new-instance v3, Lcom/qualcomm/qti/internal/telephony/ModemSarController$CmdProcThread;

    invoke-direct {v3, v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController$CmdProcThread;-><init>(Lcom/qualcomm/qti/internal/telephony/ModemSarController$1;)V

    iput-object v3, p0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mCmdProc:Lcom/qualcomm/qti/internal/telephony/ModemSarController$CmdProcThread;

    .line 120
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mCmdProc:Lcom/qualcomm/qti/internal/telephony/ModemSarController$CmdProcThread;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController$CmdProcThread;->start()V

    .line 121
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash_Init_Grus()V

    .line 123
    invoke-static {p1}, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->getInstance(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mService:Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    .line 124
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mService:Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    if-eqz v0, :cond_4

    .line 125
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mGlobalHW:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mGlobalSW:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mService:Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    invoke-virtual {v0, v1, p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->registerStateChangeListener(ILcom/qualcomm/qti/internal/telephony/DynamicSarService$SarControllerClient;)V

    .line 127
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mService:Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    invoke-virtual {v0, v7, p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->registerStateChangeListener(ILcom/qualcomm/qti/internal/telephony/DynamicSarService$SarControllerClient;)V

    .line 128
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mService:Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    invoke-virtual {v0, v6, p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->registerStateChangeListener(ILcom/qualcomm/qti/internal/telephony/DynamicSarService$SarControllerClient;)V

    .line 129
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mService:Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    invoke-virtual {v0, v5, p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->registerStateChangeListener(ILcom/qualcomm/qti/internal/telephony/DynamicSarService$SarControllerClient;)V

    .line 130
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_0
    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mCHARGESAREnabled:Z

    if-eqz v0, :cond_4

    .line 133
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mService:Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    invoke-virtual {v0, v9, p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->registerStateChangeListener(ILcom/qualcomm/qti/internal/telephony/DynamicSarService$SarControllerClient;)V

    .line 134
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mService:Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    invoke-virtual {v0, v8, p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->registerStateChangeListener(ILcom/qualcomm/qti/internal/telephony/DynamicSarService$SarControllerClient;)V

    goto :goto_0

    .line 138
    :cond_1
    sget-boolean v3, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mSarSensorEnabled:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mDeviceName:Ljava/lang/String;

    const-string v12, "pyxis"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 140
    new-instance v3, Lcom/qualcomm/qcrilhook/QcRilHook;

    sget-object v12, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    invoke-direct {v3, p1, v12}, Lcom/qualcomm/qcrilhook/QcRilHook;-><init>(Landroid/content/Context;Lcom/qualcomm/qcrilhook/QcRilHookCallback;)V

    sput-object v3, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    .line 142
    new-instance v3, Lcom/qualcomm/qti/internal/telephony/ModemSarController$CmdProcThread;

    invoke-direct {v3, v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController$CmdProcThread;-><init>(Lcom/qualcomm/qti/internal/telephony/ModemSarController$1;)V

    iput-object v3, p0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mCmdProc:Lcom/qualcomm/qti/internal/telephony/ModemSarController$CmdProcThread;

    .line 143
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mCmdProc:Lcom/qualcomm/qti/internal/telephony/ModemSarController$CmdProcThread;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController$CmdProcThread;->start()V

    .line 144
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash_Init_Pyxis()V

    .line 146
    invoke-static {p1}, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->getInstance(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mService:Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    .line 147
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mService:Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    if-eqz v0, :cond_4

    .line 148
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mGlobalHW:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mGlobalSW:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mService:Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    invoke-virtual {v0, v1, p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->registerStateChangeListener(ILcom/qualcomm/qti/internal/telephony/DynamicSarService$SarControllerClient;)V

    .line 150
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mService:Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    invoke-virtual {v0, v7, p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->registerStateChangeListener(ILcom/qualcomm/qti/internal/telephony/DynamicSarService$SarControllerClient;)V

    .line 151
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mService:Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    invoke-virtual {v0, v6, p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->registerStateChangeListener(ILcom/qualcomm/qti/internal/telephony/DynamicSarService$SarControllerClient;)V

    .line 152
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mService:Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    invoke-virtual {v0, v5, p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->registerStateChangeListener(ILcom/qualcomm/qti/internal/telephony/DynamicSarService$SarControllerClient;)V

    .line 153
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_2
    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mCHARGESAREnabled:Z

    if-eqz v0, :cond_4

    .line 156
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mService:Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    invoke-virtual {v0, v9, p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->registerStateChangeListener(ILcom/qualcomm/qti/internal/telephony/DynamicSarService$SarControllerClient;)V

    .line 157
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mService:Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    invoke-virtual {v0, v8, p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->registerStateChangeListener(ILcom/qualcomm/qti/internal/telephony/DynamicSarService$SarControllerClient;)V

    goto :goto_0

    .line 163
    :cond_3
    const-string v0, "other pd"

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->log(Ljava/lang/String;)V

    .line 165
    :cond_4
    :goto_0
    return-void
.end method

.method private DSI_Hash_Init_Grus()V
    .locals 7

    .line 205
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v1, v1, v1}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash_Key_Convert(IIII)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash:Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v1, v1, v3}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash_Key_Convert(IIII)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash:Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v3, v1, v1}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash_Key_Convert(IIII)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash:Ljava/util/HashMap;

    invoke-static {v3, v3, v1, v1}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash_Key_Convert(IIII)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash:Ljava/util/HashMap;

    invoke-static {v1, v3, v1, v1}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash_Key_Convert(IIII)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash:Ljava/util/HashMap;

    invoke-static {v2, v3, v1, v3}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash_Key_Convert(IIII)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash:Ljava/util/HashMap;

    invoke-static {v3, v3, v1, v3}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash_Key_Convert(IIII)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash:Ljava/util/HashMap;

    invoke-static {v1, v3, v1, v3}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash_Key_Convert(IIII)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash:Ljava/util/HashMap;

    invoke-static {v3, v1, v1, v1}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash_Key_Convert(IIII)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash:Ljava/util/HashMap;

    invoke-static {v3, v1, v1, v3}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash_Key_Convert(IIII)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash:Ljava/util/HashMap;

    invoke-static {v2, v1, v1, v1}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash_Key_Convert(IIII)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash:Ljava/util/HashMap;

    invoke-static {v2, v1, v1, v3}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash_Key_Convert(IIII)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash:Ljava/util/HashMap;

    invoke-static {v2, v1, v3, v1}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash_Key_Convert(IIII)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash:Ljava/util/HashMap;

    invoke-static {v2, v1, v3, v3}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash_Key_Convert(IIII)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash:Ljava/util/HashMap;

    invoke-static {v2, v3, v3, v1}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash_Key_Convert(IIII)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash:Ljava/util/HashMap;

    invoke-static {v2, v3, v3, v3}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash_Key_Convert(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash:Ljava/util/HashMap;

    invoke-static {v3, v1, v3, v1}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash_Key_Convert(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash:Ljava/util/HashMap;

    invoke-static {v3, v1, v3, v3}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash_Key_Convert(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash:Ljava/util/HashMap;

    invoke-static {v3, v3, v3, v1}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash_Key_Convert(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash:Ljava/util/HashMap;

    invoke-static {v3, v3, v3, v3}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash_Key_Convert(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash:Ljava/util/HashMap;

    invoke-static {v1, v1, v3, v1}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash_Key_Convert(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash:Ljava/util/HashMap;

    invoke-static {v1, v1, v3, v3}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash_Key_Convert(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash:Ljava/util/HashMap;

    invoke-static {v1, v3, v3, v1}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash_Key_Convert(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash:Ljava/util/HashMap;

    invoke-static {v1, v3, v3, v3}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash_Key_Convert(IIII)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    return-void
.end method

.method private DSI_Hash_Init_Pyxis()V
    .locals 7

    .line 242
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v1, v1, v1}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash_Key_Convert(IIII)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash:Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v1, v1, v3}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash_Key_Convert(IIII)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash:Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v3, v1, v1}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash_Key_Convert(IIII)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash:Ljava/util/HashMap;

    invoke-static {v3, v3, v1, v1}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash_Key_Convert(IIII)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash:Ljava/util/HashMap;

    invoke-static {v1, v3, v1, v1}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash_Key_Convert(IIII)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash:Ljava/util/HashMap;

    invoke-static {v2, v3, v1, v3}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash_Key_Convert(IIII)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash:Ljava/util/HashMap;

    invoke-static {v3, v3, v1, v3}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash_Key_Convert(IIII)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash:Ljava/util/HashMap;

    invoke-static {v1, v3, v1, v3}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash_Key_Convert(IIII)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash:Ljava/util/HashMap;

    invoke-static {v3, v1, v1, v1}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash_Key_Convert(IIII)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash:Ljava/util/HashMap;

    invoke-static {v3, v1, v1, v3}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash_Key_Convert(IIII)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash:Ljava/util/HashMap;

    invoke-static {v2, v1, v1, v1}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash_Key_Convert(IIII)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash:Ljava/util/HashMap;

    invoke-static {v2, v1, v1, v3}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash_Key_Convert(IIII)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash:Ljava/util/HashMap;

    invoke-static {v2, v1, v3, v1}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash_Key_Convert(IIII)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash:Ljava/util/HashMap;

    invoke-static {v2, v1, v3, v3}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash_Key_Convert(IIII)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash:Ljava/util/HashMap;

    invoke-static {v2, v3, v3, v1}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash_Key_Convert(IIII)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash:Ljava/util/HashMap;

    invoke-static {v2, v3, v3, v3}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash_Key_Convert(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash:Ljava/util/HashMap;

    invoke-static {v3, v1, v3, v1}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash_Key_Convert(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash:Ljava/util/HashMap;

    invoke-static {v3, v1, v3, v3}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash_Key_Convert(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash:Ljava/util/HashMap;

    invoke-static {v3, v3, v3, v1}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash_Key_Convert(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash:Ljava/util/HashMap;

    invoke-static {v3, v3, v3, v3}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash_Key_Convert(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash:Ljava/util/HashMap;

    invoke-static {v1, v1, v3, v1}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash_Key_Convert(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash:Ljava/util/HashMap;

    invoke-static {v1, v1, v3, v3}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash_Key_Convert(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash:Ljava/util/HashMap;

    invoke-static {v1, v3, v3, v1}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash_Key_Convert(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash:Ljava/util/HashMap;

    invoke-static {v1, v3, v3, v3}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash_Key_Convert(IIII)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    return-void
.end method

.method private static DSI_Hash_Key_Convert(IIII)I
    .locals 2
    .param p0, "sarsensorstate"    # I
    .param p1, "receiverstate"    # I
    .param p2, "hotspotstate"    # I
    .param p3, "wifistate"    # I

    .line 194
    mul-int/lit8 v0, p0, 0x8

    .line 195
    .local v0, "hash_key":I
    mul-int/lit8 v1, p1, 0x4

    add-int/2addr v0, v1

    .line 196
    mul-int/lit8 v1, p2, 0x2

    add-int/2addr v0, v1

    .line 197
    add-int/2addr v0, p3

    .line 198
    return v0
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 33
    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mQcRilHookReady:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 33
    sput-boolean p0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mQcRilHookReady:Z

    return p0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .line 33
    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mCHARGESAREnabled:Z

    return v0
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200()I
    .locals 1

    .line 33
    sget v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Current:I

    return v0
.end method

.method static synthetic access$1202(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 33
    sput p0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Current:I

    return p0
.end method

.method static synthetic access$1300(IIII)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 33
    invoke-static {p0, p1, p2, p3}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash_Key_Convert(IIII)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400()Ljava/util/HashMap;
    .locals 1

    .line 33
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_Hash:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1500()I
    .locals 1

    .line 33
    sget v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_History:I

    return v0
.end method

.method static synthetic access$1502(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 33
    sput p0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->DSI_History:I

    return p0
.end method

.method static synthetic access$300(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 33
    invoke-static {p0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400()Lcom/qualcomm/qcrilhook/QcRilHook;
    .locals 1

    .line 33
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .line 33
    sget v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->SarSensorState:I

    return v0
.end method

.method static synthetic access$502(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 33
    sput p0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->SarSensorState:I

    return p0
.end method

.method static synthetic access$600()I
    .locals 1

    .line 33
    sget v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->ReceiverState:I

    return v0
.end method

.method static synthetic access$602(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 33
    sput p0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->ReceiverState:I

    return p0
.end method

.method static synthetic access$700()I
    .locals 1

    .line 33
    sget v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->HotspotState:I

    return v0
.end method

.method static synthetic access$702(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 33
    sput p0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->HotspotState:I

    return p0
.end method

.method static synthetic access$800()I
    .locals 1

    .line 33
    sget v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->WIFIState:I

    return v0
.end method

.method static synthetic access$802(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 33
    sput p0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->WIFIState:I

    return p0
.end method

.method static synthetic access$900()I
    .locals 1

    .line 33
    sget v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->CHARGEState:I

    return v0
.end method

.method static synthetic access$902(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 33
    sput p0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->CHARGEState:I

    return p0
.end method

.method private static final log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 284
    const-string v0, "ModemSarController"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return-void
.end method

.method public static make(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 100
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->sIntance:Lcom/qualcomm/qti/internal/telephony/ModemSarController;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->sIntance:Lcom/qualcomm/qti/internal/telephony/ModemSarController;

    .line 103
    :cond_0
    return-void
.end method

.method private sendMsgToHandler(III)V
    .locals 2
    .param p1, "message"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendMsgToHandler, Message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", arg1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", arg2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->log(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->mCmdProc:Lcom/qualcomm/qti/internal/telephony/ModemSarController$CmdProcThread;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController$CmdProcThread;->getCmdHandler()Landroid/os/Handler;

    move-result-object v0

    .line 278
    .local v0, "handler":Landroid/os/Handler;
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 279
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 280
    return-void
.end method


# virtual methods
.method public onStateChanged(II)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "value"    # I

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateChanged: type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->log(Ljava/lang/String;)V

    .line 169
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_3

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    const/4 v2, 0x6

    if-eq p1, v2, :cond_1

    const/4 v2, 0x7

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    invoke-direct {p0, v1, p2, v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->sendMsgToHandler(III)V

    .line 187
    goto :goto_0

    .line 183
    :cond_1
    invoke-direct {p0, v1, p2, v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->sendMsgToHandler(III)V

    .line 184
    goto :goto_0

    .line 174
    :cond_2
    const/4 v1, 0x2

    invoke-direct {p0, v1, p2, v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->sendMsgToHandler(III)V

    .line 175
    goto :goto_0

    .line 171
    :cond_3
    invoke-direct {p0, v2, p2, v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->sendMsgToHandler(III)V

    .line 172
    goto :goto_0

    .line 177
    :cond_4
    invoke-direct {p0, v1, p2, v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->sendMsgToHandler(III)V

    .line 178
    goto :goto_0

    .line 180
    :cond_5
    const/4 v1, 0x4

    invoke-direct {p0, v1, p2, v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->sendMsgToHandler(III)V

    .line 181
    nop

    .line 190
    :goto_0
    return-void
.end method
