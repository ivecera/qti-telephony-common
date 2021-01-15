.class public Lcom/qualcomm/qti/internal/telephony/WifiSarController;
.super Ljava/lang/Object;
.source "WifiSarController.java"

# interfaces
.implements Lcom/qualcomm/qti/internal/telephony/DynamicSarService$SarControllerClient;


# static fields
.field private static final PROPERTY_DYNAMIC_WIFI_SAR:Ljava/lang/String; = "persist.wifi.sar"

.field private static mAudioReceiverState:I

.field private static mHotspotState:I

.field private static mModemState:I

.field private static mPaternIndex:I

.field private static mSarSensorState:I

.field private static mSarSet:I

.field private static mWifiState:I


# instance fields
.field private final DSI0:I

.field private final DSI1:I

.field private final DSI2:I

.field private final DSI3:I

.field private final DSI4:I

.field private final DSI5:I

.field private final PATERN1_DEVCIE_LIST:Ljava/lang/String;

.field private final PATERN2_DEVCIE_LIST:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mService:Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const/4 v0, 0x0

    sput v0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mPaternIndex:I

    .line 24
    sput v0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mSarSet:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "WifiSarController"

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->TAG:Ljava/lang/String;

    .line 15
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mService:Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    .line 26
    const/4 v1, 0x0

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->DSI0:I

    .line 27
    const/4 v2, 0x1

    iput v2, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->DSI1:I

    .line 28
    const/4 v3, 0x2

    iput v3, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->DSI2:I

    .line 29
    const/4 v4, 0x3

    iput v4, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->DSI3:I

    .line 30
    const/4 v5, 0x4

    iput v5, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->DSI4:I

    .line 31
    const/4 v5, 0x5

    iput v5, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->DSI5:I

    .line 33
    const-string v6, "gruspyxis"

    iput-object v6, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->PATERN1_DEVCIE_LIST:Ljava/lang/String;

    .line 34
    const-string v7, "andromeda"

    iput-object v7, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->PATERN2_DEVCIE_LIST:Ljava/lang/String;

    .line 42
    const-string v8, "WifiSarController init..."

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const-string v8, "persist.wifi.sar"

    invoke-static {v8, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_0

    .line 45
    const-string v1, "disable wifi sar"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void

    .line 49
    :cond_0
    sget-object v8, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 50
    .local v8, "device":Ljava/lang/String;
    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v9, -0x1

    if-eq v6, v9, :cond_1

    .line 51
    sput v2, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mPaternIndex:I

    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v9, :cond_2

    .line 53
    sput v3, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mPaternIndex:I

    .line 55
    :cond_2
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "device: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", SAR patern: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mPaternIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mContext:Landroid/content/Context;

    .line 58
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mContext:Landroid/content/Context;

    const-string v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    iput-object v6, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 59
    sget v6, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mPaternIndex:I

    if-eqz v6, :cond_3

    .line 60
    invoke-static {p1}, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->getInstance(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    move-result-object v6

    iput-object v6, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mService:Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    .line 63
    :cond_3
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mService:Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    if-eqz v6, :cond_5

    .line 64
    sget v7, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mPaternIndex:I

    if-ne v7, v2, :cond_4

    .line 65
    invoke-virtual {v6, v1, p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->registerStateChangeListener(ILcom/qualcomm/qti/internal/telephony/DynamicSarService$SarControllerClient;)V

    .line 66
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mService:Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    invoke-virtual {v1, v2, p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->registerStateChangeListener(ILcom/qualcomm/qti/internal/telephony/DynamicSarService$SarControllerClient;)V

    .line 67
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mService:Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    invoke-virtual {v1, v4, p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->registerStateChangeListener(ILcom/qualcomm/qti/internal/telephony/DynamicSarService$SarControllerClient;)V

    .line 68
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mService:Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    invoke-virtual {v1, v3, p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->registerStateChangeListener(ILcom/qualcomm/qti/internal/telephony/DynamicSarService$SarControllerClient;)V

    .line 69
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mService:Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    invoke-virtual {v1, v5, p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->registerStateChangeListener(ILcom/qualcomm/qti/internal/telephony/DynamicSarService$SarControllerClient;)V

    goto :goto_1

    .line 70
    :cond_4
    if-ne v7, v3, :cond_5

    .line 71
    invoke-virtual {v6, v1, p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->registerStateChangeListener(ILcom/qualcomm/qti/internal/telephony/DynamicSarService$SarControllerClient;)V

    .line 72
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mService:Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    invoke-virtual {v1, v2, p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->registerStateChangeListener(ILcom/qualcomm/qti/internal/telephony/DynamicSarService$SarControllerClient;)V

    .line 73
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mService:Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    invoke-virtual {v1, v5, p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->registerStateChangeListener(ILcom/qualcomm/qti/internal/telephony/DynamicSarService$SarControllerClient;)V

    .line 77
    :cond_5
    :goto_1
    const-string v1, "WifiSarController init done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void
.end method

.method private calculateSarSetPatern1()I
    .locals 4

    .line 131
    const/4 v0, 0x5

    .line 133
    .local v0, "sarSet":I
    sget v1, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mWifiState:I

    if-nez v1, :cond_0

    sget v1, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mHotspotState:I

    if-nez v1, :cond_0

    .line 135
    return v0

    .line 138
    :cond_0
    sget v1, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mAudioReceiverState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 139
    sget v1, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mModemState:I

    if-ne v1, v2, :cond_1

    .line 140
    const/4 v0, 0x1

    goto :goto_0

    .line 142
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 144
    :cond_2
    sget v1, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mHotspotState:I

    if-ne v1, v2, :cond_3

    .line 145
    sget v1, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mSarSensorState:I

    if-eqz v1, :cond_6

    .line 146
    const/4 v0, 0x4

    goto :goto_0

    .line 148
    :cond_3
    sget v1, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mModemState:I

    if-ne v1, v2, :cond_5

    .line 149
    sget v1, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mSarSensorState:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 150
    const/4 v0, 0x3

    goto :goto_0

    .line 151
    :cond_4
    if-ne v1, v2, :cond_6

    .line 152
    const/4 v0, 0x2

    goto :goto_0

    .line 154
    :cond_5
    sget v1, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mSarSensorState:I

    if-eqz v1, :cond_6

    .line 155
    const/4 v0, 0x0

    .line 158
    :cond_6
    :goto_0
    return v0
.end method

.method private calculateSarSetPatern2()I
    .locals 5

    .line 168
    const/4 v0, 0x5

    .line 170
    .local v0, "sarSet":I
    sget v1, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mWifiState:I

    if-nez v1, :cond_0

    sget v1, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mHotspotState:I

    if-nez v1, :cond_0

    .line 172
    return v0

    .line 175
    :cond_0
    sget v1, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mWifiState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    sget v1, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mHotspotState:I

    if-ne v1, v2, :cond_3

    .line 177
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v1

    .line 178
    .local v1, "staFreq":I
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 179
    .local v3, "sapBand":I
    const/16 v4, 0x1388

    if-ge v1, v4, :cond_1

    if-eq v3, v2, :cond_2

    :cond_1
    if-le v1, v4, :cond_3

    if-nez v3, :cond_3

    .line 181
    :cond_2
    return v2

    .line 185
    .end local v1    # "staFreq":I
    .end local v3    # "sapBand":I
    :cond_3
    sget v1, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mAudioReceiverState:I

    if-ne v1, v2, :cond_4

    .line 186
    const/4 v0, 0x0

    .line 189
    :cond_4
    return v0
.end method

.method public static isNeeded()Z
    .locals 1

    .line 38
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/WifiManagerCompatible;->isNeeded()Z

    move-result v0

    return v0
.end method

.method private updateWifiSarSet()V
    .locals 3

    .line 105
    const/4 v0, 0x5

    .line 107
    .local v0, "sarSet":I
    sget v1, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mPaternIndex:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->calculateSarSetPatern1()I

    move-result v0

    goto :goto_0

    .line 109
    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 110
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->calculateSarSetPatern2()I

    move-result v0

    .line 113
    :cond_1
    :goto_0
    sget v1, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mSarSet:I

    if-eq v1, v0, :cond_2

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSARLimit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiSarController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/qualcomm/qti/internal/telephony/WifiManagerCompatible;->setSARLimit(Landroid/content/Context;I)V

    .line 116
    sput v0, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mSarSet:I

    .line 118
    :cond_2
    return-void
.end method


# virtual methods
.method public onStateChanged(II)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "value"    # I

    .line 81
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

    const-string v1, "WifiSarController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    sput p2, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mAudioReceiverState:I

    .line 97
    goto :goto_0

    .line 93
    :cond_1
    sput p2, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mSarSensorState:I

    .line 94
    goto :goto_0

    .line 90
    :cond_2
    sput p2, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mModemState:I

    .line 91
    goto :goto_0

    .line 87
    :cond_3
    sput p2, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mHotspotState:I

    .line 88
    goto :goto_0

    .line 84
    :cond_4
    sput p2, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->mWifiState:I

    .line 85
    nop

    .line 101
    :goto_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/WifiSarController;->updateWifiSarSet()V

    .line 102
    return-void
.end method
