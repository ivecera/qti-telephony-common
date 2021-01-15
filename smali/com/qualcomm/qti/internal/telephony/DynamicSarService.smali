.class public Lcom/qualcomm/qti/internal/telephony/DynamicSarService;
.super Ljava/lang/Object;
.source "DynamicSarService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/DynamicSarService$SarControllerClient;
    }
.end annotation


# static fields
.field public static final AUDIO_RECEIVER_STATE_OFF:I = 0x0

.field public static final AUDIO_RECEIVER_STATE_ON:I = 0x1

.field public static final CHARGE_CONNECTED_STATE:I = 0x1

.field public static final CHARGE_DISCONNECTED_STATE:I = 0x0

.field public static final HALL_STATE_CLOSE:I = 0x0

.field public static final HALL_STATE_OPEN:I = 0x2

.field public static final HOTSPOT_STATE_OFF:I = 0x0

.field public static final HOTSPOT_STATE_ON:I = 0x1

.field public static final MODEM_STATE_ACTIVE:I = 0x1

.field public static final MODEM_STATE_INACTIVE:I = 0x0

.field private static final PROPERTY_RECEIVER_STATUS:Ljava/lang/String; = "vendor.audio.voice.receiver.status"

.field public static final SAR_DISTANCE_LONG:I = 0x0

.field public static final SAR_DISTANCE_MID:I = 0x1

.field public static final SAR_DISTANCE_SHORT:I = 0x2

.field private static final SENSOR_TYPE_HALLSENSOR:I = 0x0

.field private static final SENSOR_TYPE_SARSENSOR:I = 0x1fa2654

.field public static final TYPE_AUDIO_RECEIVER_STATE:I = 0x5

.field public static final TYPE_CHARGE_CONNECTED_STATE:I = 0x6

.field public static final TYPE_CHARGE_DISCONNECTED_STATE:I = 0x7

.field public static final TYPE_HALL_SENSOR_STATE:I = 0x4

.field public static final TYPE_HOTSPOT_STATE:I = 0x1

.field public static final TYPE_MODEM_STATE:I = 0x2

.field public static final TYPE_SAR_SENSOR_STATE:I = 0x3

.field public static final TYPE_WIFI_STATE:I = 0x0

.field public static final WIFI_STATE_CONNECTED:I = 0x1

.field public static final WIFI_STATE_DISCONNECTED:I

.field private static mInstance:Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

.field private static mfilter:Landroid/content/IntentFilter;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAudioReceiverListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qualcomm/qti/internal/telephony/DynamicSarService$SarControllerClient;",
            ">;"
        }
    .end annotation
.end field

.field private mCallStateActive:Z

.field private mChargeCONNECTEDListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qualcomm/qti/internal/telephony/DynamicSarService$SarControllerClient;",
            ">;"
        }
    .end annotation
.end field

.field private mChargeDISCONNECTEDListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qualcomm/qti/internal/telephony/DynamicSarService$SarControllerClient;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentAudioReceiverState:I

.field private mCurrentHallSendorState:I

.field private mCurrentHotspotState:I

.field private mCurrentModemState:I

.field private mCurrentSarSensorState:I

.field private mCurrentWifiState:I

.field private mDataStateActive:Z

.field private mHallSensorListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qualcomm/qti/internal/telephony/DynamicSarService$SarControllerClient;",
            ">;"
        }
    .end annotation
.end field

.field private mHotspotListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qualcomm/qti/internal/telephony/DynamicSarService$SarControllerClient;",
            ">;"
        }
    .end annotation
.end field

.field private mModemListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qualcomm/qti/internal/telephony/DynamicSarService$SarControllerClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSarSensorListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qualcomm/qti/internal/telephony/DynamicSarService$SarControllerClient;",
            ">;"
        }
    .end annotation
.end field

.field private mSensor:Landroid/hardware/Sensor;

