.class Lcom/qualcomm/qti/internal/telephony/ModemSarController$CmdProcThread$CmdHandler;
.super Landroid/os/Handler;
.source "ModemSarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/ModemSarController$CmdProcThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CmdHandler"
.end annotation


# static fields
.field private static final DYNAMIC_SAR_REQ_NUM:I = 0x800c9

.field private static final INT_SIZE:I = 0x4

.field private static final OEM_IDENTIFIER:Ljava/lang/String; = "QOEMHOOK"


# instance fields
.field private mResBuf:[B


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 307
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 313
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ModemSarController$CmdProcThread$CmdHandler;->mResBuf:[B

    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/qti/internal/telephony/ModemSarController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qualcomm/qti/internal/telephony/ModemSarController$1;

    .line 307
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController$CmdProcThread$CmdHandler;-><init>()V

    return-void
.end method

.method private DSI_Handle()V
    .locals 5

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SarSensorState is = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$500()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$300(Ljava/lang/String;)V

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReceiverState is = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$600()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$300(Ljava/lang/String;)V

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HotspotState is = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$700()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$300(Ljava/lang/String;)V

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WIFIState is = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$800()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$300(Ljava/lang/String;)V

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CHARGEState is = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$900()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$300(Ljava/lang/String;)V

    .line 347
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$900()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$1100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "grus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$1202(I)I

    goto :goto_0

    .line 350
    :cond_0
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$1400()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$500()I

    move-result v1

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$600()I

    move-result v2

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$700()I

    move-result v3

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$800()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$1300(IIII)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$1202(I)I

    .line 351
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DSI_Current is = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$1200()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$300(Ljava/lang/String;)V

    .line 352
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$1200()I

    move-result v0

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$1500()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmdMsgSend: = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$1200()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$300(Ljava/lang/String;)V

    .line 354
    const v0, 0x800c9

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$1200()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/internal/telephony/ModemSarController$CmdProcThread$CmdHandler;->cmdMsgSend(II)V

    .line 356
    :cond_1
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$1200()I

    move-result v0

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$1502(I)I

    .line 357
    return-void
.end method

.method private cmdMsgSend(II)V
    .locals 9
    .param p1, "reqNum"    # I
    .param p2, "para1"    # I

    .line 316
    :goto_0
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$000()Z

    move-result v0

    const-string v1, "ModemSarController"

    if-nez v0, :cond_0

    .line 317
    const-string v0, "Error: QcrilHook is not ready!"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 320
    :cond_0
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 321
    .local v0, "requestData":[B
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$400()Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 322
    .local v2, "reqBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 323
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 324
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$400()Lcom/qualcomm/qcrilhook/QcRilHook;

    move-result-object v4

    invoke-virtual {v4, p1, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I[B)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v4

    .line 326
    .local v4, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v5, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_2

    .line 327
    iget-object v5, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_1

    .line 328
    iget-object v5, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    .line 329
    .local v5, "response":[B
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 330
    .local v6, "byteBuf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 331
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/ModemSarController$CmdProcThread$CmdHandler;->mResBuf:[B

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v7, v3

    .line 332
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Response is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mResBuf[0] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/ModemSarController$CmdProcThread$CmdHandler;->mResBuf:[B

    aget-byte v3, v8, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .end local v5    # "response":[B
    .end local v6    # "byteBuf":Ljava/nio/ByteBuffer;
    goto :goto_1

    .line 335
    :cond_1
    const-string v3, "mQcRilHook.sendQcRilHookMsg: Null Response"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 338
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :goto_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlerMessage, msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$300(Ljava/lang/String;)V

    .line 361
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 382
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$902(I)I

    .line 383
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController$CmdProcThread$CmdHandler;->DSI_Handle()V

    goto :goto_0

    .line 378
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$802(I)I

    .line 379
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController$CmdProcThread$CmdHandler;->DSI_Handle()V

    .line 380
    goto :goto_0

    .line 373
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$702(I)I

    .line 374
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController$CmdProcThread$CmdHandler;->DSI_Handle()V

    .line 375
    goto :goto_0

    .line 368
    :cond_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$602(I)I

    .line 369
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController$CmdProcThread$CmdHandler;->DSI_Handle()V

    .line 370
    goto :goto_0

    .line 363
    :cond_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController;->access$502(I)I

    .line 364
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/ModemSarController$CmdProcThread$CmdHandler;->DSI_Handle()V

    .line 365
    nop

    .line 386
    :goto_0
    return-void
.end method
