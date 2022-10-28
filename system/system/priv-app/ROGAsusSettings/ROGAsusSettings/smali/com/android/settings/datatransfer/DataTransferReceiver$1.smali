.class Lcom/android/settings/datatransfer/DataTransferReceiver$1;
.super Landroid/os/Handler;
.source "DataTransferReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datatransfer/DataTransferReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datatransfer/DataTransferReceiver;


# direct methods
.method constructor <init>(Lcom/android/settings/datatransfer/DataTransferReceiver;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/android/settings/datatransfer/DataTransferReceiver$1;->this$0:Lcom/android/settings/datatransfer/DataTransferReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 87
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    iget-object p0, p0, Lcom/android/settings/datatransfer/DataTransferReceiver$1;->this$0:Lcom/android/settings/datatransfer/DataTransferReceiver;

    invoke-static {p0}, Lcom/android/settings/datatransfer/DataTransferReceiver;->access$100(Lcom/android/settings/datatransfer/DataTransferReceiver;)V

    goto :goto_0

    .line 89
    :cond_1
    iget-object p0, p0, Lcom/android/settings/datatransfer/DataTransferReceiver$1;->this$0:Lcom/android/settings/datatransfer/DataTransferReceiver;

    invoke-static {p0}, Lcom/android/settings/datatransfer/DataTransferReceiver;->access$000(Lcom/android/settings/datatransfer/DataTransferReceiver;)V

    :goto_0
    return-void
.end method
