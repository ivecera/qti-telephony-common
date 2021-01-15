.class Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection$1;
.super Ljava/lang/Object;
.source "QtiDataConnection.java"

# interfaces
.implements Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$ResetEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;

    .line 53
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection$1;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResetEvent(Z)V
    .locals 4
    .param p1, "retry"    # Z

    .line 57
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection$1;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;

    const-string v1, "onResetEvent: reset mPdpRejectCount"

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;->access$000(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x0

    sput v0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;->mPdpRejectCount:I

    .line 59
    const/high16 v1, 0x10000

    sput v1, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;->mPdpRejectCause:I

    .line 60
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection$1;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;

    iget-object v1, v1, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;->mDcRetryAlarmController:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->cancel()V

    .line 62
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;->mDataRejectDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;->mDataRejectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection$1;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;

    const-string v2, "onResetEvent: Dismiss dialog"

    invoke-static {v1, v2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;->access$100(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;Ljava/lang/String;)V

    .line 64
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;->mDataRejectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 66
    :cond_0
    if-eqz p1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection$1;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;

    const-string v2, "onResetEvent: retry data call"

    invoke-static {v1, v2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;->access$200(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection$1;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;

    const v2, 0x4001b

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;->access$300(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataConnection;->sendMessage(Landroid/os/Message;)V

    .line 70
    :cond_1
    return-void
.end method
