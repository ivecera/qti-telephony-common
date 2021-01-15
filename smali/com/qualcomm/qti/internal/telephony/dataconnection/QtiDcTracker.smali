.class public final Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;
.super Lcom/android/internal/telephony/dataconnection/DcTracker;
.source "QtiDcTracker.java"


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mIccidSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTransportType:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;I)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "transportType"    # I

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;-><init>(Lcom/android/internal/telephony/Phone;I)V

    .line 59
    const-string v0, "QtiDCT"

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->LOG_TAG:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIccidSet:Ljava/util/HashSet;

    .line 61
    const/4 v0, 0x1

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mTransportType:I

    .line 66
    iput p2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mTransportType:I

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    if-ne p2, v0, :cond_0

    const-string v0, "C"

    goto :goto_0

    :cond_0
    const-string v0, "I"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->LOG_TAG:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".constructor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 70
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->fillIccIdSet()V

    .line 71
    return-void
.end method

.method private fillIccIdSet()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIccidSet:Ljava/util/HashSet;

    const-string v1, "8991840"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIccidSet:Ljava/util/HashSet;

    const-string v1, "8991854"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIccidSet:Ljava/util/HashSet;

    const-string v1, "8991855"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIccidSet:Ljava/util/HashSet;

    const-string v1, "8991856"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIccidSet:Ljava/util/HashSet;

    const-string v1, "8991857"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIccidSet:Ljava/util/HashSet;

    const-string v1, "8991858"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIccidSet:Ljava/util/HashSet;

    const-string v1, "8991859"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIccidSet:Ljava/util/HashSet;

    const-string v1, "899186"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIccidSet:Ljava/util/HashSet;

    const-string v1, "8991870"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIccidSet:Ljava/util/HashSet;

    const-string v1, "8991871"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIccidSet:Ljava/util/HashSet;

    const-string v1, "8991872"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIccidSet:Ljava/util/HashSet;

    const-string v1, "8991873"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIccidSet:Ljava/util/HashSet;

    const-string v1, "8991874"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 130
    return-void
.end method

.method private isRecordsLoaded()Z
    .locals 2

    .line 74
    const/4 v0, 0x0

    .line 76
    .local v0, "recordsLoaded":Z
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 77
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getRecordsLoaded()Z

    move-result v0

    .line 80
    :cond_0
    return v0
.end method

.method private onVoiceCallChangeForOtherDcTracker(Z)V
    .locals 7
    .param p1, "isVoiceCallStarted"    # Z

    .line 137
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->getSubId()J

    move-result-wide v0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 138
    return-void

    .line 141
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 142
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 143
    goto :goto_1

    .line 145
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v4

    .line 146
    .local v4, "otherDcTracker":Lcom/android/internal/telephony/dataconnection/DcTracker;
    const-string v5, "default"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getState(Ljava/lang/String;)Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v5, v6, :cond_2

    .line 147
    goto :goto_1

    .line 149
    :cond_2
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->notifyDataConnection()V

    .line 141
    .end local v3    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v4    # "otherDcTracker":Lcom/android/internal/telephony/dataconnection/DcTracker;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    :cond_3
    return-void
.end method


# virtual methods
.method protected allowInitialAttachForOperator()Z
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 104
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 105
    .local v1, "iccId":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_2

    .line 106
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIccidSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 107
    .local v2, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 108
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 109
    const/4 v3, 0x0

    return v3

    .line 113
    .end local v2    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method protected createDataConnection()Lcom/android/internal/telephony/dataconnection/DataConnection;
    .locals 7

    .line 186
    const-string v0, "createDataConnection Ex"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 189
    .local v0, "id":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mDataServiceManager:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

    move v2, v0

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;->makeDataConnection(Lcom/android/internal/telephony/Phone;ILcom/android/internal/telephony/dataconnection/DcTracker;Lcom/android/internal/telephony/dataconnection/DataServiceManager;Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v1

    .line 191
    .local v1, "conn":Lcom/android/internal/telephony/dataconnection/DataConnection;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createDataConnection() X id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " dc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 193
    return-object v1
.end method

.method protected isPermanentFailure(I)Z
    .locals 2
    .param p1, "dcFailCause"    # I

    .line 198
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11100a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x37

    if-ne p1, v0, :cond_0

    .line 201
    const-string v0, "isPermanentFailure: MULTI_CONN_TO_SAME_PDN_NOT_ALLOWED"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 202
    const/4 v0, 0x1

    return v0

    .line 205
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isPermanentFailure(I)Z

    move-result v0

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-void
.end method

.method protected onRecordsLoadedOrSubIdChanged()V
    .locals 2

    .line 85
    const-string v0, "onRecordsLoaded: createAllApnList"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 87
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mTransportType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110026

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mAutoAttachOnCreationConfig:Z

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->createAllApnList()V

    .line 93
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->setDataProfilesAsNeeded()V

    .line 94
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->isRecordsLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->setInitialAttachApn()V

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->notifyDataConnection()V

    .line 98
    const-string v0, "simLoaded"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->setupDataOnAllConnectableApns(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method protected onVoiceCallEnded()V
    .locals 2

    .line 156
    const-string v0, "onVoiceCallEnded"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mInVoiceCall:Z

    .line 158
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->startNetStatPoll()V

    .line 161
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->startDataStallAlarm(Z)V

    .line 162
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->notifyDataConnection()V

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->resetPollStats()V

    .line 169
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->onVoiceCallChangeForOtherDcTracker(Z)V

    .line 171
    const-string v1, "persist.vendor.radio.enable_temp_dds"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 172
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 174
    const-string v0, "2GVoiceCallEnded"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->setupDataOnAllConnectableApns(Ljava/lang/String;)V

    .line 176
    :cond_2
    return-void
.end method
