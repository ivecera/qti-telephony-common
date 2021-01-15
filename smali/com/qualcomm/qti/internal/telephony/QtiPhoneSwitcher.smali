.class public Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;
.super Lcom/android/internal/telephony/PhoneSwitcher;
.source "QtiPhoneSwitcher.java"


# static fields
.field public static isLplusLSupported:Z


# instance fields
.field private final EVENT_ALLOW_DATA_FALSE_RESPONSE:I

.field private final EVENT_ALLOW_DATA_TRUE_RESPONSE:I

.field private final EVENT_DDS_SWITCH_RESPONSE:I

.field private final MAX_CONNECT_FAILURE_COUNT:I

.field private final NONUSER_INITIATED_SWITCH:I

.field private final PROPERTY_TEMP_DDSSWITCH:Ljava/lang/String;

.field private final USER_INITIATED_SWITCH:I

.field private mAllowDataFailure:[I

.field private final mBgCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

.field private final mBgImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

.field private mCm:Lcom/android/internal/telephony/CallManager;

.field private mDefaultDataPhoneId:I

.field private final mFgCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

.field private final mFgImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

.field private final mImsPhones:[Lcom/android/internal/telephony/imsphone/ImsPhone;

.field private mManualDdsSwitch:Z

.field private mNewActivePhones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

.field private final mRetryArray:[I

.field private final mRiCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

.field private final mRiImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

.field private mSendDdsSwitchDoneIntent:Z

.field private mSimStateIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSimStates:[Ljava/lang/String;

.field private mWaitForDetachResponse:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->isLplusLSupported:Z

    return-void
.end method

.method public constructor <init>(IILandroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;Landroid/os/Looper;Lcom/android/internal/telephony/ITelephonyRegistry;[Lcom/android/internal/telephony/CommandsInterface;[Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .param p1, "maxActivePhones"    # I
    .param p2, "numPhones"    # I
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "subscriptionController"    # Lcom/android/internal/telephony/SubscriptionController;
    .param p5, "looper"    # Landroid/os/Looper;
    .param p6, "tr"    # Lcom/android/internal/telephony/ITelephonyRegistry;
    .param p7, "cis"    # [Lcom/android/internal/telephony/CommandsInterface;
    .param p8, "phones"    # [Lcom/android/internal/telephony/Phone;

    .line 105
    invoke-direct/range {p0 .. p8}, Lcom/android/internal/telephony/PhoneSwitcher;-><init>(IILandroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;Landroid/os/Looper;Lcom/android/internal/telephony/ITelephonyRegistry;[Lcom/android/internal/telephony/CommandsInterface;[Lcom/android/internal/telephony/Phone;)V

    .line 75
    const/4 v0, 0x5

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->MAX_CONNECT_FAILURE_COUNT:I

    .line 76
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mRetryArray:[I

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mManualDdsSwitch:Z

    .line 80
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSendDdsSwitchDoneIntent:Z

    .line 81
    const/4 v1, -0x1

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mDefaultDataPhoneId:I

    .line 85
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mWaitForDetachResponse:Z

    .line 87
    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->USER_INITIATED_SWITCH:I

    .line 88
    const/4 v0, 0x1

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->NONUSER_INITIATED_SWITCH:I

    .line 89
    const-string v0, "persist.vendor.radio.enable_temp_dds"

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->PROPERTY_TEMP_DDSSWITCH:Ljava/lang/String;

    .line 98
    const/16 v0, 0xc9

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->EVENT_ALLOW_DATA_FALSE_RESPONSE:I

    .line 99
    const/16 v0, 0xca

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->EVENT_ALLOW_DATA_TRUE_RESPONSE:I

    .line 100
    const/16 v0, 0xcb

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->EVENT_DDS_SWITCH_RESPONSE:I

    .line 151
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$1;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSimStateIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 107
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mAllowDataFailure:[I

    .line 108
    new-array v0, p2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSimStates:[Ljava/lang/String;

    .line 109
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mCm:Lcom/android/internal/telephony/CallManager;

    .line 110
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mCm:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x0

    const/16 v2, 0x75

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 111
    invoke-static {p3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getInstance(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    .line 112
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    const/16 v2, 0x76

    invoke-virtual {v0, p0, v2, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->registerForUnsol(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 113
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 114
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSimStateIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 117
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNumPhones:I

    new-array v1, v1, [Lcom/android/internal/telephony/imsphone/ImsPhone;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mImsPhones:[Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 118
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNumPhones:I

    new-array v1, v1, [Lcom/android/internal/telephony/GsmCdmaCall;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mFgCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    .line 119
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNumPhones:I

    new-array v1, v1, [Lcom/android/internal/telephony/GsmCdmaCall;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mBgCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    .line 120
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNumPhones:I

    new-array v1, v1, [Lcom/android/internal/telephony/GsmCdmaCall;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mRiCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    .line 121
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNumPhones:I

    new-array v1, v1, [Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mFgImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 122
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNumPhones:I

    new-array v1, v1, [Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mBgImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 123
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNumPhones:I

    new-array v1, v1, [Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mRiImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 125
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNumPhones:I

    if-ge v1, v2, :cond_2

    .line 126
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 127
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mFgCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/GsmCdmaCall;

    aput-object v3, v2, v1

    .line 128
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mBgCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/GsmCdmaCall;

    aput-object v3, v2, v1

    .line 129
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mRiCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/GsmCdmaCall;

    aput-object v3, v2, v1

    .line 131
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mImsPhones:[Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/imsphone/ImsPhone;

    aput-object v3, v2, v1

    .line 132
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mImsPhones:[Lcom/android/internal/telephony/imsphone/ImsPhone;

    aget-object v3, v2, v1

    if-eqz v3, :cond_1

    .line 133
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mFgImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v2

    aput-object v2, v3, v1

    .line 134
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mBgImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mImsPhones:[Lcom/android/internal/telephony/imsphone/ImsPhone;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v3

    aput-object v3, v2, v1

    .line 135
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mRiImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mImsPhones:[Lcom/android/internal/telephony/imsphone/ImsPhone;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v3

    aput-object v3, v2, v1

    .line 125
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    .end local v1    # "i":I
    :cond_2
    return-void

    :array_0
    .array-data 4
        0x5
        0xa
        0x14
        0x28
        0x3c
    .end array-data
.end method

.method static synthetic access$000(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;
    .param p1, "x1"    # Ljava/lang/String;

    .line 73
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    .line 73
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSimStates:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;
    .param p1, "x1"    # I

    .line 73
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->isSimReady(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;
    .param p1, "x1"    # Ljava/lang/String;

    .line 73
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;
    .param p1, "x1"    # I

    .line 73
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->isPhoneIdValidForRetry(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;
    .param p1, "x1"    # Ljava/lang/String;

    .line 73
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;I)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;
    .param p1, "x1"    # I

    .line 73
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->resetConnectFailureCount(I)V

    return-void
.end method

.method private enforceDds(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 543
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v0

    .line 544
    .local v0, "subId":[I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enforceDds: subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 545
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    .line 546
    return-void
.end method

.method private handleConnectMaxFailure(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 533
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->resetConnectFailureCount(I)V

    .line 534
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v0

    .line 535
    .local v0, "ddsSubId":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v1

    .line 536
    .local v1, "ddsPhoneId":I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->isValidPhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eq p1, v1, :cond_0

    .line 537
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ALLOW_DATA retries exhausted on phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 538
    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->enforceDds(I)V

    .line 540
    :cond_0
    return-void
.end method

.method private handleUnsolMaxDataAllowedChange(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 176
    if-eqz p1, :cond_3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 181
    .local v0, "payload":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 182
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 183
    .local v1, "rspId":I
    const v2, 0x8041e

    if-ne v1, v2, :cond_2

    .line 184
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 185
    .local v2, "response_size":I
    if-gez v2, :cond_1

    .line 186
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Response size is Invalid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 187
    return-void

    .line 189
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    iput v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mMaxActivePhones:I

    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Unsol Max Data Changed to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mMaxActivePhones:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 192
    .end local v2    # "response_size":I
    :cond_2
    return-void

    .line 177
    .end local v0    # "payload":Ljava/nio/ByteBuffer;
    .end local v1    # "rspId":I
    :cond_3
    :goto_0
    const-string v0, "Null data received in handleUnsolMaxDataAllowedChange"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method private incConnectFailureCount(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 524
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mAllowDataFailure:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 525
    return-void
.end method

.method private informDdsToRil(I)V
    .locals 4
    .param p1, "ddsSubId"    # I

    .line 637
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 639
    .local v0, "ddsPhoneId":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->isServiceReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 640
    const-string v1, "Oem hook service is not ready yet"

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 641
    return-void

    .line 644
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNumPhones:I

    if-ge v1, v2, :cond_2

    .line 645
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InformDdsToRil rild= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", DDS="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 646
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->isCallInProgress()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 647
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->qcRilSendDDSInfo(III)V

    goto :goto_1

    .line 650
    :cond_1
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->qcRilSendDDSInfo(III)V

    .line 644
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 654
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private isAnyVoiceCallActiveOnDevice()Z
    .locals 3

    .line 549
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mCm:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 550
    .local v0, "ret":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAnyVoiceCallActiveOnDevice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 551
    return v0
.end method

.method private isCallInProgress()Z
    .locals 1

    .line 660
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPhoneIdInVoiceCall:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    return v0
.end method

.method private isPhoneIdValidForRetry(I)Z
    .locals 7
    .param p1, "phoneId"    # I

    .line 612
    const/4 v0, 0x0

    .line 613
    .local v0, "isValid":Z
    const/4 v1, -0x1

    .line 614
    .local v1, "phoneIdForRequest":I
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    .line 615
    invoke-virtual {v3}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v3

    .line 614
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v2

    .line 616
    .local v2, "ddsPhoneId":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    if-ne v2, p1, :cond_0

    .line 617
    const/4 v0, 0x1

    goto :goto_1

    .line 619
    :cond_0
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 620
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mMaxActivePhones:I

    if-ge v3, v4, :cond_2

    .line 621
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/dataconnection/DcRequest;

    .line 622
    .local v4, "dcRequest":Lcom/android/internal/telephony/dataconnection/DcRequest;
    if-eqz v4, :cond_1

    .line 623
    iget-object v5, v4, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    iget v6, v4, Lcom/android/internal/telephony/dataconnection/DcRequest;->apnType:I

    invoke-virtual {p0, v5, v6}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->phoneIdForRequest(Landroid/net/NetworkRequest;I)I

    move-result v1

    .line 625
    if-ne v1, p1, :cond_1

    .line 626
    const/4 v0, 0x1

    .line 627
    goto :goto_1

    .line 620
    .end local v4    # "dcRequest":Lcom/android/internal/telephony/dataconnection/DcRequest;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 633
    .end local v3    # "i":I
    :cond_2
    :goto_1
    return v0
.end method

.method private isSimReady(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .line 271
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 272
    return v0

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSimStates:[Ljava/lang/String;

    aget-object v1, v1, p1

    const-string v2, "READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSimStates:[Ljava/lang/String;

    aget-object v1, v1, p1

    .line 276
    const-string v2, "LOADED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSimStates:[Ljava/lang/String;

    aget-object v1, v1, p1

    .line 277
    const-string v2, "IMSI"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 281
    :cond_1
    return v0

    .line 278
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM READY for phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 279
    const/4 v0, 0x1

    return v0
.end method

.method private isUiccProvisioned(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .line 430
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v0

    .line 431
    .local v0, "uiccProvisioner":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v1

    if-lez v1, :cond_0

    .line 432
    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 433
    .local v1, "status":Z
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUiccProvisioned = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 435
    return v1
.end method

.method public static make(IILandroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;Landroid/os/Looper;Lcom/android/internal/telephony/ITelephonyRegistry;[Lcom/android/internal/telephony/CommandsInterface;[Lcom/android/internal/telephony/Phone;)Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;
    .locals 10
    .param p0, "maxActivePhones"    # I
    .param p1, "numPhones"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "subscriptionController"    # Lcom/android/internal/telephony/SubscriptionController;
    .param p4, "looper"    # Landroid/os/Looper;
    .param p5, "tr"    # Lcom/android/internal/telephony/ITelephonyRegistry;
    .param p6, "cis"    # [Lcom/android/internal/telephony/CommandsInterface;
    .param p7, "phones"    # [Lcom/android/internal/telephony/Phone;

    .line 143
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->sPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    move-object v1, v0

    move v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;-><init>(IILandroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;Landroid/os/Looper;Lcom/android/internal/telephony/ITelephonyRegistry;[Lcom/android/internal/telephony/CommandsInterface;[Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->sPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    .line 148
    :cond_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->sPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    check-cast v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    return-object v0
.end method

.method private onDdsSwitchResponse(ILandroid/os/AsyncResult;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .line 555
    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    .line 556
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->incConnectFailureCount(I)V

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dds switch failed on phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", failureCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->getConnectFailureCount(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 557
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 560
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->isAnyVoiceCallActiveOnDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    const-string v0, "Wait for call end indication"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 564
    return-void

    .line 567
    :cond_0
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->isSimReady(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 570
    const-string v0, "Wait for SIM to get READY"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 571
    return-void

    .line 574
    :cond_1
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->getConnectFailureCount(I)I

    move-result v0

    .line 575
    .local v0, "ddsSwitchFailureCount":I
    const/4 v1, 0x5

    if-le v0, v1, :cond_2

    .line 576
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->handleConnectMaxFailure(I)V

    goto :goto_0

    .line 578
    :cond_2
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mRetryArray:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    mul-int/lit16 v1, v1, 0x3e8

    .line 579
    .local v1, "retryDelay":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduling DDS switch retry after: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 580
    new-instance v2, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;

    invoke-direct {v2, p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;I)V

    int-to-long v3, v1

    invoke-virtual {p0, v2, v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 592
    .end local v0    # "ddsSwitchFailureCount":I
    .end local v1    # "retryDelay":I
    :goto_0
    goto :goto_1

    .line 593
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DDS switch success on phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 594
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSendDdsSwitchDoneIntent:Z

    if-eqz v0, :cond_4

    .line 595
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSendDdsSwitchDoneIntent:Z

    .line 596
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.intent.action.ACTION_DDS_SWITCH_DONE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 598
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    .line 599
    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v1

    .line 598
    const-string v2, "subscription"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 600
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 601
    const-string v1, "Broadcast dds switch done intent"

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 602
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 604
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->resetConnectFailureCount(I)V

    .line 606
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mActivePhoneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 607
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->notifyPreferredDataSubIdChanged()V

    .line 609
    :goto_1
    return-void
.end method

.method private queryMaxDataAllowed()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getMaxDataAllowed()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mMaxActivePhones:I

    .line 173
    return-void
.end method

.method private resetConnectFailureCount(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 520
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mAllowDataFailure:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 521
    return-void
.end method


# virtual methods
.method protected activate(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .line 460
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    aget-object v0, v0, p1

    .line 461
    .local v0, "state":Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;
    iget-boolean v1, v0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mManualDdsSwitch:Z

    if-nez v1, :cond_0

    .line 462
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->getConnectFailureCount(I)I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 463
    :cond_0
    iput-boolean v2, v0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activate "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 465
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->lastRequested:J

    .line 466
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mHalCommandToUse:I

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mHalCommandToUse:I

    if-nez v1, :cond_2

    .line 468
    :cond_1
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNumPhones:I

    if-le v1, v2, :cond_2

    .line 469
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPrimaryDataSubId:I

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->informDdsToRil(I)V

    .line 470
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p1

    const/16 v3, 0xca

    const/4 v4, 0x0

    .line 471
    invoke-virtual {p0, v3, p1, v4}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 470
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    .line 474
    :cond_2
    return-void
.end method

.method protected deactivate(I)V
    .locals 6
    .param p1, "phoneId"    # I

    .line 440
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    aget-object v0, v0, p1

    .line 441
    .local v0, "state":Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;
    iget-boolean v1, v0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    if-nez v1, :cond_0

    .line 442
    return-void

    .line 444
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mContext:Landroid/content/Context;

    .line 445
    const-string v2, "telephony_subscription_service"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    .line 446
    .local v1, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    .line 447
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deactivate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 448
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->lastRequested:J

    .line 449
    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mHalCommandToUse:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mHalCommandToUse:I

    if-nez v3, :cond_2

    .line 450
    :cond_1
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPhoneSubscriptions:[I

    aget v5, v5, p1

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 451
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, p1

    const/16 v5, 0xc9

    .line 452
    invoke-virtual {p0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 451
    invoke-interface {v3, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    .line 453
    iput-boolean v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mWaitForDetachResponse:Z

    .line 456
    :cond_2
    return-void
.end method

.method public getConnectFailureCount(I)I
    .locals 1
    .param p1, "phoneId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 529
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mAllowDataFailure:[I

    aget v0, v0, p1

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 196
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v0

    .line 197
    .local v0, "ddsSubId":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v1

    .line 199
    .local v1, "ddsPhoneId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handle event - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 200
    const/4 v2, 0x0

    .line 201
    .local v2, "ar":Landroid/os/AsyncResult;
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x66

    const/4 v5, 0x0

    if-eq v3, v4, :cond_8

    const/16 v4, 0x6c

    if-eq v3, v4, :cond_6

    const/16 v4, 0x75

    if-eq v3, v4, :cond_3

    const/16 v4, 0x76

    if-eq v3, v4, :cond_1

    packed-switch v3, :pswitch_data_0

    .line 266
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_5

    .line 261
    :pswitch_0
    const-string v3, "EVENT_DDS_SWITCH_RESPONSE"

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 262
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-direct {p0, v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->onDdsSwitchResponse(ILandroid/os/AsyncResult;)V

    .line 263
    goto/16 :goto_5

    .line 245
    :pswitch_1
    const-string v3, "EVENT_ALLOW_DATA_TRUE_RESPONSE"

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 246
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-direct {p0, v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->onDdsSwitchResponse(ILandroid/os/AsyncResult;)V

    .line 247
    goto/16 :goto_5

    .line 250
    :pswitch_2
    const-string v3, "EVENT_ALLOW_DATA_FALSE_RESPONSE"

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 251
    iput-boolean v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mWaitForDetachResponse:Z

    .line 252
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNewActivePhones:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 253
    .local v4, "phoneId":I
    invoke-virtual {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->activate(I)V

    .line 254
    .end local v4    # "phoneId":I
    goto :goto_0

    .line 255
    :cond_0
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNewActivePhones:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 256
    iput-boolean v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mManualDdsSwitch:Z

    goto/16 :goto_5

    .line 222
    :cond_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 224
    .local v3, "asyncresult":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v4, v3, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 225
    iget-object v4, v3, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->handleUnsolMaxDataAllowedChange(Landroid/os/Message;)V

    goto :goto_5

    .line 227
    :cond_2
    const-string v4, "Error: empty result, EVENT_UNSOL_MAX_DATA_ALLOWED_CHANGED"

    invoke-virtual {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 229
    goto :goto_5

    .line 232
    .end local v3    # "asyncresult":Lorg/codeaurora/telephony/utils/AsyncResult;
    :cond_3
    const-string v3, "EVENT_VOICE_CALL_ENDED"

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 233
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->isAnyVoiceCallActiveOnDevice()Z

    move-result v3

    if-nez v3, :cond_b

    .line 234
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNumPhones:I

    if-ge v3, v4, :cond_5

    .line 235
    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->getConnectFailureCount(I)I

    move-result v4

    if-lez v4, :cond_4

    .line 236
    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->isPhoneIdValidForRetry(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 237
    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->onRadioCapChanged(I)V

    .line 238
    goto :goto_2

    .line 234
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v3    # "i":I
    :cond_5
    :goto_2
    goto :goto_5

    .line 212
    :cond_6
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->isServiceReady()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 213
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->queryMaxDataAllowed()V

    .line 214
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getLpluslSupportStatus()Z

    move-result v3

    sput-boolean v3, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->isLplusLSupported:Z

    goto :goto_3

    .line 216
    :cond_7
    const-string v3, "Oem hook service is not ready"

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 218
    :goto_3
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->handleMessage(Landroid/os/Message;)V

    .line 219
    goto :goto_5

    .line 203
    :cond_8
    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mHalCommandToUse:I

    if-nez v3, :cond_a

    .line 204
    const-string v3, "EVENT_SUBSCRIPTION_CHANGED: update HAL command"

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 205
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RadioConfig;->isSetPreferredDataCommandSupported()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 206
    const/4 v3, 0x2

    goto :goto_4

    :cond_9
    const/4 v3, 0x1

    :goto_4
    iput v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mHalCommandToUse:I

    .line 208
    :cond_a
    const-string v3, "subChanged"

    invoke-virtual {p0, v5, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->onEvaluate(ZLjava/lang/String;)Z

    .line 209
    nop

    .line 268
    :cond_b
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected isCallActive(Lcom/android/internal/telephony/Phone;)Z
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 502
    const/4 v0, 0x0

    const-string v1, "persist.vendor.radio.enable_temp_dds"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 503
    return v0

    .line 505
    :cond_0
    if-nez p1, :cond_1

    .line 506
    return v0

    .line 509
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    .line 510
    .local v1, "phoneId":I
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mFgCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mBgCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    aget-object v2, v2, v1

    .line 511
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mRiCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    aget-object v2, v2, v1

    .line 512
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mFgImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    aget-object v2, v2, v1

    .line 513
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mBgImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    aget-object v2, v2, v1

    .line 514
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mRiImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    aget-object v2, v2, v1

    .line 515
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 510
    :cond_3
    return v0
.end method

.method protected onEvaluate(ZLjava/lang/String;)Z
    .locals 16
    .param p1, "requestsChanged"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 287
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, p2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 288
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v3, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mContext:Landroid/content/Context;

    .line 289
    const-string v4, "telephony_subscription_service"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionManager;

    .line 291
    .local v3, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    const/4 v4, 0x0

    .line 292
    .local v4, "mPreferredDataPhoneIdUpdated":Z
    move/from16 v5, p1

    .line 295
    .local v5, "diffDetected":Z
    iget-object v6, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v6}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v6

    .line 296
    .local v6, "primaryDataSubId":I
    iget-object v7, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v7, v6}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v7

    .line 297
    .local v7, "ddsPhoneId":I
    iget v8, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPrimaryDataSubId:I

    const-string v9, "->"

    if-eq v6, v8, :cond_0

    .line 298
    const-string v8, " mPrimaryDataSubId "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPrimaryDataSubId:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 300
    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mManualDdsSwitch:Z

    .line 301
    iput-boolean v8, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSendDdsSwitchDoneIntent:Z

    .line 302
    iput v6, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPrimaryDataSubId:I

    .line 306
    :cond_0
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget v10, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNumPhones:I

    if-ge v8, v10, :cond_2

    .line 307
    iget-object v10, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v10, v8}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v10

    .line 308
    .local v10, "sub":I
    iget-object v11, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPhoneSubscriptions:[I

    aget v11, v11, v8

    if-eq v10, v11, :cond_1

    .line 309
    const-string v11, " phone["

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "] "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPhoneSubscriptions:[I

    aget v11, v11, v8

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 311
    iget-object v11, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPhoneSubscriptions:[I

    aput v10, v11, v8

    .line 312
    const/4 v5, 0x1

    .line 306
    .end local v10    # "sub":I
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 317
    .end local v8    # "i":I
    :cond_2
    iget v8, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPreferredDataPhoneId:I

    .line 318
    .local v8, "oldPreferredDataPhoneId":I
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->updatePreferredDataPhoneId()V

    .line 319
    iget v10, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPreferredDataPhoneId:I

    if-eq v8, v10, :cond_3

    .line 320
    const-string v10, " preferred phoneId "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPreferredDataPhoneId:I

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 322
    const/4 v4, 0x1

    .line 323
    const/4 v5, 0x1

    .line 326
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->isEmergency()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_4

    .line 327
    const-string v9, "onEvalaute aborted due to Emergency"

    invoke-virtual {v0, v9}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 329
    return v10

    .line 332
    :cond_4
    if-eqz v5, :cond_f

    .line 333
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "evaluating due to "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 334
    iget v9, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mHalCommandToUse:I

    const/4 v11, 0x2

    if-ne v9, v11, :cond_6

    .line 337
    const/4 v9, 0x0

    .local v9, "phoneId":I
    :goto_1
    iget v10, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNumPhones:I

    if-ge v9, v10, :cond_5

    .line 338
    invoke-virtual {v0, v9}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->activate(I)V

    .line 337
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 340
    .end local v9    # "phoneId":I
    :cond_5
    if-eqz v4, :cond_f

    .line 341
    iget v9, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPreferredDataPhoneId:I

    invoke-virtual {v0, v9}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->sendRilCommands(I)V

    goto/16 :goto_7

    .line 344
    :cond_6
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 346
    .local v9, "newActivePhones":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v11, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/dataconnection/DcRequest;

    .line 347
    .local v12, "dcRequest":Lcom/android/internal/telephony/dataconnection/DcRequest;
    iget-object v13, v12, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    iget v14, v12, Lcom/android/internal/telephony/dataconnection/DcRequest;->apnType:I

    invoke-virtual {v0, v13, v14}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->phoneIdForRequest(Landroid/net/NetworkRequest;I)I

    move-result v13

    .line 349
    .local v13, "phoneIdForRequest":I
    const/4 v14, -0x1

    if-ne v13, v14, :cond_7

    goto :goto_2

    .line 350
    :cond_7
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    goto :goto_2

    .line 351
    :cond_8
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    iget v15, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mMaxActivePhones:I

    if-lt v14, v15, :cond_9

    goto :goto_3

    .line 353
    .end local v12    # "dcRequest":Lcom/android/internal/telephony/dataconnection/DcRequest;
    .end local v13    # "phoneIdForRequest":I
    :cond_9
    goto :goto_2

    .line 365
    :cond_a
    :goto_3
    iput-object v9, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNewActivePhones:Ljava/util/List;

    .line 366
    const/4 v11, 0x0

    .local v11, "phoneId":I
    :goto_4
    iget v12, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNumPhones:I

    if-ge v11, v12, :cond_c

    .line 367
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    .line 368
    invoke-virtual {v0, v11}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->deactivate(I)V

    .line 366
    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 371
    .end local v11    # "phoneId":I
    :cond_c
    iget-boolean v11, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mWaitForDetachResponse:Z

    if-nez v11, :cond_f

    .line 373
    iget-object v11, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNewActivePhones:Ljava/util/List;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    .line 374
    .local v11, "activateDdsPhone":Z
    if-eqz v11, :cond_d

    iget-boolean v12, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mManualDdsSwitch:Z

    if-eqz v12, :cond_d

    .line 375
    invoke-virtual {v0, v7}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->activate(I)V

    goto :goto_6

    .line 377
    :cond_d
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 378
    .local v13, "phoneId":I
    invoke-virtual {v0, v13}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->activate(I)V

    .line 379
    .end local v13    # "phoneId":I
    goto :goto_5

    .line 381
    :cond_e
    :goto_6
    if-eqz v11, :cond_f

    .line 382
    iput-boolean v10, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mManualDdsSwitch:Z

    .line 388
    .end local v9    # "newActivePhones":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v11    # "activateDdsPhone":Z
    :cond_f
    :goto_7
    return v5
.end method

.method protected phoneIdForRequest(Landroid/net/NetworkRequest;I)I
    .locals 5
    .param p1, "netRequest"    # Landroid/net/NetworkRequest;
    .param p2, "apnType"    # I

    .line 394
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->getSubIdFromNetworkRequest(Landroid/net/NetworkRequest;)I

    move-result v0

    .line 396
    .local v0, "subId":I
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPreferredDataPhoneId:I

    return v1

    .line 397
    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return v1

    .line 399
    :cond_1
    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPreferredDataPhoneId:I

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 400
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPhoneSubscriptions:[I

    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPreferredDataPhoneId:I

    aget v2, v2, v3

    goto :goto_0

    :cond_2
    move v2, v1

    .line 405
    .local v2, "preferredDataSubId":I
    :goto_0
    iget-object v3, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eq v0, v2, :cond_3

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mValidator:Lcom/android/internal/telephony/CellularNetworkValidator;

    .line 407
    invoke-virtual {v3}, Lcom/android/internal/telephony/CellularNetworkValidator;->getSubIdInValidation()I

    move-result v3

    if-eq v0, v3, :cond_3

    .line 409
    return v1

    .line 413
    :cond_3
    const/16 v1, 0x40

    if-ne v1, p2, :cond_4

    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mManualDdsSwitch:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mMaxActivePhones:I

    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNumPhones:I

    if-eq v1, v3, :cond_4

    .line 415
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPrimaryDataSubId:I

    .line 419
    :cond_4
    const/4 v1, -0x1

    .line 420
    .local v1, "phoneId":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNumPhones:I

    if-ge v3, v4, :cond_6

    .line 421
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPhoneSubscriptions:[I

    aget v4, v4, v3

    if-ne v4, v0, :cond_5

    .line 422
    move v1, v3

    .line 423
    goto :goto_2

    .line 420
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 426
    .end local v3    # "i":I
    :cond_6
    :goto_2
    return v1
.end method

.method protected sendRilCommands(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 478
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNumPhones:I

    if-lt p1, v0, :cond_0

    goto :goto_2

    .line 483
    :cond_0
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mHalCommandToUse:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mHalCommandToUse:I

    if-nez v0, :cond_1

    goto :goto_0

    .line 489
    :cond_1
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPreferredDataPhoneId:I

    if-ne p1, v0, :cond_3

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendRilCommands: setPreferredDataModem - phoneId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    const/16 v2, 0xcb

    .line 493
    invoke-virtual {p0, v2, p1, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 492
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/RadioConfig;->setPreferredDataModem(ILandroid/os/Message;)V

    goto :goto_1

    .line 485
    :cond_2
    :goto_0
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNumPhones:I

    if-le v0, v2, :cond_3

    .line 486
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p1

    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->isPhoneActive(I)Z

    move-result v2

    const/16 v3, 0xca

    .line 487
    invoke-virtual {p0, v3, p1, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 486
    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    .line 495
    :cond_3
    :goto_1
    return-void

    .line 479
    :cond_4
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendRilCommands: skip dds switch due to invalid phoneid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 480
    return-void
.end method
