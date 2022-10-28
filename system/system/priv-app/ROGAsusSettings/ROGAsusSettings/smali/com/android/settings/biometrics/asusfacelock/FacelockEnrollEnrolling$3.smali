.class Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$3;
.super Landroid/view/OrientationEventListener;
.source "FacelockEnrollEnrolling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;Landroid/content/Context;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$3;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2

    const/16 v0, 0x13b

    if-ge p1, v0, :cond_3

    const/16 v1, 0x2d

    if-ge p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0xe1

    if-ge p1, v0, :cond_1

    if-lt p1, v1, :cond_1

    .line 219
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$3;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {p1}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$500(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    .line 220
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$3;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {p1, v0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$502(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;I)I

    .line 221
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$3;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$602(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;I)I

    goto :goto_1

    :cond_1
    if-ge p1, v1, :cond_2

    const/16 v0, 0x87

    if-lt p1, v0, :cond_2

    .line 225
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$3;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {p1}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$500(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    .line 226
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$3;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {p1, v0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$502(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;I)I

    .line 227
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$3;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    const/16 p1, 0x5a

    invoke-static {p0, p1}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$602(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;I)I

    goto :goto_1

    .line 231
    :cond_2
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$3;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {p1}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$500(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    .line 232
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$3;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {p1, v0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$502(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;I)I

    .line 233
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$3;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    const/16 p1, 0xb4

    invoke-static {p0, p1}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$602(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;I)I

    goto :goto_1

    .line 213
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$3;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {p1}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$500(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    .line 214
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$3;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {p1, v0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$502(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;I)I

    .line 215
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$3;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    const/16 p1, 0x10e

    invoke-static {p0, p1}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$602(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;I)I

    :cond_4
    :goto_1
    return-void
.end method
