.class Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$5;
.super Lcom/android/settings/biometrics/asusfacelock/handler/WeakHandler;
.source "FacelockEnrollEnrolling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->initUiHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/biometrics/asusfacelock/handler/WeakHandler<",
        "Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$5;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-direct {p0, p2}, Lcom/android/settings/biometrics/asusfacelock/handler/WeakHandler;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic handleMsg(Landroid/app/Activity;Landroid/os/Message;)V
    .locals 0

    .line 294
    check-cast p1, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$5;->handleMsg(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;Landroid/os/Message;)V

    return-void
.end method

.method public handleMsg(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;Landroid/os/Message;)V
    .locals 2

    .line 297
    iget p1, p2, Landroid/os/Message;->what:I

    const-string v0, "FacelockEnrollEnrolling"

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 314
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "MSG_INSERT_FACE_TO_USER_PROFILE image size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$5;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {p2}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$1400(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)[B

    move-result-object p2

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$5;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$1500(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)V

    goto :goto_0

    :cond_1
    const-string p1, "MSG_REGISTER_USER_COMPLETE"

    .line 304
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$5;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {p1}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$1300(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)Lcom/android/settings/biometrics/asusfacelock/handler/WeakHandler;

    move-result-object p1

    new-instance p2, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$5$1;

    invoke-direct {p2, p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$5$1;-><init>(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$5;)V

    const-wide/16 v0, 0x320

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 299
    :cond_2
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "STATE"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 300
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSG_UPDATE_TEXTVIEW_STATE: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$5;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {p0, p1}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$1100(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;I)V

    :goto_0
    return-void
.end method
