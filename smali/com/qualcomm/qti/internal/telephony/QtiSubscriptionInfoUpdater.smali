.class public Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;
.super Lcom/android/internal/telephony/vendor/VendorSubscriptionInfoUpdater;
.source "QtiSubscriptionInfoUpdater.java"


# static fields
.field private static final EVENT_ADD_SUBINFO_RECORD:I = 0x64

.field private static final EVENT_SIM_REFRESH:I = 0x65

.field private static final ICCID_STRING_FOR_NO_SIM:Ljava/lang/String; = ""

.field private static final LOG_TAG:Ljava/lang/String; = "QtiSubscriptionInfoUpdater"

.field private static final SUPPORTED_MODEM_COUNT:I

.field private static sContext:Landroid/content/Context;

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    .line 55
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 56
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSupportedModemCount()I

    move-result v1

    sput v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->SUPPORTED_MODEM_COUNT:I

    .line 67
    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/vendor/VendorSubscriptionInfoUpdater;-><init>(Landroid/os/Looper;Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    .line 91
    sput-object p2, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    .line 93
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->SUPPORTED_MODEM_COUNT:I

    if-ge v0, v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    .end local v0    # "index":I
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 98
    aget-object v1, p3, v0

    const/16 v2, 0x65

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 100
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public static getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;
    .locals 2

    .line 82
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    if-nez v0, :cond_0

    .line 83
    const-string v0, "QtiSubscriptionInfoUpdater"

    const-string v1, "getInstance null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    return-object v0
.end method

.method private declared-synchronized handleAddSubInfoRecordEvent(ILjava/lang/String;)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "iccId"    # Ljava/lang/String;

    monitor-enter p0

    .line 162
    :try_start_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 166
    monitor-exit p0

    return-void

    .line 169
    .end local p0    # "this":Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;
    :cond_0
    :try_start_1
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string v2, ""

    if-ne v0, v2, :cond_2

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    aput-boolean v1, v0, p1

    .line 173
    :cond_2
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 176
    const-string v0, "QtiSubscriptionInfoUpdater"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {p0, p1, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->updateSubscriptionInfoByIccId(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    monitor-exit p0

    return-void

    .line 161
    .end local p1    # "slotId":I
    .end local p2    # "iccId":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static init(Landroid/os/Looper;Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;
    .locals 4
    .param p0, "looper"    # Landroid/os/Looper;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 71
    const-class v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    monitor-enter v0

    .line 72
    :try_start_0
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    if-nez v1, :cond_0

    .line 73
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    invoke-direct {v1, p0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;-><init>(Landroid/os/Looper;Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    goto :goto_0

    .line 75
    :cond_0
    const-string v1, "QtiSubscriptionInfoUpdater"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :goto_0
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    monitor-exit v0

    return-object v1

    .line 78
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method addSubInfoRecord(ILjava/lang/String;)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "iccId"    # Ljava/lang/String;

    .line 152
    if-eqz p2, :cond_1

    if-ltz p1, :cond_1

    sget v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->SUPPORTED_MODEM_COUNT:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    const/16 v0, 0x64

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    .line 159
    return-void

    .line 155
    :cond_1
    :goto_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " handleMessage: EVENT:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiSubscriptionInfoUpdater"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x7

    if-eq v0, v2, :cond_4

    const/16 v2, 0x64

    if-eq v0, v2, :cond_3

    const/16 v2, 0x65

    if-eq v0, v2, :cond_0

    .line 137
    invoke-super {p0, p1}, Lcom/android/internal/telephony/vendor/VendorSubscriptionInfoUpdater;->handleMessage(Landroid/os/Message;)V

    goto :goto_1

    .line 111
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 112
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_5

    .line 113
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 114
    .local v2, "phoneId":Ljava/lang/Integer;
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 115
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .line 119
    .local v1, "refreshRsp":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    iget v3, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 120
    sget-object v3, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 122
    .end local v1    # "refreshRsp":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    :cond_1
    goto :goto_0

    .line 123
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM refresh Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " phoneId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .end local v2    # "phoneId":Ljava/lang/Integer;
    :goto_0
    goto :goto_1

    .line 107
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->handleAddSubInfoRecordEvent(ILjava/lang/String;)V

    .line 108
    goto :goto_1

    .line 131
    :cond_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->handleSimUnknown(I)V

    .line 132
    invoke-super {p0, p1}, Lcom/android/internal/telephony/vendor/VendorSubscriptionInfoUpdater;->handleMessage(Landroid/os/Message;)V

    .line 133
    nop

    .line 140
    :cond_5
    :goto_1
    return-void
.end method

.method protected handleSimAbsent(I)V
    .locals 2
    .param p1, "slotId"    # I

    .line 207
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string v1, ""

    if-eq v0, v1, :cond_1

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 211
    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/telephony/vendor/VendorSubscriptionInfoUpdater;->handleSimAbsent(I)V

    .line 212
    return-void
.end method

.method protected handleSimError(I)V
    .locals 2
    .param p1, "slotId"    # I

    .line 216
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string v1, ""

    if-eq v0, v1, :cond_1

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 220
    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/telephony/vendor/VendorSubscriptionInfoUpdater;->handleSimError(I)V

    .line 221
    return-void
.end method

.method protected handleSimLoaded(I)V
    .locals 2
    .param p1, "slotId"    # I

    .line 191
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string v1, ""

    if-ne v0, v1, :cond_1

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 194
    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/telephony/vendor/VendorSubscriptionInfoUpdater;->handleSimLoaded(I)V

    .line 195
    return-void
.end method

.method protected handleSimLocked(ILjava/lang/String;)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 199
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string v1, ""

    if-ne v0, v1, :cond_1

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 202
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/vendor/VendorSubscriptionInfoUpdater;->handleSimLocked(ILjava/lang/String;)V

    .line 203
    return-void
.end method

.method protected handleSimNotReady(I)V
    .locals 4
    .param p1, "slotId"    # I

    .line 225
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 226
    .local v0, "iccCard":Lcom/android/internal/telephony/IccCard;
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v1, v1, p1

    .line 227
    .local v1, "iccid":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->isEmptyProfile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, p1

    .line 229
    invoke-super {p0, p1}, Lcom/android/internal/telephony/vendor/VendorSubscriptionInfoUpdater;->handleSimNotReady(I)V

    goto :goto_0

    .line 231
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/vendor/VendorSubscriptionInfoUpdater;->handleSimNotReady(I)V

    .line 235
    sget-object v2, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aput-object v1, v2, p1

    .line 237
    :goto_0
    return-void
.end method

.method protected handleSimReady(I)V
    .locals 2
    .param p1, "slotId"    # I

    .line 183
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string v1, ""

    if-ne v0, v1, :cond_1

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 186
    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/telephony/vendor/VendorSubscriptionInfoUpdater;->handleSimReady(I)V

    .line 187
    return-void
.end method

.method protected handleSimUnknown(I)V
    .locals 2
    .param p1, "slotId"    # I

    .line 144
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string v1, ""

    if-eq v0, v1, :cond_1

    .line 145
    :cond_0
    const-string v0, "QtiSubscriptionInfoUpdater"

    const-string v1, "sim unknown but iccid has value, set mIsRecordUpdateRequired true"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 148
    :cond_1
    return-void
.end method

.method protected declared-synchronized updateSubscriptionInfoByIccId(IZ)V
    .locals 7
    .param p1, "slotIndex"    # I
    .param p2, "updateEmbeddedSubs"    # Z

    monitor-enter p0

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    aget-boolean v0, v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 243
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/vendor/VendorSubscriptionInfoUpdater;->updateSubscriptionInfoByIccId(IZ)V

    .line 245
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->canDisablePhysicalSubscription()Z

    move-result v0

    .line 246
    .local v0, "radioHal1_5":Z
    const-string v2, "QtiSubscriptionInfoUpdater"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSubscriptionInfoByIccId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 248
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v3

    .line 249
    .local v3, "provision":I
    const-string v4, "QtiSubscriptionInfoUpdater"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSubscriptionInfoByIccId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v4

    .line 251
    .local v4, "subid":I
    if-nez v3, :cond_0

    .line 252
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v1

    invoke-virtual {v1, v4, v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setUiccEnableForHal1_4(IZ)V

    goto :goto_0

    .line 253
    .end local p0    # "this":Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;
    :cond_0
    if-ne v3, v1, :cond_1

    .line 254
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setUiccEnableForHal1_4(IZ)V

    .line 258
    .end local v3    # "provision":I
    .end local v4    # "subid":I
    :cond_1
    :goto_0
    const-string v1, "QtiSubscriptionInfoUpdater"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM state changed, Updating user preference "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isAllCardProvisionInfoReceived()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 263
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 264
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->updateUserPreferences()V

    .line 268
    :cond_2
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    aput-boolean v2, v1, p1

    .line 269
    .end local v0    # "radioHal1_5":Z
    goto :goto_1

    .line 270
    :cond_3
    const-string v0, "QtiSubscriptionInfoUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring subscription update event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    :goto_1
    monitor-exit p0

    return-void

    .line 241
    .end local p1    # "slotIndex":I
    .end local p2    # "updateEmbeddedSubs":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized updateUserPreferences()V
    .locals 2

    monitor-enter p0

    .line 275
    :try_start_0
    const-string v0, "QtiSubscriptionInfoUpdater"

    const-string v1, " calling updateUserPreferences "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->updateUserPreferences()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    .end local p0    # "this":Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;
    :cond_0
    monitor-exit p0

    return-void

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