.field private final mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWifiListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qualcomm/qti/internal/telephony/DynamicSarService$SarControllerClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mfilter:Landroid/content/IntentFilter;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "DynamicSarService"

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->TAG:Ljava/lang/String;

    .line 79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mWifiListeners:Ljava/util/ArrayList;

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mHotspotListeners:Ljava/util/ArrayList;

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mModemListeners:Ljava/util/ArrayList;

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mSarSensorListeners:Ljava/util/ArrayList;

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mHallSensorListeners:Ljava/util/ArrayList;

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mAudioReceiverListeners:Ljava/util/ArrayList;

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mChargeCONNECTEDListeners:Ljava/util/ArrayList;

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mChargeDISCONNECTEDListeners:Ljava/util/ArrayList;

    .line 106
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/DynamicSarService$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarService$1;-><init>(Lcom/qualcomm/qti/internal/telephony/DynamicSarService;)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 143
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/DynamicSarService$2;

    invoke-direct {v1, p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarService$2;-><init>(Lcom/qualcomm/qti/internal/telephony/DynamicSarService;)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 206
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/DynamicSarService$4;

    invoke-direct {v1, p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarService$4;-><init>(Lcom/qualcomm/qti/internal/telephony/DynamicSarService;)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 93
    const-string v1, "DynamicSarService init..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mContext:Landroid/content/Context;

    .line 96
    const-string v1, "DynamicSarService init done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method

.method private GetInitialChargeStatus()V
    .locals 7

    .line 247
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 248
    .local v0, "ifilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 249
    .local v1, "batteryStatus":Landroid/content/Intent;
    const-string v2, "status"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 250
    .local v2, "status":I
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v2, v5, :cond_1

    const/4 v5, 0x5

    if-ne v2, v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v4

    .line 252
    .local v5, "isCharging":Z
    :goto_1
    if-ne v5, v4, :cond_2

    .line 253
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mChargeCONNECTEDListeners:Ljava/util/ArrayList;

    const/4 v6, 0x6

    invoke-virtual {p0, v3, v6, v4}, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->callChangeListeners(Ljava/util/ArrayList;II)V

    goto :goto_2

    .line 255
    :cond_2
    if-nez v5, :cond_3

    .line 256
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mChargeDISCONNECTEDListeners:Ljava/util/ArrayList;

    const/4 v6, 0x7

    invoke-virtual {p0, v4, v6, v3}, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->callChangeListeners(Ljava/util/ArrayList;II)V

    .line 258
    :cond_3
    :goto_2
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/qti/internal/telephony/DynamicSarService;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    .line 28
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mCurrentWifiState:I

    return v0
.end method

.method static synthetic access$002(Lcom/qualcomm/qti/internal/telephony/DynamicSarService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/DynamicSarService;
    .param p1, "x1"    # I

    .line 28
    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mCurrentWifiState:I

    return p1
.end method

.method static synthetic access$100(Lcom/qualcomm/qti/internal/telephony/DynamicSarService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    .line 28
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mWifiListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/qualcomm/qti/internal/telephony/DynamicSarService;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    .line 28
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mCurrentHotspotState:I

    return v0
.end method

.method static synthetic access$202(Lcom/qualcomm/qti/internal/telephony/DynamicSarService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/DynamicSarService;
    .param p1, "x1"    # I

    .line 28
    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mCurrentHotspotState:I

    return p1
.end method

.method static synthetic access$300(Lcom/qualcomm/qti/internal/telephony/DynamicSarService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    .line 28
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mHotspotListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/qualcomm/qti/internal/telephony/DynamicSarService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    .line 28
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mChargeCONNECTEDListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/qualcomm/qti/internal/telephony/DynamicSarService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    .line 28
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mChargeDISCONNECTEDListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/qualcomm/qti/internal/telephony/DynamicSarService;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    .line 28
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mCurrentSarSensorState:I

    return v0
.end method

.method static synthetic access$602(Lcom/qualcomm/qti/internal/telephony/DynamicSarService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/DynamicSarService;
    .param p1, "x1"    # I

    .line 28
    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mCurrentSarSensorState:I

    return p1
.end method

.method static synthetic access$700(Lcom/qualcomm/qti/internal/telephony/DynamicSarService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    .line 28
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mSarSensorListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/qualcomm/qti/internal/telephony/DynamicSarService;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    .line 28
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->pollReceiver()V

    return-void
.end method

.method static synthetic access$900(Lcom/qualcomm/qti/internal/telephony/DynamicSarService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/DynamicSarService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->refreshSensorListener(II)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/DynamicSarService;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 100
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mInstance:Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mInstance:Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    .line 103
    :cond_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mInstance:Lcom/qualcomm/qti/internal/telephony/DynamicSarService;

    return-object v0
.end method

.method private final pollReceiver()V
    .locals 4

    .line 181
    const/4 v0, 0x0

    .line 183
    .local v0, "state":I
    :goto_0
    const-string v1, "vendor.audio.voice.receiver.status"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "AudioReceiverState":Ljava/lang/String;
    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    const/4 v0, 0x1

    goto :goto_1

    .line 188
    :cond_0
    const-string v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 189
    const/4 v0, 0x0

    .line 192
    :cond_1
    :goto_1
    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mCurrentAudioReceiverState:I

    if-eq v0, v2, :cond_2

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioReceiverState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DynamicSarService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mAudioReceiverListeners:Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-virtual {p0, v2, v3, v0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->callChangeListeners(Ljava/util/ArrayList;II)V

    .line 195
    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mCurrentAudioReceiverState:I

    .line 198
    :cond_2
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0
.end method

.method private refreshSensorListener(II)V
    .locals 4
    .param p1, "messageType"    # I
    .param p2, "state"    # I

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modem state change, messageType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DynamicSarService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/16 v3, 0x80

    if-ne p1, v3, :cond_3

    .line 225
    if-eq p2, v2, :cond_2

    if-eq p2, v1, :cond_2

    const/4 v3, 0x3

    if-ne p2, v3, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    if-eqz p2, :cond_1

    const/4 v3, 0x4

    if-ne p2, v3, :cond_6

    .line 229
    :cond_1
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mDataStateActive:Z

    goto :goto_2

    .line 227
    :cond_2
    :goto_0
    iput-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mDataStateActive:Z

    goto :goto_2

    .line 231
    :cond_3
    const/16 v3, 0x20

    if-ne p1, v3, :cond_6

    .line 232
    if-eq p2, v2, :cond_5

    if-ne p2, v1, :cond_4

    goto :goto_1

    .line 234
    :cond_4
    if-nez p2, :cond_6

    .line 235
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mCallStateActive:Z

    goto :goto_2

    .line 233
    :cond_5
    :goto_1
    iput-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mCallStateActive:Z

    .line 239
    :cond_6
    :goto_2
    iget-boolean v3, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mDataStateActive:Z

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mCallStateActive:Z

    if-eqz v3, :cond_8

    :cond_7
    move v0, v2

    .line 240
    .local v0, "modemState":I
    :cond_8
    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mCurrentModemState:I

    if-eq v0, v2, :cond_9

    .line 241
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mModemListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, v1, v0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->callChangeListeners(Ljava/util/ArrayList;II)V

    .line 242
    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mCurrentModemState:I

    .line 244
    :cond_9
    return-void
.end method

.method private startPhoneListener()V
    .locals 3

    .line 203
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0xa0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 204
    return-void
.end method

.method private final startPollAudioReceiverStatus()V
    .locals 1

    .line 170
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService$3;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarService$3;-><init>(Lcom/qualcomm/qti/internal/telephony/DynamicSarService;)V

    .line 176
    .local v0, "ReceiverPollThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 177
    return-void
.end method


# virtual methods
.method callChangeListeners(Ljava/util/ArrayList;II)V
    .locals 2
    .param p2, "type"    # I
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/qualcomm/qti/internal/telephony/DynamicSarService$SarControllerClient;",
            ">;II)V"
        }
    .end annotation

    .line 304
    .local p1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/qti/internal/telephony/DynamicSarService$SarControllerClient;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 305
    return-void

    .line 308
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 309
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/qti/internal/telephony/DynamicSarService$SarControllerClient;

    invoke-interface {v1, p2, p3}, Lcom/qualcomm/qti/internal/telephony/DynamicSarService$SarControllerClient;->onStateChanged(II)V

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 311
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method registerStateChangeListener(ILcom/qualcomm/qti/internal/telephony/DynamicSarService$SarControllerClient;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "listener"    # Lcom/qualcomm/qti/internal/telephony/DynamicSarService$SarControllerClient;

    .line 261
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 294
    :pswitch_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mfilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mChargeDISCONNECTEDListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->GetInitialChargeStatus()V

    .line 297
    goto/16 :goto_0

    .line 289
    :pswitch_1
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mfilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mChargeCONNECTEDListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->GetInitialChargeStatus()V

    .line 292
    goto :goto_0

    .line 285
    :pswitch_2
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->startPollAudioReceiverStatus()V

    .line 286
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mAudioReceiverListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    goto :goto_0

    .line 282
    :pswitch_3
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mHallSensorListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    goto :goto_0

    .line 276
    :pswitch_4
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 277
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x1fa2654

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mSensor:Landroid/hardware/Sensor;

    .line 278
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 279
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mSarSensorListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    goto :goto_0

    .line 271
    :pswitch_5
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 272
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->startPhoneListener()V

    .line 273
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mModemListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    goto :goto_0

    .line 267
    :pswitch_6
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mfilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mHotspotListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    goto :goto_0

    .line 263
    :pswitch_7
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mfilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mWifiListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    nop

    .line 300
    :goto_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/qualcomm/qti/internal/telephony/DynamicSarService;->mfilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 301
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
